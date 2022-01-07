; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_mouse.c_mousedev_create_device.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_mouse.c_mousedev_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%p %s %s %p %i\0A\00", align 1
@GUID_SysMouse = common dso_local global i32 0, align 4
@IID_IDirectInputDeviceA = common dso_local global i32 0, align 4
@IID_IDirectInputDevice2A = common dso_local global i32 0, align 4
@IID_IDirectInputDevice7A = common dso_local global i32 0, align 4
@IID_IDirectInputDevice8A = common dso_local global i32 0, align 4
@IID_IDirectInputDeviceW = common dso_local global i32 0, align 4
@IID_IDirectInputDevice2W = common dso_local global i32 0, align 4
@IID_IDirectInputDevice7W = common dso_local global i32 0, align 4
@IID_IDirectInputDevice8W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"no interface\0A\00", align 1
@DIERR_NOINTERFACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Created a Mouse device (%p)\0A\00", align 1
@DIERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@DI_OK = common dso_local global i32 0, align 4
@DIERR_DEVICENOTREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32**, i32)* @mousedev_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mousedev_create_device(i32* %0, i32* %1, i32* %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_6__*
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @debugstr_guid(i32* %15)
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @debugstr_guid(i32* %17)
  %19 = load i32**, i32*** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 (i8*, %struct.TYPE_6__*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %14, i32 %16, i32 %18, i32** %19, i32 %20)
  %22 = load i32**, i32*** %10, align 8
  store i32* null, i32** %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @IsEqualGUID(i32* @GUID_SysMouse, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %94

26:                                               ; preds = %5
  %27 = load i32*, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %69

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @IsEqualGUID(i32* @IID_IDirectInputDeviceA, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @IsEqualGUID(i32* @IID_IDirectInputDevice2A, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @IsEqualGUID(i32* @IID_IDirectInputDevice7A, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @IsEqualGUID(i32* @IID_IDirectInputDevice8A, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %34, %30
  store i32 0, i32* %11, align 4
  br label %68

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @IsEqualGUID(i32* @IID_IDirectInputDeviceW, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @IsEqualGUID(i32* @IID_IDirectInputDevice2W, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @IsEqualGUID(i32* @IID_IDirectInputDevice7W, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 @IsEqualGUID(i32* @IID_IDirectInputDevice8W, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55, %51, %47
  store i32 1, i32* %11, align 4
  br label %67

64:                                               ; preds = %59
  %65 = call i32 @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @DIERR_NOINTERFACE, align 4
  store i32 %66, i32* %6, align 4
  br label %96

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call %struct.TYPE_6__* @alloc_device(i32* %70, i32* %71)
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %12, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %74 = call i32 (i8*, %struct.TYPE_6__*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @DIERR_OUTOFMEMORY, align 4
  store i32 %78, i32* %6, align 4
  br label %96

79:                                               ; preds = %69
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32**, i32*** %10, align 8
  store i32* %85, i32** %86, align 8
  br label %92

87:                                               ; preds = %79
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32**, i32*** %10, align 8
  store i32* %90, i32** %91, align 8
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i32, i32* @DI_OK, align 4
  store i32 %93, i32* %6, align 4
  br label %96

94:                                               ; preds = %5
  %95 = load i32, i32* @DIERR_DEVICENOTREG, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %92, %77, %64
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*, ...) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local %struct.TYPE_6__* @alloc_device(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
