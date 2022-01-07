; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc_introspection.c_xi_system_method_signature_cb.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc_introspection.c_xi_system_method_signature_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@xmlrpc_vector_array = common dso_local global i32 0, align 4
@xi_token_signatures = common dso_local global i32 0, align 4
@xi_token_returns = common dso_local global i32 0, align 4
@xi_token_type = common dso_local global i32 0, align 4
@xmlrpc_none = common dso_local global i32 0, align 4
@xi_token_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i8*)* @xi_system_method_signature_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xi_system_method_signature_cb(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @XMLRPC_RequestGetData(i32 %16)
  %18 = call i32* @XMLRPC_VectorRewind(i32* %17)
  %19 = call i8* @XMLRPC_GetValueString(i32* %18)
  store i8* %19, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @check_docs_loaded(i32 %20, i8* %21)
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %95

25:                                               ; preds = %3
  %26 = load i32, i32* %4, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call %struct.TYPE_3__* @find_method(i32 %26, i8* %27)
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %9, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %94

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %94

36:                                               ; preds = %31
  %37 = load i32, i32* @xmlrpc_vector_array, align 4
  %38 = call i32* @XMLRPC_CreateVector(i32* null, i32 %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32, i32* @xmlrpc_vector_array, align 4
  %40 = call i32* @XMLRPC_CreateVector(i32* null, i32 %39)
  store i32* %40, i32** %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @xi_token_signatures, align 4
  %45 = call i32* @XMLRPC_VectorGetValueWithID(i32* %43, i32 %44)
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32* @XMLRPC_VectorRewind(i32* %46)
  store i32* %47, i32** %14, align 8
  br label %48

48:                                               ; preds = %87, %36
  %49 = load i32*, i32** %14, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %93

51:                                               ; preds = %48
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* @xi_token_returns, align 4
  %54 = call i32* @XMLRPC_VectorGetValueWithID(i32* %52, i32 %53)
  %55 = call i32* @XMLRPC_VectorRewind(i32* %54)
  %56 = load i32, i32* @xi_token_type, align 4
  %57 = call i8* @XMLRPC_VectorGetStringWithID(i32* %55, i32 %56)
  store i8* %57, i8** %15, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i8*, i8** %15, align 8
  br label %66

63:                                               ; preds = %51
  %64 = load i32, i32* @xmlrpc_none, align 4
  %65 = call i8* @type_to_str(i32 %64, i32 0)
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i8* [ %62, %61 ], [ %65, %63 ]
  %68 = call i32* @XMLRPC_CreateValueString(i32* null, i8* %67, i32 0)
  %69 = call i32 @XMLRPC_AddValueToVector(i32* %58, i32* %68)
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* @xi_token_params, align 4
  %72 = call i32* @XMLRPC_VectorGetValueWithID(i32* %70, i32 %71)
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i32* @XMLRPC_VectorRewind(i32* %73)
  store i32* %74, i32** %11, align 8
  br label %75

75:                                               ; preds = %78, %66
  %76 = load i32*, i32** %11, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* @xi_token_type, align 4
  %82 = call i8* @XMLRPC_VectorGetStringWithID(i32* %80, i32 %81)
  %83 = call i32* @XMLRPC_CreateValueString(i32* null, i8* %82, i32 0)
  %84 = call i32 @XMLRPC_AddValueToVector(i32* %79, i32* %83)
  %85 = load i32*, i32** %12, align 8
  %86 = call i32* @XMLRPC_VectorNext(i32* %85)
  store i32* %86, i32** %11, align 8
  br label %75

87:                                               ; preds = %75
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @XMLRPC_AddValueToVector(i32* %88, i32* %89)
  %91 = load i32*, i32** %13, align 8
  %92 = call i32* @XMLRPC_VectorNext(i32* %91)
  store i32* %92, i32** %14, align 8
  br label %48

93:                                               ; preds = %48
  br label %94

94:                                               ; preds = %93, %31, %25
  br label %95

95:                                               ; preds = %94, %3
  %96 = load i32*, i32** %8, align 8
  ret i32* %96
}

declare dso_local i8* @XMLRPC_GetValueString(i32*) #1

declare dso_local i32* @XMLRPC_VectorRewind(i32*) #1

declare dso_local i32* @XMLRPC_RequestGetData(i32) #1

declare dso_local i32 @check_docs_loaded(i32, i8*) #1

declare dso_local %struct.TYPE_3__* @find_method(i32, i8*) #1

declare dso_local i32* @XMLRPC_CreateVector(i32*, i32) #1

declare dso_local i32* @XMLRPC_VectorGetValueWithID(i32*, i32) #1

declare dso_local i8* @XMLRPC_VectorGetStringWithID(i32*, i32) #1

declare dso_local i32 @XMLRPC_AddValueToVector(i32*, i32*) #1

declare dso_local i32* @XMLRPC_CreateValueString(i32*, i8*, i32) #1

declare dso_local i8* @type_to_str(i32, i32) #1

declare dso_local i32* @XMLRPC_VectorNext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
