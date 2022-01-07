; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_dow.c_timelib_isoweek_from_date.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_dow.c_timelib_isoweek_from_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timelib_isoweek_from_date(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @timelib_is_leap(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @timelib_is_leap(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @timelib_day_of_year(i32 %23, i32 %24, i32 %25)
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %5
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %33, %30, %5
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @timelib_day_of_week(i32 %37, i32 1, i32 1)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @timelib_day_of_week(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 7, i32* %15, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 7, i32* %14, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 8, %52
  %54 = icmp sle i32 %51, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load i32, i32* %14, align 4
  %57 = icmp sgt i32 %56, 4
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 5
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, 6
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67, %58
  %71 = load i32*, i32** %9, align 8
  store i32 53, i32* %71, align 4
  br label %74

72:                                               ; preds = %67, %64
  %73 = load i32*, i32** %9, align 8
  store i32 52, i32* %73, align 4
  br label %74

74:                                               ; preds = %72, %70
  br label %78

75:                                               ; preds = %55, %50
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 366, i32 365
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %89, %90
  %92 = sub nsw i32 %88, %91
  %93 = load i32, i32* %15, align 4
  %94 = sub nsw i32 4, %93
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i32*, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %9, align 8
  store i32 1, i32* %100, align 4
  br label %125

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 7, %109
  %111 = add nsw i32 %108, %110
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 %112, 1
  %114 = add nsw i32 %111, %113
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = sdiv i32 %115, 7
  %117 = load i32*, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp sgt i32 %118, 4
  br i1 %119, label %120, label %124

120:                                              ; preds = %107
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %120, %107
  br label %125

125:                                              ; preds = %96, %124, %102
  ret void
}

declare dso_local i32 @timelib_is_leap(i32) #1

declare dso_local i32 @timelib_day_of_year(i32, i32, i32) #1

declare dso_local i32 @timelib_day_of_week(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
