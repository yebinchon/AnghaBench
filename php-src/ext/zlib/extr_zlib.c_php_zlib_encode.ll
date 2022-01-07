; ModuleID = '/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_encode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32*, i32*, i32, i32 }

@php_zlib_alloc = common dso_local global i32 0, align 4
@php_zlib_free = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@MAX_MEM_LEVEL = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i32, i32)* @php_zlib_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_zlib_encode(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 48)
  %14 = load i32, i32* @php_zlib_alloc, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @php_zlib_free, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @Z_OK, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @Z_DEFLATED, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MAX_MEM_LEVEL, align 4
  %23 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %24 = call i32 @deflateInit2(%struct.TYPE_6__* %11, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp eq i32 %18, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @PHP_ZLIB_BUFFER_SIZE_GUESS(i64 %27)
  %29 = call i32* @zend_string_alloc(i32 %28, i32 0)
  store i32* %29, i32** %12, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i32* %31, i32** %32, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i8* @ZSTR_VAL(i32* %33)
  %35 = bitcast i8* %34 to i32*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32* %35, i32** %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i64 @ZSTR_LEN(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @Z_FINISH, align 4
  %43 = call i32 @deflate(%struct.TYPE_6__* %11, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = call i32 @deflateEnd(%struct.TYPE_6__* %11)
  %45 = load i32, i32* @Z_STREAM_END, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %26
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32* @zend_string_truncate(i32* %49, i32 %51, i32 0)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i8* @ZSTR_VAL(i32* %53)
  %55 = load i32*, i32** %12, align 8
  %56 = call i64 @ZSTR_LEN(i32* %55)
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i32*, i32** %12, align 8
  store i32* %58, i32** %5, align 8
  br label %68

59:                                               ; preds = %26
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @zend_string_efree(i32* %60)
  br label %62

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %4
  %64 = load i32, i32* @E_WARNING, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @zError(i32 %65)
  %67 = call i32 @php_error_docref(i32* null, i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %66)
  store i32* null, i32** %5, align 8
  br label %68

68:                                               ; preds = %63, %48
  %69 = load i32*, i32** %5, align 8
  ret i32* %69
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @deflateInit2(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @zend_string_alloc(i32, i32) #1

declare dso_local i32 @PHP_ZLIB_BUFFER_SIZE_GUESS(i64) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @deflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_6__*) #1

declare dso_local i32* @zend_string_truncate(i32*, i32, i32) #1

declare dso_local i32 @zend_string_efree(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32) #1

declare dso_local i32 @zError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
