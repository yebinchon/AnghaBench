; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltElementAvailableFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltElementAvailableFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32* }

@.str = private unnamed_addr constant [46 x i8] c"element-available() : expects one string arg\0A\00", align 1
@XPATH_INVALID_ARITY = common dso_local global i32 0, align 4
@XPATH_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"element-available() : invalid arg expecting a string\0A\00", align 1
@XPATH_INVALID_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"element-available() : internal error tctxt == NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"element-available() : prefix %s is not bound\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltElementAvailableFunction(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = call %struct.TYPE_20__* @xsltXPathGetTransformContext(%struct.TYPE_21__* %14)
  %16 = call i32 (%struct.TYPE_20__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_20__* %15, i32* null, i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @XPATH_INVALID_ARITY, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %133

20:                                               ; preds = %2
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %22 = call i32 @xmlXPathStringFunction(%struct.TYPE_21__* %21, i32 1)
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = icmp eq %struct.TYPE_19__* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XPATH_STRING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27, %20
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = call %struct.TYPE_20__* @xsltXPathGetTransformContext(%struct.TYPE_21__* %36)
  %38 = call i32 (%struct.TYPE_20__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_20__* %37, i32* null, i32* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @XPATH_INVALID_TYPE, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %133

42:                                               ; preds = %27
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %44 = call %struct.TYPE_22__* @valuePop(%struct.TYPE_21__* %43)
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %5, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %46 = call %struct.TYPE_20__* @xsltXPathGetTransformContext(%struct.TYPE_21__* %45)
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %9, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %48 = icmp eq %struct.TYPE_20__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = icmp eq %struct.TYPE_18__* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49, %42
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %56 = call %struct.TYPE_20__* @xsltXPathGetTransformContext(%struct.TYPE_21__* %55)
  %57 = call i32 (%struct.TYPE_20__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_20__* %56, i32* null, i32* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = call i32 @xmlXPathFreeObject(%struct.TYPE_22__* %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %61 = call i32 @xmlXPathNewBoolean(i32 0)
  %62 = call i32 @valuePush(%struct.TYPE_21__* %60, i32 %61)
  br label %133

63:                                               ; preds = %49
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @xmlSplitQName2(i32 %66, i32** %6)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %63
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @xmlStrdup(i32 %73)
  store i32* %74, i32** %7, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = call %struct.TYPE_23__* @xmlSearchNs(i32 %79, %struct.TYPE_18__* %82, i32* null)
  store %struct.TYPE_23__* %83, %struct.TYPE_23__** %10, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %85 = icmp ne %struct.TYPE_23__* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %70
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %8, align 8
  br label %90

90:                                               ; preds = %86, %70
  br label %105

91:                                               ; preds = %63
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32* @xmlXPathNsLookup(i32 %94, i32* %95)
  store i32* %96, i32** %8, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %101 = call %struct.TYPE_20__* @xsltXPathGetTransformContext(%struct.TYPE_21__* %100)
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 (%struct.TYPE_20__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_20__* %101, i32* null, i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32* %102)
  br label %104

104:                                              ; preds = %99, %91
  br label %105

105:                                              ; preds = %104, %90
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = call i32* @xsltExtElementLookup(%struct.TYPE_20__* %106, i32* %107, i32* %108)
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %113 = call i32 @xmlXPathNewBoolean(i32 1)
  %114 = call i32 @valuePush(%struct.TYPE_21__* %112, i32 %113)
  br label %119

115:                                              ; preds = %105
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %117 = call i32 @xmlXPathNewBoolean(i32 0)
  %118 = call i32 @valuePush(%struct.TYPE_21__* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %111
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = call i32 @xmlXPathFreeObject(%struct.TYPE_22__* %120)
  %122 = load i32*, i32** %7, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @xmlFree(i32* %125)
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i32*, i32** %6, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @xmlFree(i32* %131)
  br label %133

133:                                              ; preds = %13, %35, %54, %130, %127
  ret void
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_20__*, i32*, i32*, i8*, ...) #1

declare dso_local %struct.TYPE_20__* @xsltXPathGetTransformContext(%struct.TYPE_21__*) #1

declare dso_local i32 @xmlXPathStringFunction(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_22__* @valuePop(%struct.TYPE_21__*) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_22__*) #1

declare dso_local i32 @valuePush(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @xmlXPathNewBoolean(i32) #1

declare dso_local i32* @xmlSplitQName2(i32, i32**) #1

declare dso_local i32* @xmlStrdup(i32) #1

declare dso_local %struct.TYPE_23__* @xmlSearchNs(i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32* @xmlXPathNsLookup(i32, i32*) #1

declare dso_local i32* @xsltExtElementLookup(%struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
