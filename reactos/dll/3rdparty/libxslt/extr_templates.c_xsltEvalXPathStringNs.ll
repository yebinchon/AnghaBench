; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_templates.c_xsltEvalXPathStringNs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_templates.c_xsltEvalXPathStringNs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__*, i8*, i32*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, i8* }
%struct.TYPE_12__ = type { i64, i32* }

@.str = private unnamed_addr constant [50 x i8] c"xsltEvalXPathStringNs: No context or instruction\0A\00", align 1
@XPATH_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"xpath : string() function didn't return a String\0A\00", align 1
@XSLT_STATE_STOPPED = common dso_local global i32 0, align 4
@XSLT_TRACE_TEMPLATES = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltEvalXPathStringNs(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = call i32 @xsltTransformError(%struct.TYPE_11__* %26, i32* null, i32* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %140

28:                                               ; preds = %20
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %12, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %13, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %16, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %17, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 4
  store i8* %58, i8** %62, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  store i32* %63, i32** %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  store i32 %68, i32* %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = call %struct.TYPE_12__* @xmlXPathCompiledEval(i32 %73, %struct.TYPE_13__* %76)
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %11, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %79 = icmp ne %struct.TYPE_12__* %78, null
  br i1 %79, label %80, label %107

80:                                               ; preds = %28
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @XPATH_STRING, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %88 = call %struct.TYPE_12__* @xmlXPathConvertString(%struct.TYPE_12__* %87)
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %11, align 8
  br label %89

89:                                               ; preds = %86, %80
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @XPATH_STRING, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %10, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  br label %104

101:                                              ; preds = %89
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = call i32 @xsltTransformError(%struct.TYPE_11__* %102, i32* null, i32* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %106 = call i32 @xmlXPathFreeObject(%struct.TYPE_12__* %105)
  br label %111

107:                                              ; preds = %28
  %108 = load i32, i32* @XSLT_STATE_STOPPED, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i8*, i8** %12, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  store i32* %113, i32** %115, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  store i32 %129, i32* %133, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 3
  store i32* %134, i32** %138, align 8
  %139 = load i32*, i32** %10, align 8
  store i32* %139, i32** %5, align 8
  br label %140

140:                                              ; preds = %111, %25
  %141 = load i32*, i32** %5, align 8
  ret i32* %141
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_11__*, i32*, i32*, i8*) #1

declare dso_local %struct.TYPE_12__* @xmlXPathCompiledEval(i32, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @xmlXPathConvertString(%struct.TYPE_12__*) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
