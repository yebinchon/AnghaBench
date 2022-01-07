; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_sema.c_PGSemaphoreCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_sema.c_PGSemaphoreCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@numSems = common dso_local global i64 0, align 8
@maxSems = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"too many semaphores created\00", align 1
@TRUE = common dso_local global i32 0, align 4
@mySemSet = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"could not create semaphore: error code %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGSemaphoreCreate() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = load i32, i32* @IsUnderPostmaster, align 4
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @Assert(i32 %6)
  %8 = load i64, i64* @numSems, align 8
  %9 = load i64, i64* @maxSems, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @PANIC, align 4
  %13 = call i32 @elog(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %0
  %15 = call i32 @ZeroMemory(%struct.TYPE_4__* %2, i32 16)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 16, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = call i64 @CreateSemaphore(%struct.TYPE_4__* %2, i32 1, i32 32767, i32* null)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i64, i64* %1, align 8
  %25 = load i64*, i64** @mySemSet, align 8
  %26 = load i64, i64* @numSems, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* @numSems, align 8
  %28 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 %24, i64* %28, align 8
  br label %34

29:                                               ; preds = %14
  %30 = load i32, i32* @PANIC, align 4
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = call i32 @ereport(i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load i64, i64* %1, align 8
  %36 = trunc i64 %35 to i32
  ret i32 %36
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @CreateSemaphore(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
