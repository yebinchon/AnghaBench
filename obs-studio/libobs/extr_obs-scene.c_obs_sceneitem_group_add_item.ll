; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_group_add_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_group_add_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_sceneitem_group_add_item(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = icmp ne %struct.TYPE_17__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = icmp ne %struct.TYPE_17__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %10, %2
  br label %87

19:                                               ; preds = %15
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %5, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %6, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = icmp ne %struct.TYPE_18__* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %87

35:                                               ; preds = %19
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = call i32 @full_lock(%struct.TYPE_18__* %36)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = call i32 @remove_group_transform(%struct.TYPE_17__* %38, %struct.TYPE_17__* %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = call i32 @detach_sceneitem(%struct.TYPE_17__* %41)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = call i32 @full_lock(%struct.TYPE_18__* %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %7, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = icmp ne %struct.TYPE_17__* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %57, %50
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = icmp ne %struct.TYPE_17__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %7, align 8
  br label %51

61:                                               ; preds = %56
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %67, align 8
  br label %72

68:                                               ; preds = %35
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %71, align 8
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = call i32 @apply_group_transform(%struct.TYPE_17__* %78, %struct.TYPE_17__* %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = call i32 @resize_group(%struct.TYPE_17__* %81)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = call i32 @full_unlock(%struct.TYPE_18__* %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = call i32 @full_unlock(%struct.TYPE_18__* %85)
  br label %87

87:                                               ; preds = %72, %34, %18
  ret void
}

declare dso_local i32 @full_lock(%struct.TYPE_18__*) #1

declare dso_local i32 @remove_group_transform(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @detach_sceneitem(%struct.TYPE_17__*) #1

declare dso_local i32 @apply_group_transform(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @resize_group(%struct.TYPE_17__*) #1

declare dso_local i32 @full_unlock(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
