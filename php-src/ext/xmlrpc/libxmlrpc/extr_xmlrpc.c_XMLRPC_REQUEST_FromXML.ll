; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc.c_XMLRPC_REQUEST_FromXML.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc.c_XMLRPC_REQUEST_FromXML.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"simpleRPC\00", align 1
@xmlrpc_version_simple = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"SOAP-ENV:Envelope\00", align 1
@xmlrpc_version_soap_1_1 = common dso_local global i32 0, align 4
@xmlrpc_version_1_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @XMLRPC_REQUEST_FromXML(i8* %0, i32 %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %6, align 8
  %10 = call %struct.TYPE_23__* (...) @XMLRPC_RequestNew()
  store %struct.TYPE_23__* %10, %struct.TYPE_23__** %7, align 8
  %11 = bitcast %struct.TYPE_24__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %13 = icmp ne %struct.TYPE_23__* %12, null
  br i1 %13, label %14, label %78

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = icmp ne %struct.TYPE_22__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32* [ %21, %19 ], [ null, %22 ]
  %25 = call %struct.TYPE_21__* @xml_elem_parse_buf(i8* %15, i32 %16, i32* %24, %struct.TYPE_24__* %8)
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %9, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %27 = icmp ne %struct.TYPE_21__* %26, null
  br i1 %27, label %28, label %68

28:                                               ; preds = %23
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcmp(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @xmlrpc_version_simple, align 4
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %41 = call i32 @xml_element_to_DANDARPC_REQUEST(%struct.TYPE_23__* %39, %struct.TYPE_21__* %40)
  br label %65

42:                                               ; preds = %28
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcmp(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @xmlrpc_version_soap_1_1, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %55 = call i32 @xml_element_to_SOAP_REQUEST(%struct.TYPE_23__* %53, %struct.TYPE_21__* %54)
  br label %64

56:                                               ; preds = %42
  %57 = load i32, i32* @xmlrpc_version_1_0, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %63 = call i32 @xml_element_to_XMLRPC_REQUEST(%struct.TYPE_23__* %61, %struct.TYPE_21__* %62)
  br label %64

64:                                               ; preds = %56, %48
  br label %65

65:                                               ; preds = %64, %34
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %67 = call i32 @xml_elem_free(%struct.TYPE_21__* %66)
  br label %77

68:                                               ; preds = %23
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %74 = call i32 @map_expat_errors(%struct.TYPE_24__* %8)
  %75 = call i32 @XMLRPC_RequestSetError(%struct.TYPE_23__* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %3
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  ret %struct.TYPE_23__* %79
}

declare dso_local %struct.TYPE_23__* @XMLRPC_RequestNew(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_21__* @xml_elem_parse_buf(i8*, i32, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @xml_element_to_DANDARPC_REQUEST(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @xml_element_to_SOAP_REQUEST(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @xml_element_to_XMLRPC_REQUEST(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @xml_elem_free(%struct.TYPE_21__*) #1

declare dso_local i32 @XMLRPC_RequestSetError(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @map_expat_errors(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
