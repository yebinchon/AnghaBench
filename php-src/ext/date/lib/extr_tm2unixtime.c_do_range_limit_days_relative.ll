; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_tm2unixtime.c_do_range_limit_days_relative.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_tm2unixtime.c_do_range_limit_days_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@days_in_month_leap = common dso_local global i64* null, align 8
@days_in_month = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i64*, i64*, i64)* @do_range_limit_days_relative to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_range_limit_days_relative(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = call i32 @do_range_limit(i32 1, i32 13, i32 12, i64* %17, i64* %18)
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %15, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %47, %26
  %28 = load i64*, i64** %11, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = call i32 @dec_month(i64* %15, i64* %14)
  %33 = load i64, i64* %15, align 8
  %34 = call i64 @timelib_is_leap(i64 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i64*, i64** @days_in_month_leap, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  br label %47

42:                                               ; preds = %31
  %43 = load i64*, i64** @days_in_month, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i64 [ %41, %37 ], [ %46, %42 ]
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %49
  store i64 %52, i64* %50, align 8
  %53 = load i64*, i64** %10, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  br label %27

56:                                               ; preds = %27
  br label %88

57:                                               ; preds = %6
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i64*, i64** %11, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load i64, i64* %15, align 8
  %64 = call i64 @timelib_is_leap(i64 %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i64*, i64** @days_in_month_leap, align 8
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  br label %77

72:                                               ; preds = %62
  %73 = load i64*, i64** @days_in_month, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i64 [ %71, %67 ], [ %76, %72 ]
  store i64 %78, i64* %16, align 8
  %79 = load i64, i64* %16, align 8
  %80 = load i64*, i64** %11, align 8
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %79
  store i64 %82, i64* %80, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = call i32 @inc_month(i64* %15, i64* %14)
  br label %58

87:                                               ; preds = %58
  br label %88

88:                                               ; preds = %87, %56
  ret void
}

declare dso_local i32 @do_range_limit(i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @dec_month(i64*, i64*) #1

declare dso_local i64 @timelib_is_leap(i64) #1

declare dso_local i32 @inc_month(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
