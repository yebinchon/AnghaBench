; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_bal.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cr16/extr_cr16_disas.c_cr16_decode_bal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cr16_cmd = type { i32, i32 }

@CR16_INSTR_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"bal\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s,0x%x\00", align 1
@cr16_regs_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"(%s,%s),0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cr16_cmd*)* @cr16_decode_bal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr16_decode_bal(i32* %0, %struct.cr16_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cr16_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.cr16_cmd* %1, %struct.cr16_cmd** %5, align 8
  store i32 4, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @r_read_le16(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @r_read_at_le16(i32* %12, i32 2)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %18 = sub nsw i64 %17, 1
  %19 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %16, i64 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 9
  switch i32 %21, label %60 [
    i32 129, label %22
    i32 128, label %35
  ]

22:                                               ; preds = %2
  %23 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %27 = sub nsw i64 %26, 1
  %28 = load i8**, i8*** @cr16_regs_names, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @cr16_get_dstreg(i32 %29)
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %25, i64 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %33)
  br label %61

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 1
  %39 = and i32 %38, 15
  %40 = shl i32 %39, 16
  %41 = or i32 %36, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.cr16_cmd*, %struct.cr16_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.cr16_cmd, %struct.cr16_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @CR16_INSTR_MAXLEN, align 8
  %46 = sub nsw i64 %45, 1
  %47 = load i8**, i8*** @cr16_regs_names, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @cr16_get_dstreg(i32 %48)
  %50 = add i64 %49, 1
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** @cr16_regs_names, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @cr16_get_dstreg(i32 %54)
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %44, i64 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %57, i32 %58)
  br label %61

60:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %63

61:                                               ; preds = %35, %22
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i32 @r_read_at_le16(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i64 @cr16_get_dstreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
