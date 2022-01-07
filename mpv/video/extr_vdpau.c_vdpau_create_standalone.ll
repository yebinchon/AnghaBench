; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vdpau.c_vdpau_create_standalone.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vdpau.c_vdpau_create_standalone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVBufferRef = type { i32 }
%struct.mpv_global = type { i32 }
%struct.mp_log = type { i32 }
%struct.hwcontext_create_dev_params = type { i32 }
%struct.mp_vdpau_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.AVBufferRef* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.AVBufferRef* (%struct.mpv_global*, %struct.mp_log*, %struct.hwcontext_create_dev_params*)* @vdpau_create_standalone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.AVBufferRef* @vdpau_create_standalone(%struct.mpv_global* %0, %struct.mp_log* %1, %struct.hwcontext_create_dev_params* %2) #0 {
  %4 = alloca %struct.AVBufferRef*, align 8
  %5 = alloca %struct.mpv_global*, align 8
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca %struct.hwcontext_create_dev_params*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mp_vdpau_ctx*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %5, align 8
  store %struct.mp_log* %1, %struct.mp_log** %6, align 8
  store %struct.hwcontext_create_dev_params* %2, %struct.hwcontext_create_dev_params** %7, align 8
  %10 = call i32 (...) @XInitThreads()
  %11 = call i32* @XOpenDisplay(i32* null)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %4, align 8
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.hwcontext_create_dev_params*, %struct.hwcontext_create_dev_params** %7, align 8
  %19 = getelementptr inbounds %struct.hwcontext_create_dev_params, %struct.hwcontext_create_dev_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mp_vdpau_ctx* @mp_vdpau_create_device_x11(%struct.mp_log* %16, i32* %17, i32 %20)
  store %struct.mp_vdpau_ctx* %21, %struct.mp_vdpau_ctx** %9, align 8
  %22 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %9, align 8
  %23 = icmp ne %struct.mp_vdpau_ctx* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @XCloseDisplay(i32* %25)
  store %struct.AVBufferRef* null, %struct.AVBufferRef** %4, align 8
  br label %34

27:                                               ; preds = %15
  %28 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %9, align 8
  %29 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.AVBufferRef*, %struct.AVBufferRef** %32, align 8
  store %struct.AVBufferRef* %33, %struct.AVBufferRef** %4, align 8
  br label %34

34:                                               ; preds = %27, %24, %14
  %35 = load %struct.AVBufferRef*, %struct.AVBufferRef** %4, align 8
  ret %struct.AVBufferRef* %35
}

declare dso_local i32 @XInitThreads(...) #1

declare dso_local i32* @XOpenDisplay(i32*) #1

declare dso_local %struct.mp_vdpau_ctx* @mp_vdpau_create_device_x11(%struct.mp_log*, i32*, i32) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
