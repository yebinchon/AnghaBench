; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_handle_key_up.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_handle_key_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32 }

@MP_INPUT_RELEASE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_w32_state*, i32, i32)* @handle_key_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_key_up(%struct.vo_w32_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vo_w32_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %9 [
    i32 129, label %8
    i32 130, label %8
    i32 128, label %8
  ]

8:                                                ; preds = %3, %3, %3
  br label %15

9:                                                ; preds = %3
  %10 = load %struct.vo_w32_state*, %struct.vo_w32_state** %4, align 8
  %11 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MP_INPUT_RELEASE_ALL, align 4
  %14 = call i32 @mp_input_put_key(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @mp_input_put_key(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
