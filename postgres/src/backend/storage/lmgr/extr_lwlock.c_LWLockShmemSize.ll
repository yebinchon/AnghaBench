; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockShmemSize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockShmemSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NUM_FIXED_LWLOCKS = common dso_local global i32 0, align 4
@LWLOCK_PADDED_SIZE = common dso_local global i64 0, align 8
@NamedLWLockTrancheRequests = common dso_local global i32 0, align 4
@NamedLWLockTrancheRequestArray = common dso_local global %struct.TYPE_2__* null, align 8
@lock_named_request_allowed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LWLockShmemSize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @NUM_FIXED_LWLOCKS, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i64 (...) @NumLWLocksByNamedTranches()
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, %5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @mul_size(i32 %10, i32 4)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @LWLOCK_PADDED_SIZE, align 8
  %14 = add i64 4, %13
  %15 = call i64 @add_size(i64 %12, i64 %14)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i32, i32* @NamedLWLockTrancheRequests, align 4
  %18 = call i64 @mul_size(i32 %17, i32 4)
  %19 = call i64 @add_size(i64 %16, i64 %18)
  store i64 %19, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %35, %0
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @NamedLWLockTrancheRequests, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i64, i64* %1, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NamedLWLockTrancheRequestArray, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strlen(i32 %31)
  %33 = add nsw i64 %32, 1
  %34 = call i64 @add_size(i64 %25, i64 %33)
  store i64 %34, i64* %1, align 8
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %20

38:                                               ; preds = %20
  store i32 0, i32* @lock_named_request_allowed, align 4
  %39 = load i64, i64* %1, align 8
  ret i64 %39
}

declare dso_local i64 @NumLWLocksByNamedTranches(...) #1

declare dso_local i64 @mul_size(i32, i32) #1

declare dso_local i64 @add_size(i64, i64) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
