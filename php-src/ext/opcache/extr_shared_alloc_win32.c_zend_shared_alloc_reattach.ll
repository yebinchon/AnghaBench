; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_shared_alloc_win32.c_zend_shared_alloc_reattach.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_shared_alloc_win32.c_zend_shared_alloc_reattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ACCEL_LOG_WARNING = common dso_local global i32 0, align 4
@ACCEL_LOG_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to open base address file\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@ALLOC_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unable to read base address\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"read mapping base\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unable to read execute_ex base address\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"read execute_ex base\00", align 1
@execute_ex = common dso_local global i64 0, align 8
@MEM_FREE = common dso_local global i64 0, align 8
@ERROR_INVALID_ADDRESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [151 x i8] c"Opcode handlers are unusable due to ASLR. Please setup opcache.file_cache and opcache.file_cache_fallback directives for more convenient Opcache usage\00", align 1
@.str.9 = private unnamed_addr constant [152 x i8] c"Base address marks unusable memory region. Please setup opcache.file_cache and opcache.file_cache_fallback directives for more convenient Opcache usage\00", align 1
@memfile = common dso_local global i32 0, align 4
@FILE_MAP_ALL_ACCESS = common dso_local global i32 0, align 4
@FILE_MAP_EXECUTE = common dso_local global i32 0, align 4
@mapping_base = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"Unable to reattach to base address\00", align 1
@ALLOC_FAIL_MAPPING = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"VirtualProtect() failed\00", align 1
@smm_shared_globals = common dso_local global %struct.TYPE_6__* null, align 8
@SUCCESSFULLY_REATTACHED = common dso_local global i32 0, align 4
@ALLOC_FALLBACK = common dso_local global i32 0, align 4
@accel_directives = common dso_local global i32 0, align 4
@accel_shared_globals = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8**)* @zend_shared_alloc_reattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_shared_alloc_reattach(i64 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = call i8* (...) @get_mmap_base_file()
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %2
  %20 = call i32 (...) @GetLastError()
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @ACCEL_LOG_WARNING, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @zend_win_error_message(i32 %21, i8* %22, i32 %23)
  %25 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @zend_win_error_message(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %29, i32* %3, align 4
  br label %143

30:                                               ; preds = %2
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @fscanf(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = call i32 (...) @GetLastError()
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @zend_win_error_message(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %39, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %42, i32* %3, align 4
  br label %143

43:                                               ; preds = %30
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @fscanf(i32* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %11)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = call i32 (...) @GetLastError()
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @zend_win_error_message(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  %52 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %52, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @fclose(i32* %53)
  %55 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %143

56:                                               ; preds = %43
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @fclose(i32* %57)
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @win32_utime(i8* %59, i32* null)
  %61 = icmp sgt i64 0, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = call i32 (...) @GetLastError()
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @ACCEL_LOG_WARNING, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @zend_win_error_message(i32 %64, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  %69 = load i64, i64* @execute_ex, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %68
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @VirtualQuery(i8* %77, %struct.TYPE_7__* %10, i32 16)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MEM_FREE, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %85, %80, %76, %68
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @ERROR_INVALID_ADDRESS, align 4
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @zend_win_error_message(i32 %95, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  br label %103

98:                                               ; preds = %90
  %99 = load i32, i32* @ERROR_INVALID_ADDRESS, align 4
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @zend_win_error_message(i32 %100, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.9, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %104, i32* %3, align 4
  br label %143

105:                                              ; preds = %85
  %106 = load i32, i32* @memfile, align 4
  %107 = load i32, i32* @FILE_MAP_ALL_ACCESS, align 4
  %108 = load i32, i32* @FILE_MAP_EXECUTE, align 4
  %109 = or i32 %107, %108
  %110 = load i8*, i8** %7, align 8
  %111 = call i32* @MapViewOfFileEx(i32 %106, i32 %109, i32 0, i32 0, i64 0, i8* %110)
  store i32* %111, i32** @mapping_base, align 8
  %112 = load i32*, i32** @mapping_base, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %105
  %115 = call i32 (...) @GetLastError()
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @ERROR_INVALID_ADDRESS, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @zend_win_error_message(i32 %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @ALLOC_FAILURE, align 4
  store i32 %123, i32* %3, align 4
  br label %143

124:                                              ; preds = %114
  %125 = load i32, i32* @ALLOC_FAIL_MAPPING, align 4
  store i32 %125, i32* %3, align 4
  br label %143

126:                                              ; preds = %105
  %127 = load i32*, i32** @mapping_base, align 8
  %128 = load i64, i64* %4, align 8
  %129 = load i32, i32* @PAGE_READWRITE, align 4
  %130 = call i32 @VirtualProtect(i32* %127, i64 %128, i32 %129, i32* %13)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = call i32 (...) @GetLastError()
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* @ACCEL_LOG_FATAL, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @zend_win_error_message(i32 %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @ALLOC_FAIL_MAPPING, align 4
  store i32 %137, i32* %3, align 4
  br label %143

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138
  %140 = load i32*, i32** @mapping_base, align 8
  %141 = bitcast i32* %140 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %141, %struct.TYPE_6__** @smm_shared_globals, align 8
  %142 = load i32, i32* @SUCCESSFULLY_REATTACHED, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %132, %124, %119, %103, %47, %34, %19
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i8* @get_mmap_base_file(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @zend_win_error_message(i32, i8*, i32) #1

declare dso_local i32 @fscanf(i32*, i8*, i8**) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @win32_utime(i8*, i32*) #1

declare dso_local i64 @VirtualQuery(i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32* @MapViewOfFileEx(i32, i32, i32, i32, i64, i8*) #1

declare dso_local i32 @VirtualProtect(i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
