; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc_introspection.c_XMLRPC_ServerAddIntrospectionData.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc_introspection.c_XMLRPC_ServerAddIntrospectionData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"typeList\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"methodList\00", align 1
@xi_token_name = common dso_local global i32 0, align 4
@xmlrpc_vector_struct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XMLRPC_ServerAddIntrospectionData(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %113

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %113

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @XMLRPC_VectorGetValueWithID(i64 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @XMLRPC_VectorGetValueWithID(i64 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 %23, i64* %7, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @XMLRPC_VectorGetValueWithID(i64 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %19
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @XMLRPC_VectorRewind(i64 %31)
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %60, %30
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* @xi_token_name, align 4
  %39 = call i8* @XMLRPC_VectorGetStringWithID(i64 %37, i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call %struct.TYPE_6__* @find_method(%struct.TYPE_7__* %40, i8* %41)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %11, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @XMLRPC_CleanupValue(i64 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @XMLRPC_CopyValue(i64 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %55, %36
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @XMLRPC_VectorNext(i64 %61)
  store i64 %62, i64* %9, align 8
  br label %33

63:                                               ; preds = %33
  br label %64

64:                                               ; preds = %63, %19
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %64
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @xmlrpc_vector_struct, align 4
  %77 = call i64 @XMLRPC_CreateVector(i32* null, i32 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @XMLRPC_AddValueToVector(i64 %83, i64 %84)
  store i32 1, i32* %5, align 4
  br label %111

86:                                               ; preds = %67
  %87 = load i64, i64* %6, align 8
  %88 = call i64 @XMLRPC_VectorRewind(i64 %87)
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %104, %86
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* @xi_token_name, align 4
  %96 = call i8* @XMLRPC_VectorGetStringWithID(i64 %94, i32 %95)
  %97 = call i64 @find_named_value(i64 %93, i8* %96)
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* %13, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @XMLRPC_VectorRemoveValue(i64 %101, i64 %102)
  br label %104

104:                                              ; preds = %100, %92
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @XMLRPC_AddValueToVector(i64 %105, i64 %106)
  store i32 1, i32* %5, align 4
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @XMLRPC_VectorNext(i64 %108)
  store i64 %109, i64* %12, align 8
  br label %89

110:                                              ; preds = %89
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111, %64
  br label %113

113:                                              ; preds = %112, %16, %2
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @XMLRPC_VectorGetValueWithID(i64, i8*) #1

declare dso_local i64 @XMLRPC_VectorRewind(i64) #1

declare dso_local i8* @XMLRPC_VectorGetStringWithID(i64, i32) #1

declare dso_local %struct.TYPE_6__* @find_method(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @XMLRPC_CleanupValue(i64) #1

declare dso_local i64 @XMLRPC_CopyValue(i64) #1

declare dso_local i64 @XMLRPC_VectorNext(i64) #1

declare dso_local i64 @XMLRPC_CreateVector(i32*, i32) #1

declare dso_local i32 @XMLRPC_AddValueToVector(i64, i64) #1

declare dso_local i64 @find_named_value(i64, i8*) #1

declare dso_local i32 @XMLRPC_VectorRemoveValue(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
