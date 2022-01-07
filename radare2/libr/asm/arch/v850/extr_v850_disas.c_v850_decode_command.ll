; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/v850/extr_v850_disas.c_v850_decode_command.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/v850/extr_v850_disas.c_v850_decode_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v850_cmd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v850_decode_command(i32* %0, i32 %1, %struct.v850_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v850_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v850_cmd* %2, %struct.v850_cmd** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %65

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @r_read_le16(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @get_opcode(i32 %16)
  switch i32 %17, label %51 [
    i32 152, label %18
    i32 145, label %18
    i32 159, label %18
    i32 155, label %18
    i32 137, label %18
    i32 139, label %18
    i32 141, label %18
    i32 148, label %18
    i32 144, label %18
    i32 129, label %18
    i32 164, label %18
    i32 130, label %18
    i32 131, label %18
    i32 132, label %18
    i32 167, label %18
    i32 161, label %18
    i32 149, label %22
    i32 140, label %22
    i32 165, label %22
    i32 160, label %22
    i32 135, label %22
    i32 142, label %22
    i32 136, label %22
    i32 146, label %22
    i32 166, label %26
    i32 151, label %26
    i32 150, label %26
    i32 138, label %26
    i32 143, label %26
    i32 128, label %26
    i32 163, label %26
    i32 147, label %26
    i32 157, label %31
    i32 156, label %31
    i32 134, label %36
    i32 154, label %36
    i32 153, label %36
    i32 133, label %36
    i32 162, label %41
    i32 158, label %46
  ]

18:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %21 = call i32 @decode_reg_reg(i32 %19, %struct.v850_cmd* %20)
  store i32 %21, i32* %8, align 4
  br label %63

22:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %25 = call i32 @decode_imm_reg(i32 %23, %struct.v850_cmd* %24)
  store i32 %25, i32* %8, align 4
  br label %63

26:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %30 = call i32 @decode_3operands(i32* %27, i32 %28, %struct.v850_cmd* %29)
  store i32 %30, i32* %8, align 4
  br label %63

31:                                               ; preds = %13, %13
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %35 = call i32 @decode_jarl(i32* %32, i32 %33, %struct.v850_cmd* %34)
  store i32 %35, i32* %8, align 4
  br label %63

36:                                               ; preds = %13, %13, %13, %13
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %40 = call i32 @decode_load_store(i32* %37, i32 %38, %struct.v850_cmd* %39)
  store i32 %40, i32* %8, align 4
  br label %63

41:                                               ; preds = %13
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %45 = call i32 @decode_bit_op(i32* %42, i32 %43, %struct.v850_cmd* %44)
  store i32 %45, i32* %8, align 4
  br label %63

46:                                               ; preds = %13
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %50 = call i32 @decode_extended(i32* %47, i32 %48, %struct.v850_cmd* %49)
  store i32 %50, i32* %8, align 4
  br label %63

51:                                               ; preds = %13
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @get_opcode(i32 %52)
  %54 = ashr i32 %53, 2
  %55 = icmp eq i32 %54, 11
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.v850_cmd*, %struct.v850_cmd** %7, align 8
  %60 = call i32 @decode_bcond(i32 %57, i32 %58, %struct.v850_cmd* %59)
  store i32 %60, i32* %8, align 4
  br label %62

61:                                               ; preds = %51
  store i32 -1, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %56
  br label %63

63:                                               ; preds = %62, %46, %41, %36, %31, %26, %22, %18
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %12
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @get_opcode(i32) #1

declare dso_local i32 @decode_reg_reg(i32, %struct.v850_cmd*) #1

declare dso_local i32 @decode_imm_reg(i32, %struct.v850_cmd*) #1

declare dso_local i32 @decode_3operands(i32*, i32, %struct.v850_cmd*) #1

declare dso_local i32 @decode_jarl(i32*, i32, %struct.v850_cmd*) #1

declare dso_local i32 @decode_load_store(i32*, i32, %struct.v850_cmd*) #1

declare dso_local i32 @decode_bit_op(i32*, i32, %struct.v850_cmd*) #1

declare dso_local i32 @decode_extended(i32*, i32, %struct.v850_cmd*) #1

declare dso_local i32 @decode_bcond(i32, i32, %struct.v850_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
