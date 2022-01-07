; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_process_filter_tech_end.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_process_filter_tech_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Draw\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_process_filter_tech_end(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %70

19:                                               ; preds = %5
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = call %struct.TYPE_12__* @obs_filter_get_target(%struct.TYPE_12__* %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %11, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = call %struct.TYPE_12__* @obs_filter_get_parent(%struct.TYPE_12__* %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %12, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %19
  br label %70

30:                                               ; preds = %26
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i8*, i8** %10, align 8
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i8* [ %38, %37 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %39 ]
  store i8* %41, i8** %15, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @can_bypass(%struct.TYPE_12__* %42, %struct.TYPE_12__* %43, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @render_filter_bypass(%struct.TYPE_12__* %51, i32* %52, i8* %53)
  br label %70

55:                                               ; preds = %40
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32* @gs_texrender_get_texture(i32 %58)
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @render_filter_tex(i32* %63, i32* %64, i32 %65, i32 %66, i8* %67)
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %18, %29, %69, %50
  ret void
}

declare dso_local %struct.TYPE_12__* @obs_filter_get_target(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @obs_filter_get_parent(%struct.TYPE_12__*) #1

declare dso_local i64 @can_bypass(%struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @render_filter_bypass(%struct.TYPE_12__*, i32*, i8*) #1

declare dso_local i32* @gs_texrender_get_texture(i32) #1

declare dso_local i32 @render_filter_tex(i32*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
