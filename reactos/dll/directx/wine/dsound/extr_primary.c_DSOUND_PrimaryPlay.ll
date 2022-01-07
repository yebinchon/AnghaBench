; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_primary.c_DSOUND_PrimaryPlay.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_primary.c_DSOUND_PrimaryPlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@DSBPLAY_LOOPING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"IDsDriverBuffer_Play failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"waveOutRestart failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DSOUND_PrimaryPlay(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load i64, i64* @DS_OK, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @DSBPLAY_LOOPING, align 4
  %16 = call i64 @IDsDriverBuffer_Play(i64 %14, i32 0, i32 0, i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @DS_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %11
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @waveOutRestart(i32 %26)
  %28 = call i64 @mmErr(i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @DS_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %23
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*) #1

declare dso_local i64 @IDsDriverBuffer_Play(i64, i32, i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @mmErr(i32) #1

declare dso_local i32 @waveOutRestart(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
