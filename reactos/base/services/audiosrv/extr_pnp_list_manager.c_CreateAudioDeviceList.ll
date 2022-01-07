; ModuleID = '/home/carl/AnghaBench/reactos/base/services/audiosrv/extr_pnp_list_manager.c_CreateAudioDeviceList.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/audiosrv/extr_pnp_list_manager.c_CreateAudioDeviceList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Creating file mapping\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@AUDIO_LIST_NAME = common dso_local global i32 0, align 4
@device_list_file = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Creation of audio device list failed (err %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Mapping view of file\0A\00", align 1
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@audio_device_list = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"MapViewOfFile FAILED (err %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Device list created\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateAudioDeviceList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 (...) @InitializeAudioDeviceListLock()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %2, align 4
  br label %54

8:                                                ; preds = %1
  %9 = call i32 (...) @LockAudioDeviceList()
  %10 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %12 = load i32, i32* @PAGE_READWRITE, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @AUDIO_LIST_NAME, align 4
  %15 = call i32* @CreateFileMappingW(i32 %11, i32* null, i32 %12, i32 0, i32 %13, i32 %14)
  store i32* %15, i32** @device_list_file, align 8
  %16 = load i32*, i32** @device_list_file, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %8
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = call i32 (...) @UnlockAudioDeviceList()
  %22 = call i32 (...) @KillAudioDeviceListLock()
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %8
  %25 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32*, i32** @device_list_file, align 8
  %27 = load i32, i32* @FILE_MAP_WRITE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call %struct.TYPE_4__* @MapViewOfFile(i32* %26, i32 %27, i32 0, i32 0, i32 %28)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** @audio_device_list, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @audio_device_list, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** @device_list_file, align 8
  %36 = call i32 @CloseHandle(i32* %35)
  store i32* null, i32** @device_list_file, align 8
  %37 = call i32 (...) @UnlockAudioDeviceList()
  %38 = call i32 (...) @KillAudioDeviceListLock()
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %24
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @audio_device_list, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @memset(%struct.TYPE_4__* %41, i32 0, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @audio_device_list, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 4, i32* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @audio_device_list, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @audio_device_list, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = call i32 (...) @UnlockAudioDeviceList()
  %52 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %40, %32, %18, %6
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @InitializeAudioDeviceListLock(...) #1

declare dso_local i32 @LockAudioDeviceList(...) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32* @CreateFileMappingW(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @UnlockAudioDeviceList(...) #1

declare dso_local i32 @KillAudioDeviceListLock(...) #1

declare dso_local %struct.TYPE_4__* @MapViewOfFile(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
