; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_create_ass_track.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_create_ass_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }
%struct.osd_object = type { i32 }
%struct.ass_state = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@TRACK_TYPE_ASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, %struct.osd_object*, %struct.ass_state*)* @create_ass_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_ass_track(%struct.osd_state* %0, %struct.osd_object* %1, %struct.ass_state* %2) #0 {
  %4 = alloca %struct.osd_state*, align 8
  %5 = alloca %struct.osd_object*, align 8
  %6 = alloca %struct.ass_state*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.osd_state* %0, %struct.osd_state** %4, align 8
  store %struct.osd_object* %1, %struct.osd_object** %5, align 8
  store %struct.ass_state* %2, %struct.ass_state** %6, align 8
  %8 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %9 = load %struct.ass_state*, %struct.ass_state** %6, align 8
  %10 = call i32 @create_ass_renderer(%struct.osd_state* %8, %struct.ass_state* %9)
  %11 = load %struct.ass_state*, %struct.ass_state** %6, align 8
  %12 = getelementptr inbounds %struct.ass_state, %struct.ass_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.ass_state*, %struct.ass_state** %6, align 8
  %18 = getelementptr inbounds %struct.ass_state, %struct.ass_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_3__* @ass_new_track(i32 %19)
  %21 = load %struct.ass_state*, %struct.ass_state** %6, align 8
  %22 = getelementptr inbounds %struct.ass_state, %struct.ass_state* %21, i32 0, i32 1
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %22, align 8
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %7, align 8
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i32, i32* @TRACK_TYPE_ASS, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 100, i32* %28, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 1, i32* %32, align 4
  %33 = load %struct.ass_state*, %struct.ass_state** %6, align 8
  %34 = load %struct.osd_object*, %struct.osd_object** %5, align 8
  %35 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %34, i32 0, i32 0
  %36 = call i32 @update_playres(%struct.ass_state* %33, i32* %35)
  ret void
}

declare dso_local i32 @create_ass_renderer(%struct.osd_state*, %struct.ass_state*) #1

declare dso_local %struct.TYPE_3__* @ass_new_track(i32) #1

declare dso_local i32 @update_playres(%struct.ass_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
