; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_mouse.c_fill_mouse_dideviceinstanceA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_mouse.c_fill_mouse_dideviceinstanceA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%d %p\0A\00", align 1
@GUID_SysMouse = common dso_local global i8* null, align 8
@DI8DEVTYPE_MOUSE = common dso_local global i32 0, align 4
@DI8DEVTYPEMOUSE_TRADITIONAL = common dso_local global i32 0, align 4
@DIDEVTYPE_MOUSE = common dso_local global i32 0, align 4
@DIDEVTYPEMOUSE_TRADITIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Wine Mouse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @fill_mouse_dideviceinstanceA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_mouse_dideviceinstanceA(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, %struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @memset(%struct.TYPE_8__* %13, i32 0, i32 %14)
  %16 = call i32 @memset(%struct.TYPE_8__* %6, i32 0, i32 32)
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** @GUID_SysMouse, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** @GUID_SysMouse, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 2048
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @DI8DEVTYPE_MOUSE, align 4
  %27 = load i32, i32* @DI8DEVTYPEMOUSE_TRADITIONAL, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %26, %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @DIDEVTYPE_MOUSE, align 4
  %33 = load i32, i32* @DIDEVTYPEMOUSE_TRADITIONAL, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %32, %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcpy(i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strcpy(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 32
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  br label %52

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i64 [ %50, %48 ], [ 32, %51 ]
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(%struct.TYPE_8__* %44, %struct.TYPE_8__* %6, i32 %54)
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
