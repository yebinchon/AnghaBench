; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_zval_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_zval_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32* }

@XML_TEXT_NODE = common dso_local global i64 0, align 8
@encoding = common dso_local global i32 0, align 4
@XML_CDATA_SECTION_NODE = common dso_local global i64 0, align 8
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Encoding: Violation of encoding rules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, %struct.TYPE_6__*)* @to_zval_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @to_zval_string(i32* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @ZVAL_NULL(i32* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @FIND_XML_NULL(%struct.TYPE_6__* %12, i32* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %121

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %121

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XML_TEXT_NODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %92

37:                                               ; preds = %30
  %38 = load i32, i32* @encoding, align 4
  %39 = call i32* @SOAP_GLOBAL(i32 %38)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @xmlStrlen(i64 %51)
  %53 = call i32 @xmlBufferCreateStatic(i64 %46, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = call i32 (...) @xmlBufferCreate()
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @encoding, align 4
  %56 = call i32* @SOAP_GLOBAL(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @xmlCharEncOutFunc(i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %41
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @xmlBufferContent(i32 %64)
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @ZVAL_STRING(i32* %63, i8* %66)
  br label %77

68:                                               ; preds = %41
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @ZVAL_STRING(i32* %69, i8* %75)
  br label %77

77:                                               ; preds = %68, %62
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @xmlBufferFree(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @xmlBufferFree(i32 %80)
  br label %91

82:                                               ; preds = %37
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @ZVAL_STRING(i32* %83, i8* %89)
  br label %91

91:                                               ; preds = %82, %77
  br label %120

92:                                               ; preds = %30, %22
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %92
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @ZVAL_STRING(i32* %108, i8* %114)
  br label %119

116:                                              ; preds = %100, %92
  %117 = load i32, i32* @E_ERROR, align 4
  %118 = call i32 @soap_error0(i32 %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %107
  br label %120

120:                                              ; preds = %119, %91
  br label %124

121:                                              ; preds = %17, %3
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @ZVAL_EMPTY_STRING(i32* %122)
  br label %124

124:                                              ; preds = %121, %120
  %125 = load i32*, i32** %4, align 8
  ret i32* %125
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @FIND_XML_NULL(%struct.TYPE_6__*, i32*) #1

declare dso_local i32* @SOAP_GLOBAL(i32) #1

declare dso_local i32 @xmlBufferCreateStatic(i64, i32) #1

declare dso_local i32 @xmlStrlen(i64) #1

declare dso_local i32 @xmlBufferCreate(...) #1

declare dso_local i32 @xmlCharEncOutFunc(i32*, i32, i32) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i64 @xmlBufferContent(i32) #1

declare dso_local i32 @xmlBufferFree(i32) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i32 @ZVAL_EMPTY_STRING(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
