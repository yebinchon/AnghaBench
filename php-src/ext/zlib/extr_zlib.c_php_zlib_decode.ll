; ModuleID = '/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_decode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, i32 }

@php_zlib_alloc = common dso_local global i32 0, align 4
@php_zlib_free = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@PHP_ZLIB_ENCODING_ANY = common dso_local global i32 0, align 4
@PHP_ZLIB_ENCODING_RAW = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8**, i64*, i32, i64)* @php_zlib_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zlib_decode(i8* %0, i64 %1, i8** %2, i64* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 129, i32* %14, align 4
  %16 = call i32 @memset(%struct.TYPE_6__* %15, i32 0, i32 24)
  %17 = load i32, i32* @php_zlib_alloc, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @php_zlib_free, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %6
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @inflateInit2(%struct.TYPE_6__* %15, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* @Z_OK, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32* %32, i32** %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i8**, i8*** %10, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = call i32 @php_zlib_inflate_rounds(%struct.TYPE_6__* %15, i64 %37, i8** %38, i64* %39)
  store i32 %40, i32* %14, align 4
  switch i32 %40, label %52 [
    i32 128, label %41
    i32 129, label %44
  ]

41:                                               ; preds = %30
  %42 = call i32 @inflateEnd(%struct.TYPE_6__* %15)
  %43 = load i32, i32* @SUCCESS, align 4
  store i32 %43, i32* %7, align 4
  br label %63

44:                                               ; preds = %30
  %45 = load i32, i32* @PHP_ZLIB_ENCODING_ANY, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = call i32 @inflateEnd(%struct.TYPE_6__* %15)
  %50 = load i32, i32* @PHP_ZLIB_ENCODING_RAW, align 4
  store i32 %50, i32* %12, align 4
  br label %24

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %30
  %53 = call i32 @inflateEnd(%struct.TYPE_6__* %15)
  br label %54

54:                                               ; preds = %52, %24
  br label %55

55:                                               ; preds = %54, %6
  %56 = load i8**, i8*** %10, align 8
  store i8* null, i8** %56, align 8
  %57 = load i64*, i64** %11, align 8
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @E_WARNING, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @zError(i32 %59)
  %61 = call i32 @php_error_docref(i32* null, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @FAILURE, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %55, %41
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @inflateInit2(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @php_zlib_inflate_rounds(%struct.TYPE_6__*, i64, i8**, i64*) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_6__*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32) #1

declare dso_local i32 @zError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
