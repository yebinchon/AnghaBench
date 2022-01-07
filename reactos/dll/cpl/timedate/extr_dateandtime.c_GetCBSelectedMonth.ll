; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_dateandtime.c_GetCBSelectedMonth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/timedate/extr_dateandtime.c_GetCBSelectedMonth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CB_GETCURSEL = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@CB_GETITEMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @GetCBSelectedMonth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetCBSelectedMonth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 -1, i64* %4, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @CB_GETCURSEL, align 4
  %7 = call i64 @SendMessageW(i32 %5, i32 %6, i32 0, i32 0)
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CB_ERR, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @CB_GETITEMDATA, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @SendMessageW(i32 %13, i32 %14, i32 %15, i32 0)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 13
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %23, %20, %12
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
