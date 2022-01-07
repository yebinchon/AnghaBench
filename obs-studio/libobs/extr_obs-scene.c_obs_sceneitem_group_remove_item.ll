; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_group_remove_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_group_remove_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_sceneitem_group_remove_item(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %9, %2
  br label %71

18:                                               ; preds = %12
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %5, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %6, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = call i32 @full_lock(%struct.TYPE_12__* %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = call i32 @full_lock(%struct.TYPE_12__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = call i32 @remove_group_transform(%struct.TYPE_11__* %29, %struct.TYPE_11__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = call i32 @detach_sceneitem(%struct.TYPE_11__* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %18
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %48, align 8
  br label %55

49:                                               ; preds = %18
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %54, align 8
  br label %55

55:                                               ; preds = %49, %38
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = call i32 @resize_group(%struct.TYPE_11__* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = call i32 @full_unlock(%struct.TYPE_12__* %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = call i32 @full_unlock(%struct.TYPE_12__* %69)
  br label %71

71:                                               ; preds = %55, %17
  ret void
}

declare dso_local i32 @full_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @remove_group_transform(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @detach_sceneitem(%struct.TYPE_11__*) #1

declare dso_local i32 @resize_group(%struct.TYPE_11__*) #1

declare dso_local i32 @full_unlock(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
