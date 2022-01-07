; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_module_load_locale.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_obs_module_load_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dstr = type { i32, i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"obs_module_load_locale: Invalid parameters\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"locale/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".ini\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to load '%s' text for module: '%s'\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/locale/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_module_load_locale(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dstr, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = bitcast %struct.dstr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  store i32* null, i32** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %14, %3
  %21 = load i32, i32* @LOG_WARNING, align 4
  %22 = call i32 (i32, i8*, ...) @blog(i32 %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %81

23:                                               ; preds = %17
  %24 = call i32 @dstr_copy(%struct.dstr* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @dstr_cat(%struct.dstr* %8, i8* %25)
  %27 = call i32 @dstr_cat(%struct.dstr* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @obs_find_module_file(%struct.TYPE_4__* %28, i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i8*, i8** %10, align 8
  %36 = call i32* @text_lookup_create(i8* %35)
  store i32* %36, i32** %9, align 8
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @bfree(i8* %38)
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @LOG_WARNING, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @blog(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 %47)
  br label %78

49:                                               ; preds = %37
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @astrcmpi(i8* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %78

55:                                               ; preds = %49
  %56 = call i32 @dstr_copy(%struct.dstr* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @dstr_cat(%struct.dstr* %8, i8* %57)
  %59 = call i32 @dstr_cat(%struct.dstr* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @obs_find_module_file(%struct.TYPE_4__* %60, i32 %62)
  store i8* %63, i8** %10, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @text_lookup_add(i32* %64, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %55
  %69 = load i32, i32* @LOG_WARNING, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @blog(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %70, i32 %73)
  br label %75

75:                                               ; preds = %68, %55
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @bfree(i8* %76)
  br label %78

78:                                               ; preds = %75, %54, %42
  %79 = call i32 @dstr_free(%struct.dstr* %8)
  %80 = load i32*, i32** %9, align 8
  store i32* %80, i32** %4, align 8
  br label %81

81:                                               ; preds = %78, %20
  %82 = load i32*, i32** %4, align 8
  ret i32* %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @blog(i32, i8*, ...) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i8* @obs_find_module_file(%struct.TYPE_4__*, i32) #2

declare dso_local i32* @text_lookup_create(i8*) #2

declare dso_local i32 @bfree(i8*) #2

declare dso_local i64 @astrcmpi(i8*, i8*) #2

declare dso_local i32 @text_lookup_add(i32*, i8*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
