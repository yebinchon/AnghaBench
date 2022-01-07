; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_rtmp_common_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-common.c_rtmp_common_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_common = type { i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"recommended\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"rtmp_output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @rtmp_common_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmp_common_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rtmp_common*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.rtmp_common*
  store %struct.rtmp_common* %12, %struct.rtmp_common** %5, align 8
  %13 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %14 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bfree(i32* %15)
  %17 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %18 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @bfree(i32* %19)
  %21 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %22 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @bfree(i32* %23)
  %25 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %26 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @bfree(i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @obs_data_get_string(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = call i8* @bstrdup(i8* %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %34 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i8* @obs_data_get_string(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i8* @bstrdup(i8* %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %40 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @obs_data_get_string(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i8* @bstrdup(i8* %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %46 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %48 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = call i32* (...) @open_services_file()
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %97

52:                                               ; preds = %2
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %55 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32* @find_service(i32* %53, i32* %56, i8** %7)
  store i32* %57, i32** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %62 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @bfree(i32* %63)
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @bstrdup(i8* %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %69 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %60, %52
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %96

73:                                               ; preds = %70
  %74 = load i32*, i32** %8, align 8
  %75 = call i32* @json_object_get(i32* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = call i64 @json_is_object(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load i32*, i32** %9, align 8
  %81 = call i8* @get_string_val(i32* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i8*, i8** %10, align 8
  %86 = call i8* @bstrdup(i8* %85)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %89 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %88, i32 0, i32 0
  store i32* %87, i32** %89, align 8
  br label %90

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @ensure_valid_url(%struct.rtmp_common* %92, i32* %93, i32* %94)
  br label %96

96:                                               ; preds = %91, %70
  br label %97

97:                                               ; preds = %96, %2
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @json_decref(i32* %98)
  %100 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %101 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %97
  %105 = call i8* @bstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.rtmp_common*, %struct.rtmp_common** %5, align 8
  %108 = getelementptr inbounds %struct.rtmp_common, %struct.rtmp_common* %107, i32 0, i32 0
  store i32* %106, i32** %108, align 8
  br label %109

109:                                              ; preds = %104, %97
  ret void
}

declare dso_local i32 @bfree(i32*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i32* @open_services_file(...) #1

declare dso_local i32* @find_service(i32*, i32*, i8**) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i64 @json_is_object(i32*) #1

declare dso_local i8* @get_string_val(i32*, i8*) #1

declare dso_local i32 @ensure_valid_url(%struct.rtmp_common*, i32*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
