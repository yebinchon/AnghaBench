; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_convert_time.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_convert_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@NAN = common dso_local global i32 0, align 4
@MS_PER_DAY = common dso_local global i32 0, align 4
@MS_PER_HOUR = common dso_local global i32 0, align 4
@MS_PER_MINUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @convert_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_time(i32 %0, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @NAN, align 4
  store i32 %11, i32* %3, align 4
  br label %94

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @time_from_year(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @in_leap_year(i32 %25)
  %27 = call i64 @day_from_month(i32 %24, i32 %26)
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @MS_PER_DAY, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @week_day(i32 %39)
  %41 = sub nsw i32 %38, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 7
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MS_PER_DAY, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = mul nsw i32 %55, 7
  %57 = load i32, i32* @MS_PER_DAY, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @month_from_time(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %47
  %68 = load i32, i32* @MS_PER_DAY, align 4
  %69 = mul nsw i32 7, %68
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %47
  br label %80

73:                                               ; preds = %19
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MS_PER_DAY, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %73, %72
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MS_PER_HOUR, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MS_PER_MINUTE, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %80, %10
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @time_from_year(i32) #1

declare dso_local i64 @day_from_month(i32, i32) #1

declare dso_local i32 @in_leap_year(i32) #1

declare dso_local i32 @week_day(i32) #1

declare dso_local i32 @month_from_time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
