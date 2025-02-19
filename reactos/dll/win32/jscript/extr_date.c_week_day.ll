; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_week_day.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_week_day.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @week_day to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @week_day(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @isnan(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @NAN, align 8
  store i64 %9, i64* %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @day(i64 %11)
  %13 = add nsw i64 %12, 4
  %14 = call i64 @fmod(i64 %13, i32 7)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %18, 7
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %17, %10
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %20, %8
  %23 = load i64, i64* %2, align 8
  ret i64 %23
}

declare dso_local i64 @isnan(i64) #1

declare dso_local i64 @fmod(i64, i32) #1

declare dso_local i64 @day(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
