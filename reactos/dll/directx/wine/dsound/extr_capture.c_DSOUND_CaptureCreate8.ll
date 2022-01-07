; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_capture.c_DSOUND_CaptureCreate8.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_capture.c_DSOUND_CaptureCreate8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"(%s, %p)\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IDirectSoundCapture8 = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@DS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"IDirectSoundCaptureImpl_Create failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DSOUND_CaptureCreate8(i32 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @debugstr_guid(i32 %8)
  %10 = load i64*, i64** %5, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9, i64* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @IsEqualIID(i32 %12, i32* @IID_IUnknown)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @IsEqualIID(i32 %16, i32* @IID_IDirectSoundCapture8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i64*, i64** %5, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* @E_NOINTERFACE, align 8
  store i64 %21, i64* %3, align 8
  br label %38

22:                                               ; preds = %15, %2
  %23 = call i32 (...) @setup_dsound_options()
  %24 = call i64 @IDirectSoundCaptureImpl_Create(i64* %6)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @DS_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @IDirectSoundCapture_AddRef(i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load i64*, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  br label %36

33:                                               ; preds = %22
  %34 = call i32 @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64*, i64** %5, align 8
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %19
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @TRACE(i8*, i32, i64*) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i32 @IsEqualIID(i32, i32*) #1

declare dso_local i32 @setup_dsound_options(...) #1

declare dso_local i64 @IDirectSoundCaptureImpl_Create(i64*) #1

declare dso_local i32 @IDirectSoundCapture_AddRef(i64) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
