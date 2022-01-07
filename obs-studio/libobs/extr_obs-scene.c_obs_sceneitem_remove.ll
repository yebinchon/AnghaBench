; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_remove.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_sceneitem_remove(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = icmp ne %struct.TYPE_10__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = call i32 @full_lock(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %7
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call i32 @full_unlock(%struct.TYPE_11__* %21)
  br label %23

23:                                               ; preds = %20, %17
  br label %47

24:                                               ; preds = %7
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = call i32 @set_visibility(%struct.TYPE_10__* %37, i32 0)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = call i32 @signal_item_remove(%struct.TYPE_10__* %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = call i32 @detach_sceneitem(%struct.TYPE_10__* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = call i32 @full_unlock(%struct.TYPE_11__* %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = call i32 @obs_sceneitem_release(%struct.TYPE_10__* %45)
  br label %47

47:                                               ; preds = %24, %23, %6
  ret void
}

declare dso_local i32 @full_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @full_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_visibility(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @signal_item_remove(%struct.TYPE_10__*) #1

declare dso_local i32 @detach_sceneitem(%struct.TYPE_10__*) #1

declare dso_local i32 @obs_sceneitem_release(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
