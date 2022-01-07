; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archavravr_disasm.c_lookupInstruction.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archavravr_disasm.c_lookupInstruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64*, i64 }

@AVR_TOTAL_INSTRUCTIONS = common dso_local global i32 0, align 4
@AVR_MAX_NUM_OPERANDS = common dso_local global i32 0, align 4
@instructionSet = common dso_local global %struct.TYPE_2__* null, align 8
@OPERAND_REGISTER_GHOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @lookupInstruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookupInstruction(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %103, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AVR_TOTAL_INSTRUCTIONS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %106

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  store i64 %17, i64* %5, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %85, %16
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @AVR_MAX_NUM_OPERANDS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %88

22:                                               ; preds = %18
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OPERAND_REGISTER_GHOST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %22
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @extractDataFromMask(i64 %36, i64 %44)
  store i64 %45, i64* %6, align 8
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %67, %35
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @AVR_MAX_NUM_OPERANDS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @extractDataFromMask(i64 %51, i64 %61)
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %46

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70, %22
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = xor i64 %81, -1
  %83 = load i64, i64* %5, align 8
  %84 = and i64 %83, %82
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %18

88:                                               ; preds = %18
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %103

92:                                               ; preds = %88
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instructionSet, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %93, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %106

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %91
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %12

106:                                              ; preds = %101, %12
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i64 @extractDataFromMask(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
