; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndComputeSleeptime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndComputeSleeptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wal_sender_timeout = common dso_local global i32 0, align 4
@last_reply_timestamp = common dso_local global i64 0, align 8
@waiting_for_ping_response = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @WalSndComputeSleeptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WalSndComputeSleeptime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 10000, i64* %3, align 8
  %7 = load i32, i32* @wal_sender_timeout, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load i64, i64* @last_reply_timestamp, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load i64, i64* @last_reply_timestamp, align 8
  %14 = load i32, i32* @wal_sender_timeout, align 4
  %15 = call i32 @TimestampTzPlusMilliseconds(i64 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @waiting_for_ping_response, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load i64, i64* @last_reply_timestamp, align 8
  %20 = load i32, i32* @wal_sender_timeout, align 4
  %21 = sdiv i32 %20, 2
  %22 = call i32 @TimestampTzPlusMilliseconds(i64 %19, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %12
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @TimestampDifference(i32 %24, i32 %25, i64* %5, i32* %6)
  %27 = load i64, i64* %5, align 8
  %28 = mul nsw i64 %27, 1000
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %29, 1000
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %23, %9, %1
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i32 @TimestampTzPlusMilliseconds(i64, i32) #1

declare dso_local i32 @TimestampDifference(i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
