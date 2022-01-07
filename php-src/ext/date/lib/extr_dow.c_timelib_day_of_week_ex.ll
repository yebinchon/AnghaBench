; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_dow.c_timelib_day_of_week_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_dow.c_timelib_day_of_week_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m_table_leap = common dso_local global i32* null, align 8
@m_table_common = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @timelib_day_of_week_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timelib_day_of_week_ex(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 100
  %15 = call i32 @century_value(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @positive_mod(i32 %16, i32 100)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @timelib_is_leap(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32*, i32** @m_table_leap, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  br label %33

27:                                               ; preds = %4
  %28 = load i32*, i32** @m_table_common, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i32 [ %26, %21 ], [ %32, %27 ]
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %10, align 4
  %41 = sdiv i32 %40, 4
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @positive_mod(i32 %44, i32 7)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 7, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %12, align 4
  ret i32 %54
}

declare dso_local i32 @century_value(i32) #1

declare dso_local i32 @positive_mod(i32, i32) #1

declare dso_local i64 @timelib_is_leap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
