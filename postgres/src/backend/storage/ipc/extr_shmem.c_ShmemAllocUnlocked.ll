; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shmem.c_ShmemAllocUnlocked.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shmem.c_ShmemAllocUnlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@ShmemSegHdr = common dso_local global %struct.TYPE_2__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"out of shared memory (%zu bytes requested)\00", align 1
@ShmemBase = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ShmemAllocUnlocked(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i64 @MAXALIGN(i8* %7)
  store i64 %8, i64* %2, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemSegHdr, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemSegHdr, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %2, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemSegHdr, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load i64, i64* %2, align 8
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = call i32 @ereport(i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %24, %1
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemSegHdr, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* @ShmemBase, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @MAXALIGN(i8* %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = icmp eq i8* %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i64 @MAXALIGN(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
