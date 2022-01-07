; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_r_r.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_r_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32 }

@CR16_TBIT_I_R = common dso_local global i32 0, align 4
@CR16_TBIT_R_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cr16_cmd*)* @cr16_decode_r_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_decode_r_r(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  store i32 2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @r_read_le16(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 9
  %17 = load i32, i32* @CR16_TBIT_I_R, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 9
  %22 = load i32, i32* @CR16_TBIT_R_R, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @cr16_print_4biti_opcode(%struct.cr16_cmd* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %52

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %33 = call i32 @cr16_anal_4bit_opcode(i32 %31, %struct.cr16_cmd* %32)
  br label %41

34:                                               ; preds = %19, %14
  %35 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @cr16_print_4bit_opcode(%struct.cr16_cmd* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %52

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %30
  %42 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @cr16_get_srcreg(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cr16_get_dstreg(i32 %45)
  %47 = call i64 @cr16_print_reg_reg(%struct.cr16_cmd* %42, i32 %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %49, %39, %29, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i64 @cr16_print_4biti_opcode(%struct.cr16_cmd*, i32) #1

declare dso_local i32 @cr16_anal_4bit_opcode(i32, %struct.cr16_cmd*) #1

declare dso_local i64 @cr16_print_4bit_opcode(%struct.cr16_cmd*, i32) #1

declare dso_local i64 @cr16_print_reg_reg(%struct.cr16_cmd*, i32, i32) #1

declare dso_local i32 @cr16_get_srcreg(i32) #1

declare dso_local i32 @cr16_get_dstreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
