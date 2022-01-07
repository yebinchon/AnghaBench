; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_open_module.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_open_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.obs_module = type { i8*, i8*, i32 (i32)*, i32 (i32*)*, i32*, i8*, i32, i32, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@MODULE_ERROR = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"---------------------------------\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Module '%s' not loaded\00", align 1
@MODULE_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@MODULE_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Loading module: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_open_module(i32** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.obs_module, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = bitcast %struct.obs_module* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 64, i1 false)
  %11 = load i32**, i32*** %5, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @MODULE_ERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %107

21:                                               ; preds = %16
  %22 = load i32, i32* @LOG_DEBUG, align 4
  %23 = call i32 (i32, i8*, ...) @blog(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @os_dlopen(i8* %24)
  %26 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 7
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @LOG_WARNING, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i32, i8*, ...) @blog(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @MODULE_FILE_NOT_FOUND, align 4
  store i32 %34, i32* %4, align 4
  br label %107

35:                                               ; preds = %21
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @load_module_exports(%struct.obs_module* %8, i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MODULE_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %107

43:                                               ; preds = %35
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @bstrdup(i8* %44)
  %46 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strrchr(i8* %48, i8 signext 47)
  %50 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  br label %61

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i8* [ %56, %54 ], [ %60, %57 ]
  %63 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @get_module_name(i8* %65)
  %67 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 6
  store i32 %66, i32* %67, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i8* @bstrdup(i8* %68)
  %70 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 5
  store i8* %69, i8** %70, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 4
  store i32* %73, i32** %74, align 8
  %75 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %61
  %79 = load i32, i32* @LOG_DEBUG, align 4
  %80 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @blog(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %78, %61
  %84 = call i32* @bmemdup(%struct.obs_module* %8, i32 64)
  %85 = load i32**, i32*** %5, align 8
  store i32* %84, i32** %85, align 8
  %86 = load i32**, i32*** %5, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  %90 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 3
  %91 = load i32 (i32*)*, i32 (i32*)** %90, align 8
  %92 = load i32**, i32*** %5, align 8
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 %91(i32* %93)
  %95 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 2
  %96 = load i32 (i32)*, i32 (i32)** %95, align 8
  %97 = icmp ne i32 (i32)* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %83
  %99 = getelementptr inbounds %struct.obs_module, %struct.obs_module* %8, i32 0, i32 2
  %100 = load i32 (i32)*, i32 (i32)** %99, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %100(i32 %103)
  br label %105

105:                                              ; preds = %98, %83
  %106 = load i32, i32* @MODULE_SUCCESS, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %41, %30, %19
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @blog(i32, i8*, ...) #2

declare dso_local i32 @os_dlopen(i8*) #2

declare dso_local i32 @load_module_exports(%struct.obs_module*, i8*) #2

declare dso_local i8* @bstrdup(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @get_module_name(i8*) #2

declare dso_local i32* @bmemdup(%struct.obs_module*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
