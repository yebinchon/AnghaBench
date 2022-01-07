; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltFunctionAvailableFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltFunctionAvailableFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"function-available() : expects one string arg\0A\00", align 1
@XPATH_INVALID_ARITY = common dso_local global i32 0, align 4
@XPATH_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"function-available() : invalid arg expecting a string\0A\00", align 1
@XPATH_INVALID_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"function-available() : prefix %s is not bound\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltFunctionAvailableFunction(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call i32 @xsltXPathGetTransformContext(%struct.TYPE_12__* %12)
  %14 = call i32 (i32, i32*, i32*, i8*, ...) @xsltTransformError(i32 %13, i32* null, i32* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @XPATH_INVALID_ARITY, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %98

18:                                               ; preds = %2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = call i32 @xmlXPathStringFunction(%struct.TYPE_12__* %19, i32 1)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = icmp eq %struct.TYPE_11__* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XPATH_STRING, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %25, %18
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i32 @xsltXPathGetTransformContext(%struct.TYPE_12__* %34)
  %36 = call i32 (i32, i32*, i32*, i8*, ...) @xsltTransformError(i32 %35, i32* null, i32* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @XPATH_INVALID_TYPE, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %98

40:                                               ; preds = %25
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = call %struct.TYPE_13__* @valuePop(%struct.TYPE_12__* %41)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %5, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @xmlSplitQName2(i32 %45, i32** %6)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @xmlStrdup(i32 %52)
  store i32* %53, i32** %7, align 8
  br label %68

54:                                               ; preds = %40
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @xmlXPathNsLookup(i32 %57, i32* %58)
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = call i32 @xsltXPathGetTransformContext(%struct.TYPE_12__* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 (i32, i32*, i32*, i8*, ...) @xsltTransformError(i32 %64, i32* null, i32* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32* %65)
  br label %67

67:                                               ; preds = %62, %54
  br label %68

68:                                               ; preds = %67, %49
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32* @xmlXPathFunctionLookupNS(i32 %71, i32* %72, i32* %73)
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = call i32 @xmlXPathNewBoolean(i32 1)
  %79 = call i32 @valuePush(%struct.TYPE_12__* %77, i32 %78)
  br label %84

80:                                               ; preds = %68
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = call i32 @xmlXPathNewBoolean(i32 0)
  %83 = call i32 @valuePush(%struct.TYPE_12__* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = call i32 @xmlXPathFreeObject(%struct.TYPE_13__* %85)
  %87 = load i32*, i32** %7, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @xmlFree(i32* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32*, i32** %6, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @xmlFree(i32* %96)
  br label %98

98:                                               ; preds = %11, %33, %95, %92
  ret void
}

declare dso_local i32 @xsltTransformError(i32, i32*, i32*, i8*, ...) #1

declare dso_local i32 @xsltXPathGetTransformContext(%struct.TYPE_12__*) #1

declare dso_local i32 @xmlXPathStringFunction(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_13__* @valuePop(%struct.TYPE_12__*) #1

declare dso_local i32* @xmlSplitQName2(i32, i32**) #1

declare dso_local i32* @xmlStrdup(i32) #1

declare dso_local i32* @xmlXPathNsLookup(i32, i32*) #1

declare dso_local i32* @xmlXPathFunctionLookupNS(i32, i32*, i32*) #1

declare dso_local i32 @valuePush(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xmlXPathNewBoolean(i32) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_13__*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
