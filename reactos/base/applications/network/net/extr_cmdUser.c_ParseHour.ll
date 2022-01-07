; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUser.c_ParseHour.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUser.c_ParseHour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64**, i32*)* @ParseHour to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseHour(i64* %0, i64** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64*, i64** %5, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @iswdigit(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %4, align 4
  br label %103

17:                                               ; preds = %3
  %18 = load i64*, i64** %5, align 8
  store i64* %18, i64** %8, align 8
  br label %19

19:                                               ; preds = %24, %17
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @iswdigit(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %25, 10
  %27 = sext i32 %26 to i64
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %27, %29
  %31 = sub nsw i64 %30, 48
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %8, align 8
  br label %19

35:                                               ; preds = %19
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 24
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %4, align 4
  br label %103

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 24
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UNICODE_NULL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %99

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 1
  br i1 %51, label %52, label %99

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 12
  br i1 %54, label %55, label %99

55:                                               ; preds = %52
  %56 = load i64*, i64** %8, align 8
  %57 = load i64**, i64*** %6, align 8
  %58 = getelementptr inbounds i64*, i64** %57, i64 0
  %59 = load i64*, i64** %58, align 8
  %60 = call i64 @_wcsicmp(i64* %56, i64* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load i64*, i64** %8, align 8
  %64 = load i64**, i64*** %6, align 8
  %65 = getelementptr inbounds i64*, i64** %64, i64 1
  %66 = load i64*, i64** %65, align 8
  %67 = call i64 @_wcsicmp(i64* %63, i64* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62, %55
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 12
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %69
  br label %98

74:                                               ; preds = %62
  %75 = load i64*, i64** %8, align 8
  %76 = load i64**, i64*** %6, align 8
  %77 = getelementptr inbounds i64*, i64** %76, i64 2
  %78 = load i64*, i64** %77, align 8
  %79 = call i64 @_wcsicmp(i64* %75, i64* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load i64*, i64** %8, align 8
  %83 = load i64**, i64*** %6, align 8
  %84 = getelementptr inbounds i64*, i64** %83, i64 3
  %85 = load i64*, i64** %84, align 8
  %86 = call i64 @_wcsicmp(i64* %82, i64* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81, %74
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 12
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 12
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %97

95:                                               ; preds = %81
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %4, align 4
  br label %103

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97, %73
  br label %99

99:                                               ; preds = %98, %52, %49, %44
  %100 = load i32, i32* %9, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %95, %38, %15
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @iswdigit(i64) #1

declare dso_local i64 @_wcsicmp(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
