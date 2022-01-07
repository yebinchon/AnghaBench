; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_pointer_handle_axis.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_pointer_handle_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_pointer = type { i32 }
%struct.vo_wayland_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MP_WHEEL_DOWN = common dso_local global i32 0, align 4
@MP_WHEEL_UP = common dso_local global i32 0, align 4
@MP_WHEEL_RIGHT = common dso_local global i32 0, align 4
@MP_WHEEL_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, i32, i32)* @pointer_handle_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointer_handle_axis(i8* %0, %struct.wl_pointer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_pointer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vo_wayland_state*, align 8
  %12 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %14, %struct.vo_wayland_state** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call double @wl_fixed_to_double(i32 %15)
  %17 = fcmp oeq double %16, 0.000000e+00
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %79

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = call double @wl_fixed_to_double(i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = call double @wl_fixed_to_double(i32 %22)
  %24 = call double @abs(double %23)
  %25 = fdiv double %21, %24
  store double %25, double* %12, align 8
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %79 [
    i32 128, label %27
    i32 129, label %53
  ]

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %32 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MP_WHEEL_DOWN, align 4
  %37 = load double, double* %12, align 8
  %38 = call i32 @mp_input_put_wheel(i32 %35, i32 %36, double %37)
  br label %39

39:                                               ; preds = %30, %27
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %44 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MP_WHEEL_UP, align 4
  %49 = load double, double* %12, align 8
  %50 = fneg double %49
  %51 = call i32 @mp_input_put_wheel(i32 %47, i32 %48, double %50)
  br label %52

52:                                               ; preds = %42, %39
  br label %79

53:                                               ; preds = %19
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %58 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MP_WHEEL_RIGHT, align 4
  %63 = load double, double* %12, align 8
  %64 = call i32 @mp_input_put_wheel(i32 %61, i32 %62, double %63)
  br label %65

65:                                               ; preds = %56, %53
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %11, align 8
  %70 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MP_WHEEL_LEFT, align 4
  %75 = load double, double* %12, align 8
  %76 = fneg double %75
  %77 = call i32 @mp_input_put_wheel(i32 %73, i32 %74, double %76)
  br label %78

78:                                               ; preds = %68, %65
  br label %79

79:                                               ; preds = %18, %19, %78, %52
  ret void
}

declare dso_local double @wl_fixed_to_double(i32) #1

declare dso_local double @abs(double) #1

declare dso_local i32 @mp_input_put_wheel(i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
