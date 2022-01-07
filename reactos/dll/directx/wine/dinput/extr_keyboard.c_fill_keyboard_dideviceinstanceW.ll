; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_keyboard.c_fill_keyboard_dideviceinstanceW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_keyboard.c_fill_keyboard_dideviceinstanceW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%d %p\0A\00", align 1
@GUID_SysKeyboard = common dso_local global i8* null, align 8
@DI8DEVTYPE_KEYBOARD = common dso_local global i32 0, align 4
@DIDEVTYPE_KEYBOARD = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Wine Keyboard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32)* @fill_keyboard_dideviceinstanceW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_keyboard_dideviceinstanceW(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.TYPE_8__* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @memset(%struct.TYPE_8__* %15, i32 0, i32 %16)
  %18 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 32)
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** @GUID_SysKeyboard, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 5
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** @GUID_SysKeyboard, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 2048
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @DI8DEVTYPE_KEYBOARD, align 4
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %28, %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  br label %39

33:                                               ; preds = %3
  %34 = load i32, i32* @DIDEVTYPE_KEYBOARD, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %34, %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i32, i32* @CP_ACP, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX_PATH, align 4
  %44 = call i32 @MultiByteToWideChar(i32 %40, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 %42, i32 %43)
  %45 = load i32, i32* @CP_ACP, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MAX_PATH, align 4
  %49 = call i32 @MultiByteToWideChar(i32 %45, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 %47, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 32
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  br label %58

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i64 [ %56, %54 ], [ 32, %57 ]
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(%struct.TYPE_8__* %50, %struct.TYPE_8__* %8, i32 %60)
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
