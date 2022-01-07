; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc_introspection.c_xi_system_describe_methods_cb.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc_introspection.c_xi_system_describe_methods_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32* }

@xmlrpc_vector_struct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"methodList\00", align 1
@xmlrpc_vector_array = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"typeList\00", align 1
@xmlrpc_string = common dso_local global i64 0, align 8
@xmlrpc_vector = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32, i8*)* @xi_system_describe_methods_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xi_system_describe_methods_cb(%struct.TYPE_8__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @XMLRPC_RequestGetData(i32 %16)
  %18 = call i32* @XMLRPC_VectorRewind(i32* %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* @xmlrpc_vector_struct, align 4
  %20 = call i32* @XMLRPC_CreateVector(i8* null, i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32, i32* @xmlrpc_vector_array, align 4
  %22 = call i32* @XMLRPC_CreateVector(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32* %22, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 1, i32* %11, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @check_docs_loaded(%struct.TYPE_8__* %23, i8* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @XMLRPC_VectorGetValueWithID(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @XMLRPC_AddValueToVector(i32* %30, i32* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @XMLRPC_AddValueToVector(i32* %33, i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %71

38:                                               ; preds = %3
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @XMLRPC_GetValueType(i32* %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @xmlrpc_string, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @XMLRPC_GetValueString(i32* %47)
  %49 = call i32 @describe_method(%struct.TYPE_8__* %45, i32* %46, i32 %48)
  store i32 0, i32* %11, align 4
  br label %70

50:                                               ; preds = %38
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @xmlrpc_vector, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @XMLRPC_VectorRewind(i32* %55)
  store i32* %56, i32** %13, align 8
  br label %57

57:                                               ; preds = %60, %54
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @XMLRPC_GetValueString(i32* %63)
  %65 = call i32 @describe_method(%struct.TYPE_8__* %61, i32* %62, i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = call i32* @XMLRPC_VectorNext(i32* %66)
  store i32* %67, i32** %13, align 8
  br label %57

68:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %50
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %3
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = call i64 @Q_Iter_Head_F(i32* %76)
  store i64 %77, i64* %14, align 8
  br label %78

78:                                               ; preds = %92, %74
  %79 = load i64, i64* %14, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load i64, i64* %14, align 8
  %83 = call %struct.TYPE_7__* @Q_Iter_Get_F(i64 %82)
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %15, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %85 = icmp ne %struct.TYPE_7__* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @XMLRPC_AddValueToVector(i32* %87, i32* %90)
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i64, i64* %14, align 8
  %94 = call i64 @Q_Iter_Next_F(i64 %93)
  store i64 %94, i64* %14, align 8
  br label %78

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95, %71
  %97 = load i32*, i32** %8, align 8
  ret i32* %97
}

declare dso_local i32* @XMLRPC_VectorRewind(i32*) #1

declare dso_local i32* @XMLRPC_RequestGetData(i32) #1

declare dso_local i32* @XMLRPC_CreateVector(i8*, i32) #1

declare dso_local i32 @check_docs_loaded(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @XMLRPC_VectorGetValueWithID(i32, i8*) #1

declare dso_local i32 @XMLRPC_AddValueToVector(i32*, i32*) #1

declare dso_local i64 @XMLRPC_GetValueType(i32*) #1

declare dso_local i32 @describe_method(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @XMLRPC_GetValueString(i32*) #1

declare dso_local i32* @XMLRPC_VectorNext(i32*) #1

declare dso_local i64 @Q_Iter_Head_F(i32*) #1

declare dso_local %struct.TYPE_7__* @Q_Iter_Get_F(i64) #1

declare dso_local i64 @Q_Iter_Next_F(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
