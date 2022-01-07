; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_CalculateCopyStreamSleeptime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_CalculateCopyStreamSleeptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@still_sending = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64)* @CalculateCopyStreamSleeptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CalculateCopyStreamSleeptime(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* @still_sending, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = mul nsw i32 %19, 1000
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %16, %13, %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @feTimestampDifference(i64 %27, i64 %28, i64* %9, i32* %10)
  %30 = load i64, i64* %9, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i64 1, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i64, i64* %9, align 8
  %35 = mul nsw i64 %34, 1000
  %36 = load i32, i32* %10, align 4
  %37 = sdiv i32 %36, 1000
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  store i64 %39, i64* %8, align 8
  br label %41

40:                                               ; preds = %23
  store i64 -1, i64* %8, align 8
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i64, i64* %8, align 8
  ret i64 %42
}

declare dso_local i32 @feTimestampDifference(i64, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
