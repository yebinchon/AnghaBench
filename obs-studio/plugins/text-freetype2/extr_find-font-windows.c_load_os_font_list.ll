; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font-windows.c_load_os_font_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font-windows.c_load_os_font_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_9__ = type { i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@CSIDL_FONTS = common dso_local global i32 0, align 4
@SHGFP_TYPE_CURRENT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error finding windows font folder\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\\*.*\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@ft2_lib = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_os_font_list() #0 {
  %1 = alloca %struct.dstr, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dstr, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = bitcast %struct.dstr* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = call i32 @dstr_reserve(%struct.dstr* %1, i32 %11)
  %13 = load i32, i32* @CSIDL_FONTS, align 4
  %14 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %15 = getelementptr inbounds %struct.dstr, %struct.dstr* %1, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @SHGetFolderPathA(i32* null, i32 %13, i32* null, i32 %14, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i32, i32* @LOG_WARNING, align 4
  %23 = call i32 @blog(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %94

24:                                               ; preds = %0
  %25 = getelementptr inbounds %struct.dstr, %struct.dstr* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @strlen(i32 %26)
  %28 = getelementptr inbounds %struct.dstr, %struct.dstr* %1, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = call i32 @dstr_cat(%struct.dstr* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.dstr, %struct.dstr* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @FindFirstFileA(i32 %31, %struct.TYPE_8__* %3)
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %92

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.dstr, %struct.dstr* %1, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 4
  %41 = call i32 @dstr_resize(%struct.dstr* %1, i64 %40)
  br label %42

42:                                               ; preds = %84, %37
  %43 = bitcast %struct.dstr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 16, i1 false)
  store i64 0, i64* %7, align 8
  store i64 1, i64* %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %84

50:                                               ; preds = %42
  %51 = call i32 @dstr_copy_dstr(%struct.dstr* %5, %struct.dstr* %1)
  %52 = call i32 @dstr_cat(%struct.dstr* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @dstr_cat(%struct.dstr* %5, i8* %54)
  br label %56

56:                                               ; preds = %69, %50
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = load i32, i32* @ft2_lib, align 4
  %62 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @FT_New_Face(i32 %61, i32 %63, i64 %64, %struct.TYPE_9__** %6)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %82

69:                                               ; preds = %60
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %7, align 8
  %73 = trunc i64 %71 to i32
  %74 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @build_font_path_info(%struct.TYPE_9__* %70, i32 %73, i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = call i32 @FT_Done_Face(%struct.TYPE_9__* %80)
  br label %56

82:                                               ; preds = %68, %56
  %83 = call i32 @dstr_free(%struct.dstr* %5)
  br label %84

84:                                               ; preds = %82, %49
  %85 = load i64, i64* %2, align 8
  %86 = call i64 @FindNextFileA(i64 %85, %struct.TYPE_8__* %3)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %42, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %2, align 8
  %90 = call i32 @FindClose(i64 %89)
  %91 = call i32 (...) @save_font_list()
  br label %92

92:                                               ; preds = %88, %36
  %93 = call i32 @dstr_free(%struct.dstr* %1)
  br label %94

94:                                               ; preds = %92, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_reserve(%struct.dstr*, i32) #2

declare dso_local i64 @SHGetFolderPathA(i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @blog(i32, i8*) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i64 @FindFirstFileA(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @dstr_resize(%struct.dstr*, i64) #2

declare dso_local i32 @dstr_copy_dstr(%struct.dstr*, %struct.dstr*) #2

declare dso_local i64 @FT_New_Face(i32, i32, i64, %struct.TYPE_9__**) #2

declare dso_local i32 @build_font_path_info(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @FT_Done_Face(%struct.TYPE_9__*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i64 @FindNextFileA(i64, %struct.TYPE_8__*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i32 @save_font_list(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
