; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_classhint.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_classhint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state*, %struct.mp_vo_opts* }
%struct.vo_x11_state = type { i32 }
%struct.mp_vo_opts = type { i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"mpv\00", align 1
@_NET_WM_PID = common dso_local global i32 0, align 4
@XA_CARDINAL = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32, i8*)* @vo_x11_classhint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_classhint(%struct.vo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.vo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mp_vo_opts*, align 8
  %8 = alloca %struct.vo_x11_state*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i64, align 8
  store %struct.vo* %0, %struct.vo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.vo*, %struct.vo** %4, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 1
  %13 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %12, align 8
  store %struct.mp_vo_opts* %13, %struct.mp_vo_opts** %7, align 8
  %14 = load %struct.vo*, %struct.vo** %4, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 0
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %15, align 8
  store %struct.vo_x11_state* %16, %struct.vo_x11_state** %8, align 8
  %17 = call i64 (...) @getpid()
  store i64 %17, i64* %10, align 8
  %18 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  %19 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  %24 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %28

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i8* [ %25, %22 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.vo_x11_state*, %struct.vo_x11_state** %8, align 8
  %33 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @XSetClassHint(i32 %34, i32 %35, %struct.TYPE_3__* %9)
  %37 = load %struct.vo_x11_state*, %struct.vo_x11_state** %8, align 8
  %38 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.vo_x11_state*, %struct.vo_x11_state** %8, align 8
  %42 = load i32, i32* @_NET_WM_PID, align 4
  %43 = call i32 @XA(%struct.vo_x11_state* %41, i32 %42)
  %44 = load i32, i32* @XA_CARDINAL, align 4
  %45 = load i32, i32* @PropModeReplace, align 4
  %46 = bitcast i64* %10 to i8*
  %47 = call i32 @XChangeProperty(i32 %39, i32 %40, i32 %43, i32 %44, i32 32, i32 %45, i8* %46, i32 1)
  ret void
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @XSetClassHint(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @XChangeProperty(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @XA(%struct.vo_x11_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
