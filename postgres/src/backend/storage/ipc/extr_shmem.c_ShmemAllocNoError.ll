; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shmem.c_ShmemAllocNoError.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shmem.c_ShmemAllocNoError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@ShmemSegHdr = common dso_local global %struct.TYPE_2__* null, align 8
@ShmemLock = common dso_local global i32 0, align 4
@ShmemBase = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ShmemAllocNoError(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i64 @CACHELINEALIGN(i8* %7)
  store i64 %8, i64* %2, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemSegHdr, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load i32, i32* @ShmemLock, align 4
  %14 = call i32 @SpinLockAcquire(i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemSegHdr, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %2, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemSegHdr, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load i64, i64* @ShmemBase, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemSegHdr, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %35

34:                                               ; preds = %1
  store i8* null, i8** %5, align 8
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* @ShmemLock, align 4
  %37 = call i32 @SpinLockRelease(i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @CACHELINEALIGN(i8* %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = icmp eq i8* %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load i8*, i8** %5, align 8
  ret i8* %45
}

declare dso_local i64 @CACHELINEALIGN(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SpinLockAcquire(i32) #1

declare dso_local i32 @SpinLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
