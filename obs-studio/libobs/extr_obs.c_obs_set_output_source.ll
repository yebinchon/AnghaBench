; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_set_output_source.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_set_output_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.obs_view }
%struct.obs_view = type { i32, %struct.obs_source** }
%struct.obs_source = type { i32 }
%struct.calldata = type { i32 }

@MAX_CHANNELS = common dso_local global i64 0, align 8
@obs = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"prev_source\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"channel_change\00", align 1
@MAIN_VIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_set_output_source(i64 %0, %struct.obs_source* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.obs_source*, align 8
  %5 = alloca %struct.obs_source*, align 8
  %6 = alloca %struct.obs_view*, align 8
  %7 = alloca %struct.calldata, align 4
  store i64 %0, i64* %3, align 8
  store %struct.obs_source* %1, %struct.obs_source** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @MAX_CHANNELS, align 8
  %10 = icmp ult i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %73

16:                                               ; preds = %2
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @MAX_CHANNELS, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %73

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.obs_view* %24, %struct.obs_view** %6, align 8
  %25 = bitcast %struct.calldata* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = load %struct.obs_view*, %struct.obs_view** %6, align 8
  %27 = getelementptr inbounds %struct.obs_view, %struct.obs_view* %26, i32 0, i32 0
  %28 = call i32 @pthread_mutex_lock(i32* %27)
  %29 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %30 = call i32 @obs_source_addref(%struct.obs_source* %29)
  %31 = load %struct.obs_view*, %struct.obs_view** %6, align 8
  %32 = getelementptr inbounds %struct.obs_view, %struct.obs_view* %31, i32 0, i32 1
  %33 = load %struct.obs_source**, %struct.obs_source*** %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %33, i64 %34
  %36 = load %struct.obs_source*, %struct.obs_source** %35, align 8
  store %struct.obs_source* %36, %struct.obs_source** %5, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @calldata_set_int(%struct.calldata* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %40 = call i32 @calldata_set_ptr(%struct.calldata* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.obs_source* %39)
  %41 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %42 = call i32 @calldata_set_ptr(%struct.calldata* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.obs_source* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @signal_handler_signal(i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), %struct.calldata* %7)
  %47 = call i32 @calldata_get_ptr(%struct.calldata* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.obs_source** %4)
  %48 = call i32 @calldata_free(%struct.calldata* %7)
  %49 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %50 = load %struct.obs_view*, %struct.obs_view** %6, align 8
  %51 = getelementptr inbounds %struct.obs_view, %struct.obs_view* %50, i32 0, i32 1
  %52 = load %struct.obs_source**, %struct.obs_source*** %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %52, i64 %53
  store %struct.obs_source* %49, %struct.obs_source** %54, align 8
  %55 = load %struct.obs_view*, %struct.obs_view** %6, align 8
  %56 = getelementptr inbounds %struct.obs_view, %struct.obs_view* %55, i32 0, i32 0
  %57 = call i32 @pthread_mutex_unlock(i32* %56)
  %58 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %59 = icmp ne %struct.obs_source* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %21
  %61 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %62 = load i32, i32* @MAIN_VIEW, align 4
  %63 = call i32 @obs_source_activate(%struct.obs_source* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %21
  %65 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %66 = icmp ne %struct.obs_source* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %69 = load i32, i32* @MAIN_VIEW, align 4
  %70 = call i32 @obs_source_deactivate(%struct.obs_source* %68, i32 %69)
  %71 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %72 = call i32 @obs_source_release(%struct.obs_source* %71)
  br label %73

73:                                               ; preds = %15, %20, %67, %64
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @obs_source_addref(%struct.obs_source*) #1

declare dso_local i32 @calldata_set_int(%struct.calldata*, i8*, i64) #1

declare dso_local i32 @calldata_set_ptr(%struct.calldata*, i8*, %struct.obs_source*) #1

declare dso_local i32 @signal_handler_signal(i32, i8*, %struct.calldata*) #1

declare dso_local i32 @calldata_get_ptr(%struct.calldata*, i8*, %struct.obs_source**) #1

declare dso_local i32 @calldata_free(%struct.calldata*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @obs_source_activate(%struct.obs_source*, i32) #1

declare dso_local i32 @obs_source_deactivate(%struct.obs_source*, i32) #1

declare dso_local i32 @obs_source_release(%struct.obs_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
