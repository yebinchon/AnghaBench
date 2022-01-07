; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_obs_transition_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i32, i8*, i8*, i8*, %struct.TYPE_13__**, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }

@.str = private unnamed_addr constant [20 x i8] c"transition_source_a\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"transition_alignment\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"transition_mode\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"transition_scale_type\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"transition_cx\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"transition_cy\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"Cannot set transition '%s' to source '%s' due to infinite recursion\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Failed to find source '%s' for transition '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_transition_load(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @obs_data_get_string(i32* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @obs_data_get_int(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i64 %15, i64* %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @obs_data_get_int(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i64 %17, i64* %7, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @obs_data_get_int(i32* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i64 %19, i64* %8, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @obs_data_get_int(i32* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i64 %21, i64* %9, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @obs_data_get_int(i32* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i64 %23, i64* %10, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.TYPE_13__* @obs_get_source_by_name(i8* %27)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %11, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %30 = icmp ne %struct.TYPE_13__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %34 = call i32 @obs_source_add_active_child(%struct.TYPE_13__* %32, %struct.TYPE_13__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @LOG_WARNING, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @blog(i32 %37, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %45 = call i32 @obs_source_release(%struct.TYPE_13__* %44)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  br label %46

46:                                               ; preds = %36, %31
  br label %55

47:                                               ; preds = %26
  %48 = load i32, i32* @LOG_WARNING, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @blog(i32 %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %49, i8* %53)
  br label %55

55:                                               ; preds = %47, %46
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = call i32 @lock_transition(%struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %62, i64 0
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 1, i32* %67, align 4
  %68 = load i64, i64* %6, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %7, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* %8, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load i64, i64* %9, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load i64, i64* %10, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = call i32 @unlock_transition(%struct.TYPE_13__* %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = call i32 @recalculate_transition_size(%struct.TYPE_13__* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = call i32 @recalculate_transition_matrices(%struct.TYPE_13__* %92)
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local %struct.TYPE_13__* @obs_get_source_by_name(i8*) #1

declare dso_local i32 @obs_source_add_active_child(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @blog(i32, i8*, i8*, i8*) #1

declare dso_local i32 @obs_source_release(%struct.TYPE_13__*) #1

declare dso_local i32 @lock_transition(%struct.TYPE_13__*) #1

declare dso_local i32 @unlock_transition(%struct.TYPE_13__*) #1

declare dso_local i32 @recalculate_transition_size(%struct.TYPE_13__*) #1

declare dso_local i32 @recalculate_transition_matrices(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
