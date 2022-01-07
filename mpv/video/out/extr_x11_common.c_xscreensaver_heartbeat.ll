; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_xscreensaver_heartbeat.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_xscreensaver_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_x11_state = type { double, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_x11_state*)* @xscreensaver_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xscreensaver_heartbeat(%struct.vo_x11_state* %0) #0 {
  %2 = alloca %struct.vo_x11_state*, align 8
  %3 = alloca double, align 8
  store %struct.vo_x11_state* %0, %struct.vo_x11_state** %2, align 8
  %4 = call double (...) @mp_time_sec()
  store double %4, double* %3, align 8
  %5 = load %struct.vo_x11_state*, %struct.vo_x11_state** %2, align 8
  %6 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %struct.vo_x11_state*, %struct.vo_x11_state** %2, align 8
  %11 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  %15 = load double, double* %3, align 8
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %2, align 8
  %17 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fsub double %15, %18
  %20 = fcmp oge double %19, 1.000000e+01
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load double, double* %3, align 8
  %23 = load %struct.vo_x11_state*, %struct.vo_x11_state** %2, align 8
  %24 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %23, i32 0, i32 0
  store double %22, double* %24, align 8
  %25 = load %struct.vo_x11_state*, %struct.vo_x11_state** %2, align 8
  %26 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %25, i32 0, i32 2
  %27 = call i32 @sem_post(i32* %26)
  %28 = load %struct.vo_x11_state*, %struct.vo_x11_state** %2, align 8
  %29 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @XResetScreenSaver(i64 %30)
  br label %32

32:                                               ; preds = %21, %14, %9, %1
  ret void
}

declare dso_local double @mp_time_sec(...) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @XResetScreenSaver(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
