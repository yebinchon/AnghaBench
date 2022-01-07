; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_init_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_init_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_info = type { i8*, i8*, i32, i32, i8*, i32, i8*, i32 }
%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Could not initialize Curl\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"package.json\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"meta.json\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"etag\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"If-None-Match: \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"User-Agent: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.update_info*)* @init_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_update(%struct.update_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.update_info*, align 8
  %4 = alloca %struct.dstr, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dstr, align 4
  store %struct.update_info* %0, %struct.update_info** %3, align 8
  %8 = bitcast %struct.dstr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = call i32 (...) @curl_easy_init()
  %10 = load %struct.update_info*, %struct.update_info** %3, align 8
  %11 = getelementptr inbounds %struct.update_info, %struct.update_info* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load %struct.update_info*, %struct.update_info** %3, align 8
  %13 = getelementptr inbounds %struct.update_info, %struct.update_info* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %79

18:                                               ; preds = %1
  %19 = load %struct.update_info*, %struct.update_info** %3, align 8
  %20 = getelementptr inbounds %struct.update_info, %struct.update_info* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @get_package(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.update_info*, %struct.update_info** %3, align 8
  %24 = getelementptr inbounds %struct.update_info, %struct.update_info* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load %struct.update_info*, %struct.update_info** %3, align 8
  %26 = getelementptr inbounds %struct.update_info, %struct.update_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @get_package(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.update_info*, %struct.update_info** %3, align 8
  %30 = getelementptr inbounds %struct.update_info, %struct.update_info* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load %struct.update_info*, %struct.update_info** %3, align 8
  %32 = getelementptr inbounds %struct.update_info, %struct.update_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @get_package(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %18
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @obs_data_get_string(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %44, i8 0, i64 8, i1 false)
  %45 = call i32 @dstr_copy(%struct.dstr* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @dstr_cat(%struct.dstr* %7, i8* %46)
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @bstrdup(i8* %48)
  %50 = load %struct.update_info*, %struct.update_info** %3, align 8
  %51 = getelementptr inbounds %struct.update_info, %struct.update_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.update_info*, %struct.update_info** %3, align 8
  %53 = getelementptr inbounds %struct.update_info, %struct.update_info* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @curl_slist_append(i8* %54, i32 %56)
  %58 = load %struct.update_info*, %struct.update_info** %3, align 8
  %59 = getelementptr inbounds %struct.update_info, %struct.update_info* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = call i32 @dstr_free(%struct.dstr* %7)
  br label %61

61:                                               ; preds = %43, %38
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @obs_data_release(i32* %62)
  br label %64

64:                                               ; preds = %61, %18
  %65 = call i32 @dstr_copy(%struct.dstr* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.update_info*, %struct.update_info** %3, align 8
  %67 = getelementptr inbounds %struct.update_info, %struct.update_info* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @dstr_cat(%struct.dstr* %4, i8* %68)
  %70 = load %struct.update_info*, %struct.update_info** %3, align 8
  %71 = getelementptr inbounds %struct.update_info, %struct.update_info* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @curl_slist_append(i8* %72, i32 %74)
  %76 = load %struct.update_info*, %struct.update_info** %3, align 8
  %77 = getelementptr inbounds %struct.update_info, %struct.update_info* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = call i32 @dstr_free(%struct.dstr* %4)
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %64, %16
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @curl_easy_init(...) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i8* @get_package(i32, i8*) #2

declare dso_local i8* @obs_data_get_string(i32*, i8*) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i32 @bstrdup(i8*) #2

declare dso_local i8* @curl_slist_append(i8*, i32) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i32 @obs_data_release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
