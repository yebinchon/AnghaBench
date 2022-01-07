; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_primary.c_DSOUND_PrimaryStop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_primary.c_DSOUND_PrimaryStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }

@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@DSERR_BUFFERLOST = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DSOUND_ReopenDevice failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"DSOUND_PrimaryOpen failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"IDsDriverBuffer_Stop failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"waveOutPause failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DSOUND_PrimaryStop(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load i64, i64* @DS_OK, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @IDsDriverBuffer_Stop(i64 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @DSERR_BUFFERLOST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = call i32 @DSOUND_PrimaryClose(%struct.TYPE_7__* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i64 @DSOUND_ReopenDevice(%struct.TYPE_7__* %22, i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @FAILED(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %39

30:                                               ; preds = %19
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = call i64 @DSOUND_PrimaryOpen(%struct.TYPE_7__* %31)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @FAILED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  br label %39

39:                                               ; preds = %38, %28
  br label %47

40:                                               ; preds = %11
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @DS_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %39
  br label %66

48:                                               ; preds = %1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = call i32 @LeaveCriticalSection(i32* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @waveOutPause(i32 %54)
  %56 = call i64 @mmErr(i32 %55)
  store i64 %56, i64* %3, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @EnterCriticalSection(i32* %58)
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @DS_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %48
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__*) #1

declare dso_local i64 @IDsDriverBuffer_Stop(i64) #1

declare dso_local i32 @DSOUND_PrimaryClose(%struct.TYPE_7__*) #1

declare dso_local i64 @DSOUND_ReopenDevice(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @DSOUND_PrimaryOpen(%struct.TYPE_7__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i64 @mmErr(i32) #1

declare dso_local i32 @waveOutPause(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
