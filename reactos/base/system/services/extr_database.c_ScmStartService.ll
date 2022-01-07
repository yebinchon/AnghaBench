; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmStartService.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_database.c_ScmStartService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"ScmStartService() called\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Start Service %p (%S)\0A\00", align 1
@ControlServiceCriticalSection = common dso_local global i32 0, align 4
@ScmInitialize = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"ScmStartService() done (Error %lu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmStartService(%struct.TYPE_4__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %9, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %10 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %11, i32 %14)
  %16 = call i32 @EnterCriticalSection(i32* @ControlServiceCriticalSection)
  %17 = load i32, i32* @ScmInitialize, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i64 @ScmAcquireServiceStartLock(i32 %20, i32** %8)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %37

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @ScmLoadService(%struct.TYPE_4__* %28, i64 %29, i32* %30)
  store i64 %31, i64* %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @ScmReleaseServiceStartLock(i32** %8)
  br label %36

36:                                               ; preds = %34, %27
  br label %37

37:                                               ; preds = %36, %25
  %38 = call i32 @LeaveCriticalSection(i32* @ControlServiceCriticalSection)
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %7, align 8
  ret i64 %41
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @ScmAcquireServiceStartLock(i32, i32**) #1

declare dso_local i64 @ScmLoadService(%struct.TYPE_4__*, i64, i32*) #1

declare dso_local i32 @ScmReleaseServiceStartLock(i32**) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
