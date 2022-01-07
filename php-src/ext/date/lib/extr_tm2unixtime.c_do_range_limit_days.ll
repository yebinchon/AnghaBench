; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_tm2unixtime.c_do_range_limit_days.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_tm2unixtime.c_do_range_limit_days.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DAYS_PER_LYEAR_PERIOD = common dso_local global i64 0, align 8
@YEARS_PER_LYEAR_PERIOD = common dso_local global i64 0, align 8
@days_in_month_leap = common dso_local global i64* null, align 8
@days_in_month = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*)* @do_range_limit_days to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_range_limit_days(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DAYS_PER_LYEAR_PERIOD, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DAYS_PER_LYEAR_PERIOD, align 8
  %21 = sub i64 0, %20
  %22 = icmp ule i64 %19, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %17, %3
  %24 = load i64, i64* @YEARS_PER_LYEAR_PERIOD, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DAYS_PER_LYEAR_PERIOD, align 8
  %28 = udiv i64 %26, %27
  %29 = mul i64 %24, %28
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, %29
  store i64 %32, i64* %30, align 8
  %33 = load i64, i64* @DAYS_PER_LYEAR_PERIOD, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DAYS_PER_LYEAR_PERIOD, align 8
  %37 = udiv i64 %35, %36
  %38 = mul i64 %33, %37
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, %38
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %23, %17
  %43 = load i64*, i64** %6, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = call i32 @do_range_limit(i32 1, i32 13, i32 12, i64* %43, i64* %44)
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @timelib_is_leap(i64 %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load i64*, i64** @days_in_month_leap, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  br label %63

57:                                               ; preds = %42
  %58 = load i64*, i64** @days_in_month, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  br label %63

63:                                               ; preds = %57, %51
  %64 = phi i64 [ %56, %51 ], [ %62, %57 ]
  store i64 %64, i64* %9, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %66, 1
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ult i64 %68, 1
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 12
  store i64 %72, i64* %10, align 8
  %73 = load i64*, i64** %5, align 8
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, 1
  store i64 %75, i64* %11, align 8
  br label %79

76:                                               ; preds = %63
  %77 = load i64*, i64** %5, align 8
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %11, align 8
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @timelib_is_leap(i64 %80)
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i64*, i64** @days_in_month_leap, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  br label %94

89:                                               ; preds = %79
  %90 = load i64*, i64** @days_in_month, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i64 [ %88, %84 ], [ %93, %89 ]
  store i64 %95, i64* %12, align 8
  %96 = load i64*, i64** %7, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ule i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i64, i64* %12, align 8
  %101 = load i64*, i64** %7, align 8
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %100
  store i64 %103, i64* %101, align 8
  %104 = load i64*, i64** %6, align 8
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, -1
  store i64 %106, i64* %104, align 8
  store i32 1, i32* %4, align 4
  br label %121

107:                                              ; preds = %94
  %108 = load i64*, i64** %7, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i64, i64* %9, align 8
  %114 = load i64*, i64** %7, align 8
  %115 = load i64, i64* %114, align 8
  %116 = sub i64 %115, %113
  store i64 %116, i64* %114, align 8
  %117 = load i64*, i64** %6, align 8
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %117, align 8
  store i32 1, i32* %4, align 4
  br label %121

120:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %112, %99
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @do_range_limit(i32, i32, i32, i64*, i64*) #1

declare dso_local i64 @timelib_is_leap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
