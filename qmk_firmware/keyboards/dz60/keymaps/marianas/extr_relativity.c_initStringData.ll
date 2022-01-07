; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_initStringData.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_initStringData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@macroTaps = common dso_local global i64* null, align 8
@macroTapsLen = common dso_local global i32 0, align 4
@tableNameList = common dso_local global i64* null, align 8
@tableNameListLen = common dso_local global i32 0, align 4
@charCount = common dso_local global i64* null, align 8
@charCountLen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initStringData() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64*, i64** @macroTaps, align 8
  %5 = icmp eq i64* %4, null
  br i1 %5, label %6, label %26

6:                                                ; preds = %0
  %7 = load i32, i32* @macroTapsLen, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i8* @malloc(i32 %10)
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** @macroTaps, align 8
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %22, %6
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @macroTapsLen, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i64*, i64** @macroTaps, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %13

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %0
  %27 = load i64*, i64** @tableNameList, align 8
  %28 = icmp eq i64* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i32, i32* @tableNameListLen, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = call i8* @malloc(i32 %33)
  %35 = bitcast i8* %34 to i64*
  store i64* %35, i64** @tableNameList, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %45, %29
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @tableNameListLen, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i64*, i64** @tableNameList, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %36

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i64*, i64** @charCount, align 8
  %51 = icmp eq i64* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32, i32* @charCountLen, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i8* @malloc(i32 %56)
  %58 = bitcast i8* %57 to i64*
  store i64* %58, i64** @charCount, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %68, %52
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @charCountLen, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i64*, i64** @charCount, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %59

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %49
  ret void
}

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
