; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_enum_full_tree.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_enum_full_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 (i32, i32, %struct.source_enum_data*)*, i32 (i32, i32, %struct.source_enum_data*)* }
%struct.source_enum_data = type { i8*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"obs_source_enum_active_tree\00", align 1
@OBS_SOURCE_TYPE_TRANSITION = common dso_local global i64 0, align 8
@enum_source_full_tree_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i8*)* @obs_source_enum_full_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_source_enum_full_tree(%struct.TYPE_11__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.source_enum_data, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds %struct.source_enum_data, %struct.source_enum_data* %7, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %9, align 8
  %13 = getelementptr inbounds %struct.source_enum_data, %struct.source_enum_data* %7, i32 0, i32 1
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %13, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = call i32 @data_valid(%struct.TYPE_11__* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %88

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OBS_SOURCE_TYPE_TRANSITION, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %20
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32 (i32, i32, %struct.source_enum_data*)*, i32 (i32, i32, %struct.source_enum_data*)** %33, align 8
  %35 = icmp ne i32 (i32, i32, %struct.source_enum_data*)* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %88

37:                                               ; preds = %30, %20
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = call i32 @obs_source_addref(%struct.TYPE_11__* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OBS_SOURCE_TYPE_TRANSITION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = load i32, i32* @enum_source_full_tree_callback, align 4
  %49 = call i32 @obs_transition_enum_sources(%struct.TYPE_11__* %47, i32 %48, %struct.source_enum_data* %7)
  br label %50

50:                                               ; preds = %46, %37
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32 (i32, i32, %struct.source_enum_data*)*, i32 (i32, i32, %struct.source_enum_data*)** %53, align 8
  %55 = icmp ne i32 (i32, i32, %struct.source_enum_data*)* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32 (i32, i32, %struct.source_enum_data*)*, i32 (i32, i32, %struct.source_enum_data*)** %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @enum_source_full_tree_callback, align 4
  %66 = call i32 %60(i32 %64, i32 %65, %struct.source_enum_data* %7)
  br label %85

67:                                               ; preds = %50
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32 (i32, i32, %struct.source_enum_data*)*, i32 (i32, i32, %struct.source_enum_data*)** %70, align 8
  %72 = icmp ne i32 (i32, i32, %struct.source_enum_data*)* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32 (i32, i32, %struct.source_enum_data*)*, i32 (i32, i32, %struct.source_enum_data*)** %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @enum_source_full_tree_callback, align 4
  %83 = call i32 %77(i32 %81, i32 %82, %struct.source_enum_data* %7)
  br label %84

84:                                               ; preds = %73, %67
  br label %85

85:                                               ; preds = %84, %56
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = call i32 @obs_source_release(%struct.TYPE_11__* %86)
  br label %88

88:                                               ; preds = %85, %36, %19
  ret void
}

declare dso_local i32 @data_valid(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @obs_source_addref(%struct.TYPE_11__*) #1

declare dso_local i32 @obs_transition_enum_sources(%struct.TYPE_11__*, i32, %struct.source_enum_data*) #1

declare dso_local i32 @obs_source_release(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
