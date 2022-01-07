; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-service.c_obs_service_create_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-service.c_obs_service_create_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.obs_service = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.obs_service_info }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.obs_service* }
%struct.obs_service_info = type { i32 (i32, %struct.obs_service.0*)* }
%struct.obs_service.0 = type opaque

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Service '%s' not found\00", align 1
@OBS_OBJ_TYPE_SERVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to create service '%s'!\00", align 1
@obs = common dso_local global %struct.TYPE_9__* null, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"service '%s' (%s) created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_service* (i8*, i8*, i32*, i32*, i32)* @obs_service_create_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_service* @obs_service_create_internal(i8* %0, i8* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.obs_service*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.obs_service_info*, align 8
  %13 = alloca %struct.obs_service*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.obs_service_info* @find_service(i8* %14)
  store %struct.obs_service_info* %15, %struct.obs_service_info** %12, align 8
  %16 = load %struct.obs_service_info*, %struct.obs_service_info** %12, align 8
  %17 = icmp ne %struct.obs_service_info* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @LOG_ERROR, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @blog(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %20)
  store %struct.obs_service* null, %struct.obs_service** %6, align 8
  br label %90

22:                                               ; preds = %5
  %23 = call i8* @bzalloc(i32 24)
  %24 = bitcast i8* %23 to %struct.obs_service*
  store %struct.obs_service* %24, %struct.obs_service** %13, align 8
  %25 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %26 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %25, i32 0, i32 0
  %27 = load i32, i32* @OBS_OBJ_TYPE_SERVICE, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @obs_context_data_init(%struct.TYPE_8__* %26, i32 %27, i32* %28, i8* %29, i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %36 = call i32 @bfree(%struct.obs_service* %35)
  store %struct.obs_service* null, %struct.obs_service** %6, align 8
  br label %90

37:                                               ; preds = %22
  %38 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %39 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %38, i32 0, i32 2
  %40 = load %struct.obs_service_info*, %struct.obs_service_info** %12, align 8
  %41 = bitcast %struct.obs_service_info* %39 to i8*
  %42 = bitcast %struct.obs_service_info* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %44 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.obs_service_info, %struct.obs_service_info* %44, i32 0, i32 0
  %46 = load i32 (i32, %struct.obs_service.0*)*, i32 (i32, %struct.obs_service.0*)** %45, align 8
  %47 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %48 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %52 = bitcast %struct.obs_service* %51 to %struct.obs_service.0*
  %53 = call i32 %46(i32 %50, %struct.obs_service.0* %52)
  %54 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %55 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %58 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %37
  %63 = load i32, i32* @LOG_ERROR, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 (i32, i8*, i8*, ...) @blog(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %62, %37
  %67 = call i8* @bzalloc(i32 4)
  %68 = bitcast i8* %67 to %struct.TYPE_6__*
  %69 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %70 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %69, i32 0, i32 1
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %70, align 8
  %71 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %72 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %73 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store %struct.obs_service* %71, %struct.obs_service** %75, align 8
  %76 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  %77 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @obs, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @obs, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = call i32 @obs_context_data_insert(%struct.TYPE_8__* %77, i32* %80, i32* %83)
  %85 = load i32, i32* @LOG_DEBUG, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 (i32, i8*, i8*, ...) @blog(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %86, i8* %87)
  %89 = load %struct.obs_service*, %struct.obs_service** %13, align 8
  store %struct.obs_service* %89, %struct.obs_service** %6, align 8
  br label %90

90:                                               ; preds = %66, %34, %18
  %91 = load %struct.obs_service*, %struct.obs_service** %6, align 8
  ret %struct.obs_service* %91
}

declare dso_local %struct.obs_service_info* @find_service(i8*) #1

declare dso_local i32 @blog(i32, i8*, i8*, ...) #1

declare dso_local i8* @bzalloc(i32) #1

declare dso_local i32 @obs_context_data_init(%struct.TYPE_8__*, i32, i32*, i8*, i32*, i32) #1

declare dso_local i32 @bfree(%struct.obs_service*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @obs_context_data_insert(%struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
