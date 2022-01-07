; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_twitch.c_load_ingests.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_twitch.c_load_ingests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.ingest = type { i32, i32, i32 }
%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"ingests\00", align 1
@cur_ingests = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"url_template\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"deprecated\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"depracated\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"/{stream_key}\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"twitch_ingests.json\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"twitch_ingests.new.json\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @load_ingests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_ingests(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ingest, align 4
  %16 = alloca %struct.dstr, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32* @json_loads(i8* %19, i32 0, i32* null)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %112

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @json_object_get(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %112

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @json_array_size(i32* %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ule i64 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cur_ingests, i32 0, i32 0), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %112

39:                                               ; preds = %35, %30
  %40 = call i32 (...) @free_ingests()
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %86, %39
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %89

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32* @json_array_get(i32* %46, i64 %47)
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i32* @json_object_get(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32* @json_object_get(i32* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %52, i32** %14, align 8
  %53 = bitcast %struct.ingest* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %53, i8 0, i64 12, i1 false)
  %54 = bitcast %struct.dstr* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %54, i8 0, i64 8, i1 false)
  %55 = load i32*, i32** %13, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32*, i32** %14, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57, %45
  br label %86

61:                                               ; preds = %57
  %62 = load i32*, i32** %14, align 8
  %63 = call i8* @json_string_value(i32* %62)
  store i8* %63, i8** %17, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i8* @json_string_value(i32* %64)
  store i8* %65, i8** %18, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = call i32* @strstr(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i32* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = load i8*, i8** %18, align 8
  %71 = call i32* @strstr(i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %61
  br label %86

74:                                               ; preds = %69
  %75 = load i8*, i8** %17, align 8
  %76 = call i32 @dstr_copy(%struct.dstr* %16, i8* %75)
  %77 = call i32 @dstr_replace(%struct.dstr* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i8*, i8** %18, align 8
  %79 = call i32 @bstrdup(i8* %78)
  %80 = getelementptr inbounds %struct.ingest, %struct.ingest* %15, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.dstr, %struct.dstr* %16, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.ingest, %struct.ingest* %15, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cur_ingests, i32 0, i32 0), align 8
  %85 = call i32 @da_push_back(i64 %84, %struct.ingest* %15)
  br label %86

86:                                               ; preds = %74, %73, %60
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %41

89:                                               ; preds = %41
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cur_ingests, i32 0, i32 0), align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %112

93:                                               ; preds = %89
  store i32 1, i32* %7, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  br label %112

97:                                               ; preds = %93
  %98 = call i8* @obs_module_config_path(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i8* %98, i8** %8, align 8
  %99 = call i8* @obs_module_config_path(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  store i8* %99, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = call i32 @os_quick_write_utf8_file(i8* %100, i8* %101, i32 %103, i32 0)
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @os_safe_replace(i8* %105, i8* %106, i32* null)
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @bfree(i8* %108)
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @bfree(i8* %110)
  br label %112

112:                                              ; preds = %97, %96, %92, %38, %29, %23
  %113 = load i32*, i32** %5, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @json_decref(i32* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32* @json_loads(i8*, i32, i32*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i64 @json_array_size(i32*) #1

declare dso_local i32 @free_ingests(...) #1

declare dso_local i32* @json_array_get(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @json_string_value(i32*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #1

declare dso_local i32 @bstrdup(i8*) #1

declare dso_local i32 @da_push_back(i64, %struct.ingest*) #1

declare dso_local i8* @obs_module_config_path(i8*) #1

declare dso_local i32 @os_quick_write_utf8_file(i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @os_safe_replace(i8*, i8*, i32*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
