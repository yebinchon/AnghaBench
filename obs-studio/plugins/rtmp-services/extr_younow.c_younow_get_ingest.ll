; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_younow.c_younow_get_ingest.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_younow.c_younow_get_ingest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.younow_mem_struct = type { i8*, i64 }
%struct.dstr = type { i8* }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"younow_get_ingest: delimiter not found in stream key\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYHOST = common dso_local global i32 0, align 4
@CURLOPT_TIMEOUT = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@younow_write_cb = common dso_local global i8* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"younow_get_ingest: curl_easy_perform() failed: %s\00", align 1
@CURLINFO_RESPONSE_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"younow_get_ingest: curl_easy_perform() returned code: %ld\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"younow_get_ingest: curl_easy_perform() returned empty response\00", align 1
@current_ingest = common dso_local global i8* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"younow_get_ingest: returning ingest: %s\00", align 1
@CURLOPT_SSL_ENABLE_ALPN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @younow_get_ingest(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.younow_mem_struct, align 8
  %9 = alloca %struct.dstr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 95)
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @LOG_WARNING, align 4
  %18 = call i32 (i32, i8*, ...) @blog(i32 %17, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %3, align 8
  br label %121

20:                                               ; preds = %2
  %21 = call i32* (...) @curl_easy_init()
  store i32* %21, i32** %6, align 8
  %22 = call i8* @malloc(i32 1)
  %23 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %8, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %8, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = call i32 @dstr_init(%struct.dstr* %9)
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @dstr_copy(%struct.dstr* %9, i8* %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @dstr_ncat(%struct.dstr* %9, i8* %28, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @CURLOPT_URL, align 4
  %38 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @curl_easy_setopt(i32* %36, i32 %37, i8* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %43 = call i32 @curl_easy_setopt(i32* %41, i32 %42, i8* inttoptr (i64 1 to i8*))
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %46 = call i32 @curl_easy_setopt(i32* %44, i32 %45, i8* inttoptr (i64 2 to i8*))
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @CURLOPT_TIMEOUT, align 4
  %49 = call i32 @curl_easy_setopt(i32* %47, i32 %48, i8* inttoptr (i64 3 to i8*))
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %52 = load i8*, i8** @younow_write_cb, align 8
  %53 = call i32 @curl_easy_setopt(i32* %50, i32 %51, i8* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %56 = bitcast %struct.younow_mem_struct* %8 to i8*
  %57 = call i32 @curl_easy_setopt(i32* %54, i32 %55, i8* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @curl_easy_perform(i32* %58)
  store i64 %59, i64* %7, align 8
  %60 = call i32 @dstr_free(%struct.dstr* %9)
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @CURLE_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %20
  %65 = load i32, i32* @LOG_WARNING, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i8* @curl_easy_strerror(i64 %66)
  %68 = call i32 (i32, i8*, ...) @blog(i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @curl_easy_cleanup(i32* %69)
  %71 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %8, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8*, i8** %4, align 8
  store i8* %74, i8** %3, align 8
  br label %121

75:                                               ; preds = %20
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @CURLINFO_RESPONSE_CODE, align 4
  %78 = call i32 @curl_easy_getinfo(i32* %76, i32 %77, i64* %10)
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 200
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32, i32* @LOG_WARNING, align 4
  %83 = load i64, i64* %10, align 8
  %84 = call i32 (i32, i8*, ...) @blog(i32 %82, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @curl_easy_cleanup(i32* %85)
  %87 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %8, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8*, i8** %4, align 8
  store i8* %90, i8** %3, align 8
  br label %121

91:                                               ; preds = %75
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @curl_easy_cleanup(i32* %92)
  %94 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %8, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i32, i32* @LOG_WARNING, align 4
  %99 = call i32 (i32, i8*, ...) @blog(i32 %98, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %100 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %8, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %4, align 8
  store i8* %103, i8** %3, align 8
  br label %121

104:                                              ; preds = %91
  %105 = load i8*, i8** @current_ingest, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** @current_ingest, align 8
  %109 = call i32 @free(i8* %108)
  store i8* null, i8** @current_ingest, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %8, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @strdup(i8* %112)
  store i8* %113, i8** @current_ingest, align 8
  %114 = getelementptr inbounds %struct.younow_mem_struct, %struct.younow_mem_struct* %8, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i32, i32* @LOG_INFO, align 4
  %118 = load i8*, i8** @current_ingest, align 8
  %119 = call i32 (i32, i8*, ...) @blog(i32 %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %118)
  %120 = load i8*, i8** @current_ingest, align 8
  store i8* %120, i8** %3, align 8
  br label %121

121:                                              ; preds = %110, %97, %81, %64, %16
  %122 = load i8*, i8** %3, align 8
  ret i8* %122
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_ncat(%struct.dstr*, i8*, i32) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, i64*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
