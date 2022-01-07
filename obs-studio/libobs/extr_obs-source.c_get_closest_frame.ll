; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_get_closest_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_get_closest_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_frame = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.obs_source_frame**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_source_frame* (%struct.TYPE_5__*, i32)* @get_closest_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_source_frame* @get_closest_frame(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.obs_source_frame*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.obs_source_frame*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.obs_source_frame* null, %struct.obs_source_frame** %3, align 8
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @ready_async_frame(%struct.TYPE_5__* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18, %13
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.obs_source_frame**, %struct.obs_source_frame*** %26, align 8
  %28 = getelementptr inbounds %struct.obs_source_frame*, %struct.obs_source_frame** %27, i64 0
  %29 = load %struct.obs_source_frame*, %struct.obs_source_frame** %28, align 8
  store %struct.obs_source_frame* %29, %struct.obs_source_frame** %6, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = bitcast %struct.TYPE_6__* %31 to { %struct.obs_source_frame**, i32 }*
  %33 = getelementptr inbounds { %struct.obs_source_frame**, i32 }, { %struct.obs_source_frame**, i32 }* %32, i32 0, i32 0
  %34 = load %struct.obs_source_frame**, %struct.obs_source_frame*** %33, align 8
  %35 = getelementptr inbounds { %struct.obs_source_frame**, i32 }, { %struct.obs_source_frame**, i32 }* %32, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @da_erase(%struct.obs_source_frame** %34, i32 %36, i32 0)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %23
  %43 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %44 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %23
  %49 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  store %struct.obs_source_frame* %49, %struct.obs_source_frame** %3, align 8
  br label %51

50:                                               ; preds = %18
  store %struct.obs_source_frame* null, %struct.obs_source_frame** %3, align 8
  br label %51

51:                                               ; preds = %50, %48, %12
  %52 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  ret %struct.obs_source_frame* %52
}

declare dso_local i64 @ready_async_frame(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @da_erase(%struct.obs_source_frame**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
