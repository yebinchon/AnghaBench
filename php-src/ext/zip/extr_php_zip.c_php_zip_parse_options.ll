; ModuleID = '/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_parse_options.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"remove_all_path\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"remove_path\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"remove_path option expected to be a string\00", align 1
@E_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Empty string given as remove_path option\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"remove_path string is too long (max: %d, %zd given)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"add_path\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"add_path option expected to be a string\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Empty string given as the add_path option\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"add_path string too long (max: %d, %zd given)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i64*, i8**, i64*)* @php_zip_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zip_parse_options(i32* %0, i32* %1, i8** %2, i64* %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @Z_ARRVAL_P(i32* %15)
  %17 = call i32* @zend_hash_str_find(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 15)
  store i32* %17, i32** %14, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load i32*, i32** %14, align 8
  %21 = call i32 @zval_get_long(i32* %20)
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %6
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @Z_ARRVAL_P(i32* %24)
  %26 = call i32* @zend_hash_str_find(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  store i32* %26, i32** %14, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %23
  %29 = load i32*, i32** %14, align 8
  %30 = call i64 @Z_TYPE_P(i32* %29)
  %31 = load i64, i64* @IS_STRING, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @E_WARNING, align 4
  %35 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %104

36:                                               ; preds = %28
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @Z_STRLEN_P(i32* %37)
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @E_NOTICE, align 4
  %42 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %104

43:                                               ; preds = %36
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @Z_STRLEN_P(i32* %44)
  %46 = load i32, i32* @MAXPATHLEN, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @E_WARNING, align 4
  %50 = load i32, i32* @MAXPATHLEN, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @Z_STRLEN_P(i32* %52)
  %54 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %51, i32 %53)
  store i32 -1, i32* %7, align 4
  br label %104

55:                                               ; preds = %43
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @Z_STRLEN_P(i32* %56)
  %58 = sext i32 %57 to i64
  %59 = load i64*, i64** %11, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i8* @Z_STRVAL_P(i32* %60)
  %62 = load i8**, i8*** %10, align 8
  store i8* %61, i8** %62, align 8
  br label %63

63:                                               ; preds = %55, %23
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @Z_ARRVAL_P(i32* %64)
  %66 = call i32* @zend_hash_str_find(i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  store i32* %66, i32** %14, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %103

68:                                               ; preds = %63
  %69 = load i32*, i32** %14, align 8
  %70 = call i64 @Z_TYPE_P(i32* %69)
  %71 = load i64, i64* @IS_STRING, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @E_WARNING, align 4
  %75 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %104

76:                                               ; preds = %68
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @Z_STRLEN_P(i32* %77)
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @E_NOTICE, align 4
  %82 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %104

83:                                               ; preds = %76
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @Z_STRLEN_P(i32* %84)
  %86 = load i32, i32* @MAXPATHLEN, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i32, i32* @E_WARNING, align 4
  %90 = load i32, i32* @MAXPATHLEN, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @Z_STRLEN_P(i32* %92)
  %94 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %89, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %91, i32 %93)
  store i32 -1, i32* %7, align 4
  br label %104

95:                                               ; preds = %83
  %96 = load i32*, i32** %14, align 8
  %97 = call i32 @Z_STRLEN_P(i32* %96)
  %98 = sext i32 %97 to i64
  %99 = load i64*, i64** %13, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = call i8* @Z_STRVAL_P(i32* %100)
  %102 = load i8**, i8*** %12, align 8
  store i8* %101, i8** %102, align 8
  br label %103

103:                                              ; preds = %95, %63
  store i32 1, i32* %7, align 4
  br label %104

104:                                              ; preds = %103, %88, %80, %73, %48, %40, %33
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32* @zend_hash_str_find(i32, i8*, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @zval_get_long(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
