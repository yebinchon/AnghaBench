; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_add_window.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_add_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"explorer.exe\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[%s]: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32 (i32, i32, i32)*)* @add_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_window(i32* %0, i32 %1, i32 (i32, i32, i32)* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (i32, i32, i32)*, align 8
  %7 = alloca %struct.dstr, align 4
  %8 = alloca %struct.dstr, align 4
  %9 = alloca %struct.dstr, align 4
  %10 = alloca %struct.dstr, align 4
  %11 = alloca %struct.dstr, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (i32, i32, i32)* %2, i32 (i32, i32, i32)** %6, align 8
  %12 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = bitcast %struct.dstr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = bitcast %struct.dstr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = bitcast %struct.dstr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = bitcast %struct.dstr* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @get_window_exe(%struct.dstr* %9, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %83

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @is_microsoft_internal_window_exe(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @dstr_free(%struct.dstr* %9)
  br label %83

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @get_window_title(%struct.dstr* %8, i32 %29)
  %31 = call i64 @dstr_cmp(%struct.dstr* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = call i64 @dstr_is_empty(%struct.dstr* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 @dstr_free(%struct.dstr* %9)
  %38 = call i32 @dstr_free(%struct.dstr* %8)
  br label %83

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @get_window_class(%struct.dstr* %7, i32 %40)
  %42 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %6, align 8
  %43 = icmp ne i32 (i32, i32, i32)* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %6, align 8
  %46 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %45(i32 %47, i32 %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %44
  %55 = call i32 @dstr_free(%struct.dstr* %8)
  %56 = call i32 @dstr_free(%struct.dstr* %7)
  %57 = call i32 @dstr_free(%struct.dstr* %9)
  br label %83

58:                                               ; preds = %44, %39
  %59 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dstr_printf(%struct.dstr* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %62)
  %64 = call i32 @encode_dstr(%struct.dstr* %8)
  %65 = call i32 @encode_dstr(%struct.dstr* %7)
  %66 = call i32 @encode_dstr(%struct.dstr* %9)
  %67 = call i32 @dstr_cat_dstr(%struct.dstr* %10, %struct.dstr* %8)
  %68 = call i32 @dstr_cat(%struct.dstr* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 @dstr_cat_dstr(%struct.dstr* %10, %struct.dstr* %7)
  %70 = call i32 @dstr_cat(%struct.dstr* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 @dstr_cat_dstr(%struct.dstr* %10, %struct.dstr* %9)
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds %struct.dstr, %struct.dstr* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.dstr, %struct.dstr* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @obs_property_list_add_string(i32* %72, i32 %74, i32 %76)
  %78 = call i32 @dstr_free(%struct.dstr* %10)
  %79 = call i32 @dstr_free(%struct.dstr* %11)
  %80 = call i32 @dstr_free(%struct.dstr* %7)
  %81 = call i32 @dstr_free(%struct.dstr* %8)
  %82 = call i32 @dstr_free(%struct.dstr* %9)
  br label %83

83:                                               ; preds = %58, %54, %36, %26, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_window_exe(%struct.dstr*, i32) #2

declare dso_local i64 @is_microsoft_internal_window_exe(i32) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i32 @get_window_title(%struct.dstr*, i32) #2

declare dso_local i64 @dstr_cmp(%struct.dstr*, i8*) #2

declare dso_local i64 @dstr_is_empty(%struct.dstr*) #2

declare dso_local i32 @get_window_class(%struct.dstr*, i32) #2

declare dso_local i32 @dstr_printf(%struct.dstr*, i8*, i32, i32) #2

declare dso_local i32 @encode_dstr(%struct.dstr*) #2

declare dso_local i32 @dstr_cat_dstr(%struct.dstr*, %struct.dstr*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i32 @obs_property_list_add_string(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
