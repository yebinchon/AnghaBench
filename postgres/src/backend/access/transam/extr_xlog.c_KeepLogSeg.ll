; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_KeepLogSeg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_KeepLogSeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wal_segment_size = common dso_local global i32 0, align 4
@wal_keep_segments = common dso_local global i32 0, align 4
@max_replication_slots = common dso_local global i64 0, align 8
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*)* @KeepLogSeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @KeepLogSeg(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @wal_segment_size, align 4
  %11 = call i32 @XLByteToSeg(i64 %8, i32 %9, i32 %10)
  %12 = call i64 (...) @XLogGetReplicationSlotMinimumLSN()
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @wal_keep_segments, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @wal_keep_segments, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @wal_keep_segments, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %19
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i64, i64* @max_replication_slots, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @InvalidXLogRecPtr, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @wal_segment_size, align 4
  %36 = call i32 @XLByteToSeg(i64 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %47

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %39
  br label %48

48:                                               ; preds = %47, %28, %25
  %49 = load i32, i32* %5, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %4, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @XLByteToSeg(i64, i32, i32) #1

declare dso_local i64 @XLogGetReplicationSlotMinimumLSN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
