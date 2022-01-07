; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_save_safe.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_save_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.dstr = type { i8*, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"config_save_safe: invalid temporary extension specified\00", align 1
@CONFIG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@CONFIG_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"config_save_safe: failed to write to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_save_safe(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dstr, align 8
  %9 = alloca %struct.dstr, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = bitcast %struct.dstr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = bitcast %struct.dstr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @LOG_ERROR, align 4
  %25 = call i32 (i32, i8*, ...) @blog(i32 %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @CONFIG_ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %101

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @pthread_mutex_lock(i32* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @dstr_copy(%struct.dstr* %8, i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 46
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 @dstr_cat(%struct.dstr* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %27
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @dstr_cat(%struct.dstr* %8, i8* %42)
  %44 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = call i32 @config_save(%struct.TYPE_4__* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @CONFIG_SUCCESS, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load i32, i32* @LOG_ERROR, align 4
  %58 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i32, i8*, ...) @blog(i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %94

61:                                               ; preds = %41
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @dstr_copy(%struct.dstr* %9, i8* %72)
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 46
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = call i32 @dstr_cat(%struct.dstr* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %69
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @dstr_cat(%struct.dstr* %9, i8* %81)
  br label %83

83:                                               ; preds = %80, %64, %61
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @os_safe_replace(i8* %84, i8* %86, i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @CONFIG_ERROR, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %91, %83
  br label %94

94:                                               ; preds = %93, %56
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = call i32 @pthread_mutex_unlock(i32* %96)
  %98 = call i32 @dstr_free(%struct.dstr* %8)
  %99 = call i32 @dstr_free(%struct.dstr* %9)
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %94, %23
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @blog(i32, i8*, ...) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i32 @config_save(%struct.TYPE_4__*) #2

declare dso_local i64 @os_safe_replace(i8*, i8*, i8*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
