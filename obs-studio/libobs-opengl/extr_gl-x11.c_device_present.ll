; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_device_present.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_device_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@device_present.initialized = internal global i32 0, align 4
@device_present.swap_type = internal global i32 129, align 4
@GLAD_GLX_EXT_swap_control = common dso_local global i64 0, align 8
@GLAD_GLX_MESA_swap_control = common dso_local global i64 0, align 8
@GLAD_GLX_SGI_swap_control = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_present(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @device_present.initialized, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* @GLAD_GLX_EXT_swap_control, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 131, i32* @device_present.swap_type, align 4
  br label %35

25:                                               ; preds = %21
  %26 = load i64, i64* @GLAD_GLX_MESA_swap_control, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 130, i32* @device_present.swap_type, align 4
  br label %34

29:                                               ; preds = %25
  %30 = load i64, i64* @GLAD_GLX_SGI_swap_control, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 128, i32* @device_present.swap_type, align 4
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %33, %28
  br label %35

35:                                               ; preds = %34, %24
  store i32 1, i32* @device_present.initialized, align 4
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32*, i32** %3, align 8
  %38 = call i32* @XGetXCBConnection(i32* %37)
  store i32* %38, i32** %5, align 8
  br label %39

39:                                               ; preds = %43, %36
  %40 = load i32*, i32** %5, align 8
  %41 = call i32* @xcb_poll_for_event(i32* %40)
  store i32* %41, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @free(i32* %44)
  br label %39

46:                                               ; preds = %39
  %47 = load i32, i32* @device_present.swap_type, align 4
  switch i32 %47, label %57 [
    i32 131, label %48
    i32 130, label %52
    i32 128, label %54
    i32 129, label %56
  ]

48:                                               ; preds = %46
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @glXSwapIntervalEXT(i32* %49, i32 %50, i32 0)
  br label %57

52:                                               ; preds = %46
  %53 = call i32 @glXSwapIntervalMESA(i32 0)
  br label %57

54:                                               ; preds = %46
  %55 = call i32 @glXSwapIntervalSGI(i32 0)
  br label %57

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %46, %54, %52, %48
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @glXSwapBuffers(i32* %58, i32 %59)
  ret void
}

declare dso_local i32* @XGetXCBConnection(i32*) #1

declare dso_local i32* @xcb_poll_for_event(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @glXSwapIntervalEXT(i32*, i32, i32) #1

declare dso_local i32 @glXSwapIntervalMESA(i32) #1

declare dso_local i32 @glXSwapIntervalSGI(i32) #1

declare dso_local i32 @glXSwapBuffers(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
