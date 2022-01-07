; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_dow.c_timelib_date_from_isodate.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_dow.c_timelib_date_from_isodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ml_table_leap = common dso_local global i32* null, align 8
@ml_table_common = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timelib_date_from_isodate(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @timelib_daynr_from_weeknr(i32 %16, i32 %17, i32 %18)
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @timelib_is_leap(i32 %24)
  store i32 %25, i32* %15, align 4
  br label %26

26:                                               ; preds = %29, %6
  %27 = load i32, i32* %13, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @timelib_is_leap(i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 366, i32 365
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %13, align 4
  br label %26

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %49, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 366, i32 365
  %48 = icmp sgt i32 %43, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 366, i32 365
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @timelib_is_leap(i32 %60)
  store i32 %61, i32* %15, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32*, i32** @ml_table_leap, align 8
  br label %69

67:                                               ; preds = %62
  %68 = load i32*, i32** @ml_table_common, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32* [ %66, %65 ], [ %68, %67 ]
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %11, align 8
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %81, %69
  %73 = load i32, i32* %13, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %73, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %72
  %82 = load i32*, i32** %14, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %13, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %72

93:                                               ; preds = %72
  %94 = load i32, i32* %13, align 4
  %95 = load i32*, i32** %12, align 8
  store i32 %94, i32* %95, align 4
  ret void
}

declare dso_local i32 @timelib_daynr_from_weeknr(i32, i32, i32) #1

declare dso_local i32 @timelib_is_leap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
