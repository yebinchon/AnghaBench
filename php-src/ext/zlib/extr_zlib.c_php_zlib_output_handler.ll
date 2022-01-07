; ModuleID = '/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_output_handler.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_output_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PHP_OUTPUT_HANDLER_START = common dso_local global i32 0, align 4
@PHP_OUTPUT_HANDLER_CLEAN = common dso_local global i32 0, align 4
@PHP_OUTPUT_HANDLER_FINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Vary: Accept-Encoding\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@PHP_OUTPUT_HANDLER_HOOK_GET_FLAGS = common dso_local global i32 0, align 4
@PHP_OUTPUT_HANDLER_STARTED = common dso_local global i32 0, align 4
@headers_sent = common dso_local global i32 0, align 4
@output_compression = common dso_local global i32 0, align 4
@compression_coding = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Content-Encoding: gzip\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Content-Encoding: deflate\00", align 1
@PHP_OUTPUT_HANDLER_HOOK_IMMUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.TYPE_7__*)* @php_zlib_output_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zlib_output_handler(i8** %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = bitcast i8** %8 to %struct.TYPE_6__**
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = call i32 (...) @php_zlib_output_encoding()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PHP_OUTPUT_HANDLER_START, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PHP_OUTPUT_HANDLER_START, align 4
  %25 = load i32, i32* @PHP_OUTPUT_HANDLER_CLEAN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PHP_OUTPUT_HANDLER_FINAL, align 4
  %28 = or i32 %26, %27
  %29 = icmp ne i32 %23, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @sapi_add_header_ex(i32 %31, i32 1, i32 0)
  br label %33

33:                                               ; preds = %30, %20, %13
  %34 = load i32, i32* @FAILURE, align 4
  store i32 %34, i32* %3, align 4
  br label %97

35:                                               ; preds = %2
  %36 = load i64, i64* @SUCCESS, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call i64 @php_zlib_output_handler_ex(%struct.TYPE_6__* %37, %struct.TYPE_7__* %38)
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @FAILURE, align 4
  store i32 %42, i32* %3, align 4
  br label %97

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PHP_OUTPUT_HANDLER_CLEAN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %94, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* @SUCCESS, align 8
  %52 = load i32, i32* @PHP_OUTPUT_HANDLER_HOOK_GET_FLAGS, align 4
  %53 = call i64 @php_output_handler_hook(i32 %52, i32* %7)
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %93

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @PHP_OUTPUT_HANDLER_STARTED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %92, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @headers_sent, align 4
  %62 = call i64 @SG(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @output_compression, align 4
  %66 = call i32 @ZLIBG(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @deflateEnd(i32* %70)
  %72 = load i32, i32* @FAILURE, align 4
  store i32 %72, i32* %3, align 4
  br label %97

73:                                               ; preds = %64
  %74 = load i32, i32* @compression_coding, align 4
  %75 = call i32 @ZLIBG(i32 %74)
  switch i32 %75, label %82 [
    i32 128, label %76
    i32 129, label %79
  ]

76:                                               ; preds = %73
  %77 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 @sapi_add_header_ex(i32 %77, i32 1, i32 1)
  br label %87

79:                                               ; preds = %73
  %80 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 @sapi_add_header_ex(i32 %80, i32 1, i32 1)
  br label %87

82:                                               ; preds = %73
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @deflateEnd(i32* %84)
  %86 = load i32, i32* @FAILURE, align 4
  store i32 %86, i32* %3, align 4
  br label %97

87:                                               ; preds = %79, %76
  %88 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %89 = call i32 @sapi_add_header_ex(i32 %88, i32 1, i32 0)
  %90 = load i32, i32* @PHP_OUTPUT_HANDLER_HOOK_IMMUTABLE, align 4
  %91 = call i64 @php_output_handler_hook(i32 %90, i32* null)
  br label %92

92:                                               ; preds = %87, %55
  br label %93

93:                                               ; preds = %92, %50
  br label %94

94:                                               ; preds = %93, %43
  %95 = load i64, i64* @SUCCESS, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %82, %68, %41, %33
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @php_zlib_output_encoding(...) #1

declare dso_local i32 @sapi_add_header_ex(i32, i32, i32) #1

declare dso_local i32 @ZEND_STRL(i8*) #1

declare dso_local i64 @php_zlib_output_handler_ex(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i64 @php_output_handler_hook(i32, i32*) #1

declare dso_local i64 @SG(i32) #1

declare dso_local i32 @ZLIBG(i32) #1

declare dso_local i32 @deflateEnd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
