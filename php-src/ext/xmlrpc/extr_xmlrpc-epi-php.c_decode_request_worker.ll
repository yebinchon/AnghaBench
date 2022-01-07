; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/extr_xmlrpc-epi-php.c_decode_request_worker.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/extr_xmlrpc-epi-php.c_decode_request_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ENCODING_DEFAULT = common dso_local global i32 0, align 4
@xmlrpc_request_call = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_request_worker(i8* %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @utf8_get_encoding_id_from_string(i8* %18)
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @ENCODING_DEFAULT, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @XMLRPC_REQUEST_FromXML(i8* %26, i32 %27, %struct.TYPE_7__* %12)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %22
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @ZVAL_NULL(i32* %32)
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @XMLRPC_RequestGetData(i64 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @XMLRPC_to_PHP(i32 %35, i32* %36)
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @XMLRPC_RequestGetRequestType(i64 %38)
  %40 = load i64, i64* @xmlrpc_request_call, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %31
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i64, i64* %11, align 8
  %47 = call i8* @XMLRPC_RequestGetMethodName(i64 %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32*, i32** %9, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @ZEND_TRY_ASSIGN_REF_STRING(i32* %51, i8* %52)
  br label %57

54:                                               ; preds = %45
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @ZVAL_NULL(i32* %55)
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @XMLRPC_RequestFree(i64 %60, i32 1)
  br label %62

62:                                               ; preds = %59, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @utf8_get_encoding_id_from_string(i8*) #2

declare dso_local i64 @XMLRPC_REQUEST_FromXML(i8*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @ZVAL_NULL(i32*) #2

declare dso_local i32 @XMLRPC_to_PHP(i32, i32*) #2

declare dso_local i32 @XMLRPC_RequestGetData(i64) #2

declare dso_local i64 @XMLRPC_RequestGetRequestType(i64) #2

declare dso_local i8* @XMLRPC_RequestGetMethodName(i64) #2

declare dso_local i32 @ZEND_TRY_ASSIGN_REF_STRING(i32*, i8*) #2

declare dso_local i32 @XMLRPC_RequestFree(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
