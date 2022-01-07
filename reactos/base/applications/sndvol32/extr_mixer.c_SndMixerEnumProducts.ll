; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerEnumProducts.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerEnumProducts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to get device capabilities for mixer id %d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SndMixerEnumProducts(%struct.TYPE_7__* %0, i32 (%struct.TYPE_7__*, i64, i32, i32)* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32 (%struct.TYPE_7__*, i64, i32, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 (%struct.TYPE_7__*, i64, i32, i32)* %1, i32 (%struct.TYPE_7__*, i64, i32, i32)** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %49, %3
  %13 = load i64, i64* %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %12
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @mixerOpen(i32* %8, i64 %19, i32 0, i32 0, i32 0)
  %21 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @mixerGetDevCaps(i64 %24, %struct.TYPE_8__* %7, i32 4)
  %26 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i32 (%struct.TYPE_7__*, i64, i32, i32)*, i32 (%struct.TYPE_7__*, i64, i32, i32)** %5, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 %29(%struct.TYPE_7__* %30, i64 %31, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mixerClose(i32 %38)
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %10, align 4
  br label %52

41:                                               ; preds = %28
  br label %45

42:                                               ; preds = %23
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @DPRINT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @mixerClose(i32 %46)
  br label %48

48:                                               ; preds = %45, %18
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %12

52:                                               ; preds = %37, %12
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local i64 @mixerOpen(i32*, i64, i32, i32, i32) #1

declare dso_local i64 @mixerGetDevCaps(i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mixerClose(i32) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
