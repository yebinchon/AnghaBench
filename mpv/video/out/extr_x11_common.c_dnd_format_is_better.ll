; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_dnd_format_is_better.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_dnd_format_is_better.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_x11_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_x11_state*, i64, i64)* @dnd_format_is_better to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnd_format_is_better(%struct.vo_x11_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vo_x11_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vo_x11_state* %0, %struct.vo_x11_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %10 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @x11_dnd_mime_type(%struct.vo_x11_state* %12, i64 %13)
  %15 = call i32 @mp_event_get_mime_type_score(i32 %11, i32 %14)
  store i32 %15, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %20 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @x11_dnd_mime_type(%struct.vo_x11_state* %22, i64 %23)
  %25 = call i32 @mp_event_get_mime_type_score(i32 %21, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %18, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %30, %31
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i32 @mp_event_get_mime_type_score(i32, i32) #1

declare dso_local i32 @x11_dnd_mime_type(%struct.vo_x11_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
