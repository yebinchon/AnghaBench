; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc.c_XMLRPC_UtilityCreateFault.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc.c_XMLRPC_UtilityCreateFault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@xmlrpc_error_parse_xml_syntax_str = common dso_local global i8* null, align 8
@xmlrpc_error_parse_unknown_encoding_str = common dso_local global i8* null, align 8
@xmlrpc_error_parse_bad_encoding_str = common dso_local global i8* null, align 8
@xmlrpc_error_invalid_xmlrpc_str = common dso_local global i8* null, align 8
@xmlrpc_error_unknown_method_str = common dso_local global i8* null, align 8
@xmlrpc_error_invalid_params_str = common dso_local global i8* null, align 8
@xmlrpc_error_internal_server_str = common dso_local global i8* null, align 8
@xmlrpc_error_application_str = common dso_local global i8* null, align 8
@xmlrpc_error_system_str = common dso_local global i8* null, align 8
@xmlrpc_error_transport_str = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@xmlrpc_vector_struct = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"faultString\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"faultCode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @XMLRPC_UtilityCreateFault(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = call i32 @simplestring_init(%struct.TYPE_5__* %7)
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %30 [
    i32 131, label %10
    i32 132, label %12
    i32 133, label %14
    i32 134, label %16
    i32 128, label %18
    i32 135, label %20
    i32 136, label %22
    i32 137, label %24
    i32 130, label %26
    i32 129, label %28
  ]

10:                                               ; preds = %2
  %11 = load i8*, i8** @xmlrpc_error_parse_xml_syntax_str, align 8
  store i8* %11, i8** %6, align 8
  br label %30

12:                                               ; preds = %2
  %13 = load i8*, i8** @xmlrpc_error_parse_unknown_encoding_str, align 8
  store i8* %13, i8** %6, align 8
  br label %30

14:                                               ; preds = %2
  %15 = load i8*, i8** @xmlrpc_error_parse_bad_encoding_str, align 8
  store i8* %15, i8** %6, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load i8*, i8** @xmlrpc_error_invalid_xmlrpc_str, align 8
  store i8* %17, i8** %6, align 8
  br label %30

18:                                               ; preds = %2
  %19 = load i8*, i8** @xmlrpc_error_unknown_method_str, align 8
  store i8* %19, i8** %6, align 8
  br label %30

20:                                               ; preds = %2
  %21 = load i8*, i8** @xmlrpc_error_invalid_params_str, align 8
  store i8* %21, i8** %6, align 8
  br label %30

22:                                               ; preds = %2
  %23 = load i8*, i8** @xmlrpc_error_internal_server_str, align 8
  store i8* %23, i8** %6, align 8
  br label %30

24:                                               ; preds = %2
  %25 = load i8*, i8** @xmlrpc_error_application_str, align 8
  store i8* %25, i8** %6, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load i8*, i8** @xmlrpc_error_system_str, align 8
  store i8* %27, i8** %6, align 8
  br label %30

28:                                               ; preds = %2
  %29 = load i8*, i8** @xmlrpc_error_transport_str, align 8
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %2, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @simplestring_add(%struct.TYPE_5__* %7, i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @simplestring_add(%struct.TYPE_5__* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35, %30
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @simplestring_add(%struct.TYPE_5__* %7, i8* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i32, i32* @xmlrpc_vector_struct, align 4
  %48 = call i32* @XMLRPC_CreateVector(i32* null, i32 %47)
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @XMLRPC_VectorAppendString(i32* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @XMLRPC_VectorAppendInt(i32* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %46, %40
  %59 = call i32 @simplestring_free(%struct.TYPE_5__* %7)
  %60 = load i32*, i32** %5, align 8
  ret i32* %60
}

declare dso_local i32 @simplestring_init(%struct.TYPE_5__*) #1

declare dso_local i32 @simplestring_add(%struct.TYPE_5__*, i8*) #1

declare dso_local i32* @XMLRPC_CreateVector(i32*, i32) #1

declare dso_local i32 @XMLRPC_VectorAppendString(i32*, i8*, i32, i64) #1

declare dso_local i32 @XMLRPC_VectorAppendInt(i32*, i8*, i32) #1

declare dso_local i32 @simplestring_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
