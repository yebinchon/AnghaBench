; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_misc.c_ReplaceSubStr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_misc.c_ReplaceSubStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SAMPLES_STR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @ReplaceSubStr(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load i32, i32* @MAX_SAMPLES_STR_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i64 @HeapAlloc(i32 %13, i32 0, i32 %17)
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %8, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i64* null, i64** %4, align 8
  br label %101

23:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = call i32 @wcscpy(i64* %24, i8* bitcast ([1 x i32]* @.str to i8*))
  br label %26

26:                                               ; preds = %96, %23
  %27 = load i64, i64* %12, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = call i64 @wcslen(i64* %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %99

31:                                               ; preds = %26
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  %41 = load i64, i64* %12, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %80, %40
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = call i64 @wcslen(i64* %45)
  %47 = add i64 %44, %46
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %42
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %63

62:                                               ; preds = %49
  br label %83

63:                                               ; preds = %59
  %64 = load i64*, i64** %7, align 8
  %65 = call i64 @wcslen(i64* %64)
  %66 = load i64, i64* %10, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i64*, i64** %8, align 8
  %70 = load i64*, i64** %6, align 8
  %71 = call i32 @wcscat(i64* %69, i64* %70)
  %72 = load i64*, i64** %8, align 8
  %73 = call i64 @wcslen(i64* %72)
  store i64 %73, i64* %11, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = call i64 @wcslen(i64* %74)
  %76 = sub i64 %75, 1
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %12, align 8
  br label %83

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  br label %42

83:                                               ; preds = %68, %62, %42
  br label %96

84:                                               ; preds = %31
  %85 = load i64*, i64** %5, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %11, align 8
  %92 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 %88, i64* %92, align 8
  %93 = load i64*, i64** %8, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %84, %83
  %97 = load i64, i64* %12, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %12, align 8
  br label %26

99:                                               ; preds = %26
  %100 = load i64*, i64** %8, align 8
  store i64* %100, i64** %4, align 8
  br label %101

101:                                              ; preds = %99, %22
  %102 = load i64*, i64** %4, align 8
  ret i64* %102
}

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @wcscpy(i64*, i8*) #1

declare dso_local i64 @wcslen(i64*) #1

declare dso_local i32 @wcscat(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
