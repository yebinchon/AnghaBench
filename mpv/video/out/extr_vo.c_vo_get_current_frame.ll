; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_get_current_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_get_current_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }
%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @vo_get_current_frame(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  %4 = alloca %struct.mp_image*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 0
  %7 = load %struct.vo_internal*, %struct.vo_internal** %6, align 8
  store %struct.vo_internal* %7, %struct.vo_internal** %3, align 8
  %8 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %9 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %8, i32 0, i32 0
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  store %struct.mp_image* null, %struct.mp_image** %4, align 8
  %11 = load %struct.vo*, %struct.vo** %2, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 0
  %13 = load %struct.vo_internal*, %struct.vo_internal** %12, align 8
  %14 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.vo*, %struct.vo** %2, align 8
  %19 = getelementptr inbounds %struct.vo, %struct.vo* %18, i32 0, i32 0
  %20 = load %struct.vo_internal*, %struct.vo_internal** %19, align 8
  %21 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mp_image* @mp_image_new_ref(i32 %24)
  store %struct.mp_image* %25, %struct.mp_image** %4, align 8
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %28 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_unlock(i32* %28)
  %30 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  ret %struct.mp_image* %30
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.mp_image* @mp_image_new_ref(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
