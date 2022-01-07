; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_vdpau.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_vdpau.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { i32, %struct.TYPE_8__*, i64, i32, %struct.priv_owner*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.priv_owner = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"x11\00", align 1
@MPGL_CAP_VDPAU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ra_hwdec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.priv_owner*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %3, align 8
  %7 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %8 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32* @ra_get_native_resource(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %15 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ra_is_gl(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %1
  store i32 -1, i32* %2, align 4
  br label %86

20:                                               ; preds = %13
  %21 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %22 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_9__* @ra_gl_get(i32 %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MPGL_CAP_VDPAU, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %86

32:                                               ; preds = %20
  %33 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %34 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %33, i32 0, i32 4
  %35 = load %struct.priv_owner*, %struct.priv_owner** %34, align 8
  store %struct.priv_owner* %35, %struct.priv_owner** %6, align 8
  %36 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %37 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call %struct.TYPE_10__* @mp_vdpau_create_device_x11(i32 %38, i32* %39, i32 1)
  %41 = load %struct.priv_owner*, %struct.priv_owner** %6, align 8
  %42 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %41, i32 0, i32 0
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %42, align 8
  %43 = load %struct.priv_owner*, %struct.priv_owner** %6, align 8
  %44 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %86

48:                                               ; preds = %32
  %49 = load %struct.priv_owner*, %struct.priv_owner** %6, align 8
  %50 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @mp_vdpau_handle_preemption(%struct.TYPE_10__* %51, i32* null)
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %2, align 4
  br label %86

55:                                               ; preds = %48
  %56 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %57 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.priv_owner*, %struct.priv_owner** %6, align 8
  %62 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = call i64 @mp_vdpau_guess_if_emulated(%struct.TYPE_10__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 -1, i32* %2, align 4
  br label %86

67:                                               ; preds = %60, %55
  %68 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %69 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.priv_owner*, %struct.priv_owner** %6, align 8
  %74 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %79 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.priv_owner*, %struct.priv_owner** %6, align 8
  %82 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = call i32 @hwdec_devices_add(i32 %80, %struct.TYPE_11__* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %67, %66, %54, %47, %31, %19
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32* @ra_get_native_resource(i32, i8*) #1

declare dso_local i32 @ra_is_gl(i32) #1

declare dso_local %struct.TYPE_9__* @ra_gl_get(i32) #1

declare dso_local %struct.TYPE_10__* @mp_vdpau_create_device_x11(i32, i32*, i32) #1

declare dso_local i32 @mp_vdpau_handle_preemption(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @mp_vdpau_guess_if_emulated(%struct.TYPE_10__*) #1

declare dso_local i32 @hwdec_devices_add(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
