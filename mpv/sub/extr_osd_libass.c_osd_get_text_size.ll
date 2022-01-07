; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_osd_get_text_size.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_osd_get_text_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, %struct.osd_object** }
%struct.osd_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@OSDTYPE_OSD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_get_text_size(%struct.osd_state* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.osd_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.osd_object*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.osd_state* %0, %struct.osd_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %10 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %9, i32 0, i32 0
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %13 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %12, i32 0, i32 1
  %14 = load %struct.osd_object**, %struct.osd_object*** %13, align 8
  %15 = load i64, i64* @OSDTYPE_OSD, align 8
  %16 = getelementptr inbounds %struct.osd_object*, %struct.osd_object** %14, i64 %15
  %17 = load %struct.osd_object*, %struct.osd_object** %16, align 8
  store %struct.osd_object* %17, %struct.osd_object** %7, align 8
  %18 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %19 = load %struct.osd_object*, %struct.osd_object** %7, align 8
  %20 = call %struct.TYPE_7__* @prepare_osd_ass(%struct.osd_state* %18, %struct.osd_object* %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %8, align 8
  %21 = load %struct.osd_object*, %struct.osd_object** %7, align 8
  %22 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %37 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %36, i32 0, i32 0
  %38 = call i32 @pthread_mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_7__* @prepare_osd_ass(%struct.osd_state*, %struct.osd_object*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
