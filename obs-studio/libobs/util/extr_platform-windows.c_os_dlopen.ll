; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_dlopen.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_dlopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".dll\00", align 1
@ERROR_PROC_NOT_FOUND = common dso_local global i64 0, align 8
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"LoadLibrary failed for '%s': %s (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @os_dlopen(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dstr, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %78

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @dstr_init_copy(%struct.dstr* %4, i8* %14)
  %16 = call i32 @dstr_replace(%struct.dstr* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @dstr_find(%struct.dstr* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = call i32 @dstr_cat(%struct.dstr* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @os_utf8_to_wcs_ptr(i32 %23, i32 0, i32** %5)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @wcsrchr(i32* %25, i32 47)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32*, i32** %6, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @SetDllDirectoryW(i32* %31)
  %33 = load i32*, i32** %6, align 8
  store i32 47, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @LoadLibraryW(i32* %35)
  store i8* %36, i8** %7, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @bfree(i32* %37)
  %39 = call i32 @dstr_free(%struct.dstr* %4)
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 @SetDllDirectoryW(i32* null)
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %76, label %47

47:                                               ; preds = %44
  %48 = call i64 (...) @GetLastError()
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @ERROR_PROC_NOT_FOUND, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* null, i8** %2, align 8
  br label %78

53:                                               ; preds = %47
  store i8* null, i8** %9, align 8
  %54 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %55 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %58 = or i32 %56, %57
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* @LANG_ENGLISH, align 4
  %61 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %62 = call i32 @MAKELANGID(i32 %60, i32 %61)
  %63 = ptrtoint i8** %9 to i32
  %64 = call i32 @FormatMessageA(i32 %58, i32* null, i64 %59, i32 %62, i32 %63, i32 0, i32* null)
  %65 = load i32, i32* @LOG_INFO, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @blog(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %66, i8* %67, i64 %68)
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %53
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @LocalFree(i8* %73)
  br label %75

75:                                               ; preds = %72, %53
  br label %76

76:                                               ; preds = %75, %44
  %77 = load i8*, i8** %7, align 8
  store i8* %77, i8** %2, align 8
  br label %78

78:                                               ; preds = %76, %52, %12
  %79 = load i8*, i8** %2, align 8
  ret i8* %79
}

declare dso_local i32 @dstr_init_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #1

declare dso_local i32 @dstr_find(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @os_utf8_to_wcs_ptr(i32, i32, i32**) #1

declare dso_local i32* @wcsrchr(i32*, i32) #1

declare dso_local i32 @SetDllDirectoryW(i32*) #1

declare dso_local i8* @LoadLibraryW(i32*) #1

declare dso_local i32 @bfree(i32*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @FormatMessageA(i32, i32*, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @blog(i32, i8*, i8*, i8*, i64) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
