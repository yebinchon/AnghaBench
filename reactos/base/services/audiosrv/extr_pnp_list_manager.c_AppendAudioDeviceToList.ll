; ModuleID = '/home/carl/AnghaBench/reactos/base/services/audiosrv/extr_pnp_list_manager.c_AppendAudioDeviceToList.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/audiosrv/extr_pnp_list_manager.c_AppendAudioDeviceToList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@audio_device_list = common dso_local global %struct.TYPE_6__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Device added to list\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AppendAudioDeviceToList(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 4, i32* %4, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @WideStringSize(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @LockAudioDeviceList()
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_device_list, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_device_list, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = call i32 (...) @UnlockAudioDeviceList()
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_device_list, align 8
  %29 = bitcast %struct.TYPE_6__* %28 to i8*
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_device_list, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @memcpy(i8* %33, %struct.TYPE_5__* %34, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_device_list, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @audio_device_list, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = call i32 (...) @UnlockAudioDeviceList()
  %48 = call i32 @logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %27, %24
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @WideStringSize(i32) #1

declare dso_local i32 @LockAudioDeviceList(...) #1

declare dso_local i32 @UnlockAudioDeviceList(...) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @logmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
