; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_set_external2.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_set_external2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, %struct.sub_bitmaps* }
%struct.sub_bitmaps = type { i32 }

@OSDTYPE_EXTERNAL2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_set_external2(%struct.osd_state* %0, %struct.sub_bitmaps* %1) #0 {
  %3 = alloca %struct.osd_state*, align 8
  %4 = alloca %struct.sub_bitmaps*, align 8
  store %struct.osd_state* %0, %struct.osd_state** %3, align 8
  store %struct.sub_bitmaps* %1, %struct.sub_bitmaps** %4, align 8
  %5 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %6 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %5, i32 0, i32 1
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %4, align 8
  %9 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %10 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = load i64, i64* @OSDTYPE_EXTERNAL2, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.sub_bitmaps* %8, %struct.sub_bitmaps** %15, align 8
  %16 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %17 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = load i64, i64* @OSDTYPE_EXTERNAL2, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %26 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %28 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %27, i32 0, i32 1
  %29 = call i32 @pthread_mutex_unlock(i32* %28)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
