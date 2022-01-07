; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vdpau.c_handle_preemption.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vdpau.c_handle_preemption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_vdpau_ctx = type { i32, i32, double, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Got display preemption notice! Will attempt to recover.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Recovered from display preemption.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_vdpau_ctx*)* @handle_preemption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_preemption(%struct.mp_vdpau_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_vdpau_ctx*, align 8
  store %struct.mp_vdpau_ctx* %0, %struct.mp_vdpau_ctx** %3, align 8
  %4 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %5 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

9:                                                ; preds = %1
  %10 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %11 = call i32 @mark_vdpau_objects_uninitialized(%struct.mp_vdpau_ctx* %10)
  %12 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %18 = call i32 @MP_ERR(%struct.mp_vdpau_ctx* %17, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %9
  %22 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %22, i32 0, i32 2
  %24 = load double, double* %23, align 8
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = call double (...) @mp_time_sec()
  %28 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %28, i32 0, i32 2
  %30 = load double, double* %29, align 8
  %31 = fsub double %27, %30
  %32 = fcmp olt double %31, 1.000000e+00
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %55

34:                                               ; preds = %26, %21
  %35 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %36 = call i64 @win_x11_init_vdpau_procs(%struct.mp_vdpau_ctx* %35, i32 0)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call double (...) @mp_time_sec()
  %40 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %40, i32 0, i32 2
  store double %39, double* %41, align 8
  store i32 -1, i32* %2, align 4
  br label %55

42:                                               ; preds = %34
  %43 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %45, i32 0, i32 2
  store double 0.000000e+00, double* %46, align 8
  %47 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.mp_vdpau_ctx, %struct.mp_vdpau_ctx* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.mp_vdpau_ctx*, %struct.mp_vdpau_ctx** %3, align 8
  %54 = call i32 @MP_INFO(%struct.mp_vdpau_ctx* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %42, %38, %33, %8
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @mark_vdpau_objects_uninitialized(%struct.mp_vdpau_ctx*) #1

declare dso_local i32 @MP_ERR(%struct.mp_vdpau_ctx*, i8*) #1

declare dso_local double @mp_time_sec(...) #1

declare dso_local i64 @win_x11_init_vdpau_procs(%struct.mp_vdpau_ctx*, i32) #1

declare dso_local i32 @MP_INFO(%struct.mp_vdpau_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
