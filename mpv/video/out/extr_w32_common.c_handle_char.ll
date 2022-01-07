; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_handle_char.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_handle_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_w32_state*, i32)* @handle_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_char(%struct.vo_w32_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo_w32_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vo_w32_state*, %struct.vo_w32_state** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @decode_utf16(%struct.vo_w32_state* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %26

17:                                               ; preds = %13
  %18 = load %struct.vo_w32_state*, %struct.vo_w32_state** %4, align 8
  %19 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.vo_w32_state*, %struct.vo_w32_state** %4, align 8
  %23 = call i32 @mod_state(%struct.vo_w32_state* %22)
  %24 = or i32 %21, %23
  %25 = call i32 @mp_input_put_key(i32 %20, i32 %24)
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %17, %16, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @decode_utf16(%struct.vo_w32_state*, i32) #1

declare dso_local i32 @mp_input_put_key(i32, i32) #1

declare dso_local i32 @mod_state(%struct.vo_w32_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
