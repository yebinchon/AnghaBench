; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font-windows.c_get_font_checksum.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font-windows.c_get_font_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@CSIDL_FONTS = common dso_local global i32 0, align 4
@SHGFP_TYPE_CURRENT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error finding windows font folder\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\\*.*\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_font_checksum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.dstr, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %7 = bitcast %struct.dstr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = call i32 @dstr_reserve(%struct.dstr* %3, i32 %8)
  %10 = load i32, i32* @CSIDL_FONTS, align 4
  %11 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %12 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @SHGetFolderPathA(i32* null, i32 %10, i32* null, i32 %11, i32* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @LOG_WARNING, align 4
  %20 = call i32 @blog(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %60

21:                                               ; preds = %0
  %22 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @strlen(i32* %23)
  %25 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = call i32 @dstr_cat(%struct.dstr* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @FindFirstFileA(i32* %28, %struct.TYPE_4__* %5)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %57

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 4
  %38 = call i32 @dstr_resize(%struct.dstr* %3, i32 %37)
  br label %39

39:                                               ; preds = %50, %34
  %40 = load i32, i32* %2, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %42 = call i32 @calc_crc32(i32 %40, i32* %41, i32 4)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @strlen(i32* %47)
  %49 = call i32 @calc_crc32(i32 %43, i32* %45, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @FindNextFileA(i64 %51, %struct.TYPE_4__* %5)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %39, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @FindClose(i64 %55)
  br label %57

57:                                               ; preds = %54, %33
  %58 = call i32 @dstr_free(%struct.dstr* %3)
  %59 = load i32, i32* %2, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %57, %18
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_reserve(%struct.dstr*, i32) #2

declare dso_local i64 @SHGetFolderPathA(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @blog(i32, i8*) #2

declare dso_local i32 @strlen(i32*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i64 @FindFirstFileA(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @dstr_resize(%struct.dstr*, i32) #2

declare dso_local i32 @calc_crc32(i32, i32*, i32) #2

declare dso_local i64 @FindNextFileA(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
