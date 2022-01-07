; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@data = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pixelformat\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"dv_timing\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"color_range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @v4l2_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @V4L2_DATA(i8* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %8 = call i32 @v4l2_terminate(%struct.TYPE_5__* %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @bfree(i64 %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @obs_data_get_string(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = call i64 @bstrdup(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 7
  store i64 %21, i64* %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @obs_data_get_int(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @obs_data_get_int(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @obs_data_get_int(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @obs_data_get_int(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i8* @obs_data_get_int(i32* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @obs_data_get_int(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i8* @obs_data_get_int(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @v4l2_update_source_flags(%struct.TYPE_5__* %52, i32* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @data, align 8
  %56 = call i32 @v4l2_init(%struct.TYPE_5__* %55)
  ret void
}

declare dso_local i32 @V4L2_DATA(i8*) #1

declare dso_local i32 @v4l2_terminate(%struct.TYPE_5__*) #1

declare dso_local i32 @bfree(i64) #1

declare dso_local i64 @bstrdup(i32) #1

declare dso_local i32 @obs_data_get_string(i32*, i8*) #1

declare dso_local i8* @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @v4l2_update_source_flags(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @v4l2_init(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
