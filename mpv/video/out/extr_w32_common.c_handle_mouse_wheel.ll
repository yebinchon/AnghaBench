; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_handle_mouse_wheel.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_handle_mouse_wheel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32 }

@MP_WHEEL_RIGHT = common dso_local global i32 0, align 4
@MP_WHEEL_LEFT = common dso_local global i32 0, align 4
@MP_WHEEL_UP = common dso_local global i32 0, align 4
@MP_WHEEL_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_w32_state*, i32, i32)* @handle_mouse_wheel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_mouse_wheel(%struct.vo_w32_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vo_w32_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @MP_WHEEL_RIGHT, align 4
  br label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @MP_WHEEL_LEFT, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %7, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @MP_WHEEL_UP, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @MP_WHEEL_DOWN, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = load %struct.vo_w32_state*, %struct.vo_w32_state** %4, align 8
  %30 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.vo_w32_state*, %struct.vo_w32_state** %4, align 8
  %34 = call i32 @mod_state(%struct.vo_w32_state* %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @abs(i32 %36) #3
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %38, 1.200000e+02
  %40 = fptosi double %39 to i32
  %41 = call i32 @mp_input_put_wheel(i32 %31, i32 %35, i32 %40)
  ret void
}

declare dso_local i32 @mp_input_put_wheel(i32, i32, i32) #1

declare dso_local i32 @mod_state(%struct.vo_w32_state*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
