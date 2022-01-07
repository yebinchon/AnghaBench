; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_sema.c_PGSemaphoreCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_sema.c_PGSemaphoreCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@nextSemaNumber = common dso_local global i64 0, align 8
@SEMAS_PER_SET = common dso_local global i64 0, align 8
@numSemaSets = common dso_local global i64 0, align 8
@maxSemaSets = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"too many semaphores created\00", align 1
@mySemaSets = common dso_local global i32* null, align 8
@numSharedSemas = common dso_local global i64 0, align 8
@maxSharedSemas = common dso_local global i64 0, align 8
@sharedSemas = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @PGSemaphoreCreate() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i32, i32* @IsUnderPostmaster, align 4
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @Assert(i32 %5)
  %7 = load i64, i64* @nextSemaNumber, align 8
  %8 = load i64, i64* @SEMAS_PER_SET, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %0
  %11 = load i64, i64* @numSemaSets, align 8
  %12 = load i64, i64* @maxSemaSets, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @PANIC, align 4
  %16 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i64, i64* @SEMAS_PER_SET, align 8
  %19 = call i32 @IpcSemaphoreCreate(i64 %18)
  %20 = load i32*, i32** @mySemaSets, align 8
  %21 = load i64, i64* @numSemaSets, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i64, i64* @numSemaSets, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* @numSemaSets, align 8
  store i64 0, i64* @nextSemaNumber, align 8
  br label %25

25:                                               ; preds = %17, %0
  %26 = load i64, i64* @numSharedSemas, align 8
  %27 = load i64, i64* @maxSharedSemas, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @PANIC, align 4
  %31 = call i32 @elog(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sharedSemas, align 8
  %34 = load i64, i64* @numSharedSemas, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* @numSharedSemas, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %1, align 8
  %37 = load i32*, i32** @mySemaSets, align 8
  %38 = load i64, i64* @numSemaSets, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* @nextSemaNumber, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* @nextSemaNumber, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @IpcSemaphoreInitialize(i32 %50, i64 %53, i32 1)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %55
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @IpcSemaphoreCreate(i64) #1

declare dso_local i32 @IpcSemaphoreInitialize(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
