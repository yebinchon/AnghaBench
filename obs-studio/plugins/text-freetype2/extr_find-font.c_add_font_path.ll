; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_add_font_path.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_add_font_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.dstr = type { i64, i32, i32 }
%struct.font_path_info = type { i32, i32, i32, i32, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@FT_FACE_FLAG_FIXED_SIZES = common dso_local global i32 0, align 4
@FT_STYLE_FLAG_BOLD = common dso_local global i32 0, align 4
@FT_STYLE_FLAG_ITALIC = common dso_local global i32 0, align 4
@font_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i8*, i8*, i8*)* @add_font_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_font_path(%struct.TYPE_4__* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dstr, align 8
  %12 = alloca %struct.font_path_info, align 8
  %13 = alloca %struct.dstr, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = bitcast %struct.dstr* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %5
  br label %94

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @dstr_copy(%struct.dstr* %11, i8* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = bitcast %struct.dstr* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 16, i1 false)
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @dstr_copy(%struct.dstr* %13, i8* %30)
  %32 = call i32 @dstr_replace(%struct.dstr* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @dstr_replace(%struct.dstr* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @dstr_replace(%struct.dstr* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %35 = call i32 @dstr_depad(%struct.dstr* %13)
  %36 = call i32 @dstr_is_empty(%struct.dstr* %13)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = call i32 @dstr_cat(%struct.dstr* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %40 = call i32 @dstr_cat_dstr(%struct.dstr* %11, %struct.dstr* %13)
  br label %41

41:                                               ; preds = %38, %28
  %42 = call i32 @dstr_free(%struct.dstr* %13)
  br label %43

43:                                               ; preds = %41, %21
  %44 = getelementptr inbounds %struct.dstr, %struct.dstr* %11, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %12, i32 0, i32 7
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.dstr, %struct.dstr* %11, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %12, i32 0, i32 6
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %12, i32 0, i32 5
  store i8* %53, i8** %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FT_FACE_FLAG_FIXED_SIZES, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %12, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @FT_STYLE_FLAG_BOLD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %12, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FT_STYLE_FLAG_ITALIC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %12, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %12, i32 0, i32 4
  store i32 %85, i32* %86, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @bstrdup(i8* %87)
  %89 = getelementptr inbounds %struct.font_path_info, %struct.font_path_info* %12, i32 0, i32 3
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = call i32 @create_bitmap_sizes(%struct.font_path_info* %12, %struct.TYPE_4__* %90)
  %92 = load i32, i32* @font_list, align 4
  %93 = call i32 @da_push_back(i32 %92, %struct.font_path_info* %12)
  br label %94

94:                                               ; preds = %43, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #2

declare dso_local i32 @dstr_depad(%struct.dstr*) #2

declare dso_local i32 @dstr_is_empty(%struct.dstr*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_cat_dstr(%struct.dstr*, %struct.dstr*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @bstrdup(i8*) #2

declare dso_local i32 @create_bitmap_sizes(%struct.font_path_info*, %struct.TYPE_4__*) #2

declare dso_local i32 @da_push_back(i32, %struct.font_path_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
