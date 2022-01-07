; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_handle_key_down.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_handle_key_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32 }

@KF_REPEAT = common dso_local global i32 0, align 4
@KF_EXTENDED = common dso_local global i32 0, align 4
@MP_KEY_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_w32_state*, i32, i32)* @handle_key_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_key_down(%struct.vo_w32_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vo_w32_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @KF_REPEAT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %44

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @KF_EXTENDED, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @mp_w32_vkey_to_mpkey(i32 %14, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %13
  %22 = load %struct.vo_w32_state*, %struct.vo_w32_state** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @KF_EXTENDED, align 4
  %26 = or i32 255, %25
  %27 = and i32 %24, %26
  %28 = call i32 @decode_key(%struct.vo_w32_state* %22, i32 %23, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %44

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %13
  %34 = load %struct.vo_w32_state*, %struct.vo_w32_state** %4, align 8
  %35 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.vo_w32_state*, %struct.vo_w32_state** %4, align 8
  %39 = call i32 @mod_state(%struct.vo_w32_state* %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @MP_KEY_STATE_DOWN, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @mp_input_put_key(i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %33, %31, %12
  ret void
}

declare dso_local i32 @mp_w32_vkey_to_mpkey(i32, i32) #1

declare dso_local i32 @decode_key(%struct.vo_w32_state*, i32, i32) #1

declare dso_local i32 @mp_input_put_key(i32, i32) #1

declare dso_local i32 @mod_state(%struct.vo_w32_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
