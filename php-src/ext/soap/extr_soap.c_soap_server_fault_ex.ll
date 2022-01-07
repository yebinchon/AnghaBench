; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_soap_server_fault_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_soap_server_fault_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@http_globals = common dso_local global i32 0, align 4
@TRACK_VARS_SERVER = common dso_local global i64 0, align 8
@IS_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"_SERVER\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"HTTP_USER_AGENT\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Shockwave Flash\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"HTTP/1.1 500 Internal Service Error\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"zlib.output_compression\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Connection: close\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Content-Length: %d\00", align 1
@SOAP_1_2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"Content-Type: application/soap+xml; charset=utf-8\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Content-Type: text/xml; charset=utf-8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @soap_server_fault_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soap_server_fault_ex(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [30 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @SOAP_GLOBAL(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @serialize_response_call(i32 %16, i32* null, i32* null, i32* %17, i32* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @xmlDocDumpMemory(i32 %21, i32** %8, i32* %10)
  %23 = load i32, i32* @http_globals, align 4
  %24 = call i32* @PG(i32 %23)
  %25 = load i64, i64* @TRACK_VARS_SERVER, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @Z_TYPE(i32 %27)
  %29 = load i64, i64* @IS_ARRAY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = call i64 @zend_is_auto_global_str(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %31, %3
  %36 = load i32, i32* @http_globals, align 4
  %37 = call i32* @PG(i32 %36)
  %38 = load i64, i64* @TRACK_VARS_SERVER, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @Z_ARRVAL(i32 %40)
  %42 = call i32* @zend_hash_str_find(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 15)
  store i32* %42, i32** %12, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %35
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @Z_TYPE_P(i32* %45)
  %47 = load i64, i64* @IS_STRING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @Z_STRVAL_P(i32* %50)
  %52 = call i64 @strncmp(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %55, %44, %35, %31
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @sapi_add_header(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 35, i32 1)
  br label %61

61:                                               ; preds = %59, %56
  %62 = call i64 @zend_ini_long(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 24, i32 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @sapi_add_header(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 17, i32 1)
  br label %74

66:                                               ; preds = %61
  %67 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @snprintf(i8* %67, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %71 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %72 = call i32 @strlen(i8* %71)
  %73 = call i32 @sapi_add_header(i8* %70, i32 %72, i32 1)
  br label %74

74:                                               ; preds = %66, %64
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @SOAP_1_2, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @sapi_add_header(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 49, i32 1)
  br label %82

80:                                               ; preds = %74
  %81 = call i32 @sapi_add_header(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 37, i32 1)
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @php_write(i32* %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @xmlFreeDoc(i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @xmlFree(i32* %88)
  %90 = call i32 (...) @zend_clear_exception()
  ret void
}

declare dso_local i32 @SOAP_GLOBAL(i32) #1

declare dso_local i32 @serialize_response_call(i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @xmlDocDumpMemory(i32, i32**, i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32* @PG(i32) #1

declare dso_local i64 @zend_is_auto_global_str(i32) #1

declare dso_local i32 @ZEND_STRL(i8*) #1

declare dso_local i32* @zend_hash_str_find(i32, i8*, i32) #1

declare dso_local i32 @Z_ARRVAL(i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @sapi_add_header(i8*, i32, i32) #1

declare dso_local i64 @zend_ini_long(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @php_write(i32*, i32) #1

declare dso_local i32 @xmlFreeDoc(i32) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @zend_clear_exception(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
