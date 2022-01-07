; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_update_vo_size.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_update_vo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i64, i64, %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32, i32 }

@VO_EVENT_RESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @update_vo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_vo_size(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_x11_state*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 2
  %6 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  store %struct.vo_x11_state* %6, %struct.vo_x11_state** %3, align 8
  %7 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %8 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @RC_W(i32 %9)
  %11 = load %struct.vo*, %struct.vo** %2, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %17 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @RC_H(i32 %18)
  %20 = load %struct.vo*, %struct.vo** %2, align 8
  %21 = getelementptr inbounds %struct.vo, %struct.vo* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %15, %1
  %25 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %26 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @RC_W(i32 %27)
  %29 = load %struct.vo*, %struct.vo** %2, align 8
  %30 = getelementptr inbounds %struct.vo, %struct.vo* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %32 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @RC_H(i32 %33)
  %35 = load %struct.vo*, %struct.vo** %2, align 8
  %36 = getelementptr inbounds %struct.vo, %struct.vo* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @VO_EVENT_RESIZE, align 4
  %38 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %39 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %24, %15
  ret void
}

declare dso_local i64 @RC_W(i32) #1

declare dso_local i64 @RC_H(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
