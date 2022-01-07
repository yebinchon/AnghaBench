; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_enum_source_active_tree_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_enum_source_active_tree_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 (i64, {}*, %struct.source_enum_data*)* }
%struct.source_enum_data = type { i32, i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, i32)* }

@OBS_SOURCE_TYPE_TRANSITION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_15__*, i8*)* @enum_source_active_tree_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_source_active_tree_callback(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.source_enum_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.TYPE_15__*, %struct.TYPE_15__*, i8*)*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.source_enum_data*
  store %struct.source_enum_data* %11, %struct.source_enum_data** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OBS_SOURCE_TYPE_TRANSITION, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @obs_transition_enum_sources(%struct.TYPE_15__* %22, void (%struct.TYPE_15__*, %struct.TYPE_15__*, i8*)* @enum_source_active_tree_callback, i8* %23)
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32 (i64, {}*, %struct.source_enum_data*)*, i32 (i64, {}*, %struct.source_enum_data*)** %28, align 8
  %30 = icmp ne i32 (i64, {}*, %struct.source_enum_data*)* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i32 (i64, {}*, %struct.source_enum_data*)*, i32 (i64, {}*, %struct.source_enum_data*)** %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.source_enum_data*, %struct.source_enum_data** %7, align 8
  store void (%struct.TYPE_15__*, %struct.TYPE_15__*, i8*)* @enum_source_active_tree_callback, void (%struct.TYPE_15__*, %struct.TYPE_15__*, i8*)** %9, align 8
  %47 = load void (%struct.TYPE_15__*, %struct.TYPE_15__*, i8*)*, void (%struct.TYPE_15__*, %struct.TYPE_15__*, i8*)** %9, align 8
  %48 = bitcast void (%struct.TYPE_15__*, %struct.TYPE_15__*, i8*)* %47 to {}*
  %49 = call i32 %41(i64 %45, {}* %48, %struct.source_enum_data* %46)
  br label %50

50:                                               ; preds = %37, %31
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.source_enum_data*, %struct.source_enum_data** %7, align 8
  %53 = getelementptr inbounds %struct.source_enum_data, %struct.source_enum_data* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, i32)** %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = load %struct.source_enum_data*, %struct.source_enum_data** %7, align 8
  %58 = getelementptr inbounds %struct.source_enum_data, %struct.source_enum_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %54(%struct.TYPE_15__* %55, %struct.TYPE_15__* %56, i32 %59)
  ret void
}

declare dso_local i32 @obs_transition_enum_sources(%struct.TYPE_15__*, void (%struct.TYPE_15__*, %struct.TYPE_15__*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
