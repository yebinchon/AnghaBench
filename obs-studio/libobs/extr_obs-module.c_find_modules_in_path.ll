; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_find_modules_in_path.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_find_modules_in_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_module_path = type { i32 }
%struct.dstr = type { i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%module%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_module_path*, i32, i8*)* @find_modules_in_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_modules_in_path(%struct.obs_module_path* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.obs_module_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dstr, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  store %struct.obs_module_path* %0, %struct.obs_module_path** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %13 = load %struct.obs_module_path*, %struct.obs_module_path** %4, align 8
  %14 = getelementptr inbounds %struct.obs_module_path, %struct.obs_module_path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dstr_copy(%struct.dstr* %7, i32 %15)
  %17 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @strstr(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = call i32 @dstr_resize(%struct.dstr* %7, i8* %28)
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %22, %3
  %31 = call i32 @dstr_is_empty(%struct.dstr* %7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = call signext i8 @dstr_end(%struct.dstr* %7)
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 47
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @dstr_cat_ch(%struct.dstr* %7, i8 signext 47)
  br label %39

39:                                               ; preds = %37, %33, %30
  %40 = call i32 @dstr_cat_ch(%struct.dstr* %7, i8 signext 42)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = call i32 (...) @get_module_extension()
  %45 = call i32 @dstr_cat(%struct.dstr* %7, i32 %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @os_glob(i32 %48, i32 0, %struct.TYPE_6__** %10)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %46
  store i64 0, i64* %11, align 8
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %59, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %58
  %69 = load %struct.obs_module_path*, %struct.obs_module_path** %4, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @process_found_module(%struct.obs_module_path* %69, i32 %76, i32 %77, i32 %78, i8* %79)
  br label %81

81:                                               ; preds = %68, %58
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %52

85:                                               ; preds = %52
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = call i32 @os_globfree(%struct.TYPE_6__* %86)
  br label %88

88:                                               ; preds = %85, %46
  %89 = call i32 @dstr_free(%struct.dstr* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i32) #2

declare dso_local i8* @strstr(i32, i8*) #2

declare dso_local i32 @dstr_resize(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_is_empty(%struct.dstr*) #2

declare dso_local signext i8 @dstr_end(%struct.dstr*) #2

declare dso_local i32 @dstr_cat_ch(%struct.dstr*, i8 signext) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i32) #2

declare dso_local i32 @get_module_extension(...) #2

declare dso_local i64 @os_glob(i32, i32, %struct.TYPE_6__**) #2

declare dso_local i32 @process_found_module(%struct.obs_module_path*, i32, i32, i32, i8*) #2

declare dso_local i32 @os_globfree(%struct.TYPE_6__*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
