; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_sema.c_PGReserveSemaphores.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_sema.c_PGReserveSemaphores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@DataDir = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not stat data directory \22%s\22: %m\00", align 1
@sharedSemas = common dso_local global i64 0, align 8
@numSharedSemas = common dso_local global i64 0, align 8
@maxSharedSemas = common dso_local global i32 0, align 4
@SEMAS_PER_SET = common dso_local global i32 0, align 4
@maxSemaSets = common dso_local global i32 0, align 4
@mySemaSets = common dso_local global i32* null, align 8
@PANIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@numSemaSets = common dso_local global i64 0, align 8
@nextSemaKey = common dso_local global i32 0, align 4
@nextSemaNumber = common dso_local global i32 0, align 4
@ReleaseSemaphores = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PGReserveSemaphores(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @DataDir, align 4
  %5 = call i64 @stat(i32 %4, %struct.stat* %3)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @FATAL, align 4
  %9 = call i32 (...) @errcode_for_file_access()
  %10 = load i32, i32* @DataDir, align 4
  %11 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 @ereport(i32 %8, i32 %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @PGSemaphoreShmemSize(i32 %14)
  %16 = call i64 @ShmemAllocUnlocked(i32 %15)
  store i64 %16, i64* @sharedSemas, align 8
  store i64 0, i64* @numSharedSemas, align 8
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* @maxSharedSemas, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SEMAS_PER_SET, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @SEMAS_PER_SET, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* @maxSemaSets, align 4
  %24 = load i32, i32* @maxSemaSets, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i64 @malloc(i32 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** @mySemaSets, align 8
  %30 = load i32*, i32** @mySemaSets, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %13
  %33 = load i32, i32* @PANIC, align 4
  %34 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %13
  store i64 0, i64* @numSemaSets, align 8
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @nextSemaKey, align 4
  %38 = load i32, i32* @SEMAS_PER_SET, align 4
  store i32 %38, i32* @nextSemaNumber, align 4
  %39 = load i32, i32* @ReleaseSemaphores, align 4
  %40 = call i32 @on_shmem_exit(i32 %39, i32 0)
  ret void
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @ShmemAllocUnlocked(i32) #1

declare dso_local i32 @PGSemaphoreShmemSize(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
