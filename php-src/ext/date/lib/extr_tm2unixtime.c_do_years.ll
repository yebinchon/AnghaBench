; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_tm2unixtime.c_do_years.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_tm2unixtime.c_do_years.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECS_PER_ERA = common dso_local global i32 0, align 4
@DAYS_PER_LYEAR = common dso_local global i32 0, align 4
@SECS_PER_DAY = common dso_local global i32 0, align 4
@DAYS_PER_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_years to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_years(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 %6, 1970
  %8 = sdiv i32 %7, 40000
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 40000
  %15 = sub nsw i32 %12, %14
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @SECS_PER_ERA, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %16, %17
  %19 = mul nsw i32 %18, 100
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %11, %1
  %23 = load i32, i32* %2, align 4
  %24 = icmp sge i32 %23, 1970
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %48, %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp sge i32 %29, 1970
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @timelib_is_leap(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @DAYS_PER_LYEAR, align 4
  %37 = load i32, i32* @SECS_PER_DAY, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %31
  %42 = load i32, i32* @DAYS_PER_YEAR, align 4
  %43 = load i32, i32* @SECS_PER_DAY, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %3, align 4
  br label %28

51:                                               ; preds = %28
  br label %78

52:                                               ; preds = %22
  store i32 1969, i32* %3, align 4
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @timelib_is_leap(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* @DAYS_PER_LYEAR, align 4
  %63 = load i32, i32* @SECS_PER_DAY, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %57
  %68 = load i32, i32* @DAYS_PER_YEAR, align 4
  %69 = load i32, i32* @SECS_PER_DAY, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %3, align 4
  br label %53

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77, %51
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @timelib_is_leap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
