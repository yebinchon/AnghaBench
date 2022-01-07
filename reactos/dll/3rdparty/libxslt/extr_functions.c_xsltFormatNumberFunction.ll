; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltFormatNumberFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltFormatNumberFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32* }

@CAST_TO_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"format-number : No namespace found for QName '%s:%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"format-number() : undeclared decimal format '%s'\0A\00", align 1
@CAST_TO_NUMBER = common dso_local global i32 0, align 4
@XPATH_INVALID_ARITY = common dso_local global i32 0, align 4
@XPATH_EXPRESSION_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltFormatNumberFunction(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.TYPE_13__* @xsltXPathGetTransformContext(i32 %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %14, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = icmp eq %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %2
  br label %136

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %8, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = icmp eq %struct.TYPE_14__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %136

33:                                               ; preds = %26
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %9, align 8
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %104 [
    i32 3, label %38
    i32 2, label %97
  ]

38:                                               ; preds = %33
  %39 = load i32, i32* @CAST_TO_STRING, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call %struct.TYPE_15__* @valuePop(i32 %40)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %7, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @xsltSplitQName(i32 %44, i32 %47, i32** %12)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %38
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call %struct.TYPE_16__* @xmlSearchNs(i32 %56, %struct.TYPE_12__* %59, i32* %60)
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %15, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %63 = icmp eq %struct.TYPE_16__* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %51
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = ptrtoint i32* %66 to i32
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 (%struct.TYPE_13__*, i32*, i32*, i8*, i32, ...) @xsltTransformError(%struct.TYPE_13__* %65, i32* null, i32* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %67, i32* %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  store i32* null, i32** %11, align 8
  br label %78

74:                                               ; preds = %51
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %13, align 8
  br label %78

78:                                               ; preds = %74, %64
  br label %79

79:                                               ; preds = %78, %38
  %80 = load i32*, i32** %11, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32* @xsltDecimalFormatGetByQName(%struct.TYPE_14__* %83, i32* %84, i32* %85)
  store i32* %86, i32** %9, align 8
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32*, i32** %9, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.TYPE_13__*, i32*, i32*, i8*, i32, ...) @xsltTransformError(%struct.TYPE_13__* %91, i32* null, i32* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %87
  br label %97

97:                                               ; preds = %33, %96
  %98 = load i32, i32* @CAST_TO_STRING, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call %struct.TYPE_15__* @valuePop(i32 %99)
  store %struct.TYPE_15__* %100, %struct.TYPE_15__** %6, align 8
  %101 = load i32, i32* @CAST_TO_NUMBER, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call %struct.TYPE_15__* @valuePop(i32 %102)
  store %struct.TYPE_15__* %103, %struct.TYPE_15__** %5, align 8
  br label %107

104:                                              ; preds = %33
  %105 = load i32, i32* @XPATH_INVALID_ARITY, align 4
  %106 = call i32 @XP_ERROR(i32 %105)
  br label %107

107:                                              ; preds = %104, %97
  %108 = load i32*, i32** %9, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load i32*, i32** %9, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @xsltFormatNumberConversion(i32* %111, i32 %114, i32 %117, i32** %10)
  %119 = load i64, i64* @XPATH_EXPRESSION_OK, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load i32, i32* %3, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @xmlXPathNewString(i32* %123)
  %125 = call i32 @valuePush(i32 %122, i32 %124)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @xmlFree(i32* %126)
  br label %128

128:                                              ; preds = %121, %110
  br label %129

129:                                              ; preds = %128, %107
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = call i32 @xmlXPathFreeObject(%struct.TYPE_15__* %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = call i32 @xmlXPathFreeObject(%struct.TYPE_15__* %132)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %135 = call i32 @xmlXPathFreeObject(%struct.TYPE_15__* %134)
  br label %136

136:                                              ; preds = %129, %32, %25
  ret void
}

declare dso_local %struct.TYPE_13__* @xsltXPathGetTransformContext(i32) #1

declare dso_local %struct.TYPE_15__* @valuePop(i32) #1

declare dso_local i32* @xsltSplitQName(i32, i32, i32**) #1

declare dso_local %struct.TYPE_16__* @xmlSearchNs(i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_13__*, i32*, i32*, i8*, i32, ...) #1

declare dso_local i32* @xsltDecimalFormatGetByQName(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @XP_ERROR(i32) #1

declare dso_local i64 @xsltFormatNumberConversion(i32*, i32, i32, i32**) #1

declare dso_local i32 @valuePush(i32, i32) #1

declare dso_local i32 @xmlXPathNewString(i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
