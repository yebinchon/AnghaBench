; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_enum_source_full_tree_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_enum_source_full_tree_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32 (i64, {}*, %struct.source_enum_data*)*, i64 }
%struct.source_enum_data = type { i32, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32)* }

@OBS_SOURCE_TYPE_TRANSITION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)* @enum_source_full_tree_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_source_full_tree_callback(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.source_enum_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)*, align 8
  %10 = alloca void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.source_enum_data*
  store %struct.source_enum_data* %12, %struct.source_enum_data** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OBS_SOURCE_TYPE_TRANSITION, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @obs_transition_enum_sources(%struct.TYPE_17__* %23, void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)* @enum_source_full_tree_callback, i8* %24)
  br label %26

26:                                               ; preds = %22, %3
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32 (i64, {}*, %struct.source_enum_data*)*, i32 (i64, {}*, %struct.source_enum_data*)** %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.source_enum_data*, %struct.source_enum_data** %7, align 8
  store void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)* @enum_source_full_tree_callback, void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)** %9, align 8
  %48 = load void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)*, void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)** %9, align 8
  %49 = bitcast void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)* %48 to {}*
  %50 = call i32 %42(i64 %46, {}* %49, %struct.source_enum_data* %47)
  br label %51

51:                                               ; preds = %38, %32
  br label %79

52:                                               ; preds = %26
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32 (i64, {}*, %struct.source_enum_data*)*, i32 (i64, {}*, %struct.source_enum_data*)** %55, align 8
  %57 = icmp ne i32 (i64, {}*, %struct.source_enum_data*)* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32 (i64, {}*, %struct.source_enum_data*)*, i32 (i64, {}*, %struct.source_enum_data*)** %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.source_enum_data*, %struct.source_enum_data** %7, align 8
  store void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)* @enum_source_full_tree_callback, void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)** %10, align 8
  %74 = load void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)*, void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)** %10, align 8
  %75 = bitcast void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)* %74 to {}*
  %76 = call i32 %68(i64 %72, {}* %75, %struct.source_enum_data* %73)
  br label %77

77:                                               ; preds = %64, %58
  br label %78

78:                                               ; preds = %77, %52
  br label %79

79:                                               ; preds = %78, %51
  %80 = load %struct.source_enum_data*, %struct.source_enum_data** %7, align 8
  %81 = getelementptr inbounds %struct.source_enum_data, %struct.source_enum_data* %80, i32 0, i32 1
  %82 = load i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, i32)** %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = load %struct.source_enum_data*, %struct.source_enum_data** %7, align 8
  %86 = getelementptr inbounds %struct.source_enum_data, %struct.source_enum_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %82(%struct.TYPE_17__* %83, %struct.TYPE_17__* %84, i32 %87)
  ret void
}

declare dso_local i32 @obs_transition_enum_sources(%struct.TYPE_17__*, void (%struct.TYPE_17__*, %struct.TYPE_17__*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
