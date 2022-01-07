; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_xmlrpc.c_XMLRPC_REQUEST_to_xml_element.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_xmlrpc.c_XMLRPC_REQUEST_to_xml_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32 }

@xmlrpc_request_call = common dso_local global i64 0, align 8
@ELEM_METHODCALL = common dso_local global i8* null, align 8
@xmlrpc_request_response = common dso_local global i64 0, align 8
@ELEM_METHODRESPONSE = common dso_local global i8* null, align 8
@ELEM_METHODNAME = common dso_local global i8* null, align 8
@ELEM_PARAMS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @XMLRPC_REQUEST_to_xml_element(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %84

11:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @XMLRPC_RequestGetRequestType(i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %2, align 8
  %15 = call i64 @XMLRPC_RequestGetData(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = call %struct.TYPE_6__* (...) @xml_elem_new()
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @xmlrpc_request_call, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i8*, i8** @ELEM_METHODCALL, align 8
  store i8* %21, i8** %4, align 8
  br label %29

22:                                               ; preds = %11
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @xmlrpc_request_response, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i8*, i8** @ELEM_METHODRESPONSE, align 8
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %26, %22
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @estrdup(i8* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @xmlrpc_request_call, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i64, i64* %2, align 8
  %43 = call i8* @XMLRPC_RequestGetMethodName(i64 %42)
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = call %struct.TYPE_6__* (...) @xml_elem_new()
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %7, align 8
  %48 = load i8*, i8** @ELEM_METHODNAME, align 8
  %49 = call i8* @estrdup(i8* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @simplestring_add(i32* %53, i8* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = call i32 @Q_PushTail(i32* %57, %struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %46, %41
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %2, align 8
  %68 = call i64 @XMLRPC_RequestGetData(i64 %67)
  %69 = load i64, i64* %2, align 8
  %70 = call i64 @XMLRPC_RequestGetRequestType(i64 %69)
  %71 = call %struct.TYPE_6__* @XMLRPC_to_xml_element_worker(i32* null, i64 %68, i64 %70, i32 0)
  %72 = call i32 @Q_PushTail(i32* %66, %struct.TYPE_6__* %71)
  br label %83

73:                                               ; preds = %61
  %74 = call %struct.TYPE_6__* (...) @xml_elem_new()
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %8, align 8
  %75 = load i8*, i8** @ELEM_PARAMS, align 8
  %76 = call i8* @estrdup(i8* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = call i32 @Q_PushTail(i32* %80, %struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %73, %64
  br label %84

84:                                               ; preds = %83, %1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %85
}

declare dso_local i64 @XMLRPC_RequestGetRequestType(i64) #1

declare dso_local i64 @XMLRPC_RequestGetData(i64) #1

declare dso_local %struct.TYPE_6__* @xml_elem_new(...) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i8* @XMLRPC_RequestGetMethodName(i64) #1

declare dso_local i32 @simplestring_add(i32*, i8*) #1

declare dso_local i32 @Q_PushTail(i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @XMLRPC_to_xml_element_worker(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
