; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_primary.c_PrimaryDirectSoundBuffer_Write.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_primary.c_PrimaryDirectSoundBuffer_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@CDirectSoundBuffer = common dso_local global i32 0, align 4
@lpVtbl = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IOCTL_KS_WRITE_STREAM = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PrimaryDirectSoundBuffer_Write(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CDirectSoundBuffer, align 4
  %15 = load i32, i32* @lpVtbl, align 4
  %16 = call i32 @CONTAINING_RECORD(i32 %13, i32 %14, i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %12, align 8
  %19 = call i32 @ZeroMemory(%struct.TYPE_9__* %11, i32 40)
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @CreateEvent(i32* null, i32 %20, i32 %21, i32* null)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  store i32 %22, i32* %23, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ASSERT(i32 %26)
  %28 = call i32 @ZeroMemory(%struct.TYPE_9__* %8, i32 40)
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 40, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IOCTL_KS_WRITE_STREAM, align 4
  %44 = call i64 @DeviceIoControl(i32 %42, i32 %43, i32* null, i32 0, %struct.TYPE_9__* %8, i32 40, i64* %10, %struct.TYPE_9__* %11)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %51

49:                                               ; preds = %3
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %49, %48
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i32 @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @DeviceIoControl(i32, i32, i32*, i32, %struct.TYPE_9__*, i32, i64*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
