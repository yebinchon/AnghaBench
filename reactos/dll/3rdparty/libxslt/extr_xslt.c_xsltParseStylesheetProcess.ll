; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetProcess.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32*, i32, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"xsltParseStylesheetProcess : empty stylesheet\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"stylesheet\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@XSLT_NAMESPACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"xsltParseStylesheetProcess : document is not a stylesheet\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"xsl:version: only 1.1 features are supported\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @xsltParseStylesheetProcess(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %9 = call i32 (...) @xsltInitGlobals()
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %11 = icmp eq %struct.TYPE_19__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %143

13:                                               ; preds = %2
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = icmp eq %struct.TYPE_18__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %3, align 8
  br label %143

18:                                               ; preds = %13
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = call i32* @xmlDocGetRootElement(%struct.TYPE_19__* %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = bitcast %struct.TYPE_19__* %25 to i32*
  %27 = call i32 @xsltTransformError(i32* null, %struct.TYPE_18__* %24, i32* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %143

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @IS_XSLT_ELEM(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @IS_XSLT_NAME(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @IS_XSLT_NAME(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36, %32
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @xsltParseStylesheetExcludePrefix(%struct.TYPE_18__* %43, i32* %44, i32 1)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @xsltParseStylesheetExtPrefix(%struct.TYPE_18__* %46, i32* %47, i32 1)
  br label %58

49:                                               ; preds = %36, %28
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @xsltParseStylesheetExcludePrefix(%struct.TYPE_18__* %50, i32* %51, i32 0)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @xsltParseStylesheetExtPrefix(%struct.TYPE_18__* %53, i32* %54, i32 0)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %49, %40
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @xsltPreprocessStylesheet(%struct.TYPE_18__* %64, i32* %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @xsltParseStylesheetTop(%struct.TYPE_18__* %73, i32* %74)
  br label %141

76:                                               ; preds = %67
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @XSLT_NAMESPACE, align 4
  %79 = call i32* @xmlGetNsProp(i32* %77, i32* bitcast ([8 x i8]* @.str.3 to i32*), i32 %78)
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @xsltTransformError(i32* null, %struct.TYPE_18__* %83, i32* %84, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %143

86:                                               ; preds = %76
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @xmlStrEqual(i32* %87, i32* bitcast ([4 x i8]* @.str.5 to i32*))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @xmlStrEqual(i32* %91, i32* bitcast ([4 x i8]* @.str.6 to i32*))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @xsltTransformError(i32* null, %struct.TYPE_18__* %95, i32* %96, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %94, %90, %86
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @xmlFree(i32* %105)
  %107 = call %struct.TYPE_17__* (...) @xsltNewTemplate()
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %8, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %109 = icmp eq %struct.TYPE_17__* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %143

111:                                              ; preds = %104
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %116, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  store %struct.TYPE_17__* %117, %struct.TYPE_17__** %119, align 8
  %120 = call i32 @xmlStrdup(i32* bitcast ([2 x i8]* @.str.8 to i32*))
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %125 = bitcast %struct.TYPE_19__* %124 to i32*
  %126 = call i32 @xsltParseTemplateContent(%struct.TYPE_18__* %123, i32* %125)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %128 = bitcast %struct.TYPE_19__* %127 to i32*
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %138 = call i32 @xsltAddTemplate(%struct.TYPE_18__* %136, %struct.TYPE_17__* %137, i32* null, i32* null)
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %111, %72
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %142, %struct.TYPE_18__** %3, align 8
  br label %143

143:                                              ; preds = %141, %110, %82, %23, %16, %12
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %144
}

declare dso_local i32 @xsltInitGlobals(...) #1

declare dso_local i32* @xmlDocGetRootElement(%struct.TYPE_19__*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_18__*, i32*, i8*) #1

declare dso_local i64 @IS_XSLT_ELEM(i32*) #1

declare dso_local i64 @IS_XSLT_NAME(i32*, i8*) #1

declare dso_local i32 @xsltParseStylesheetExcludePrefix(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @xsltParseStylesheetExtPrefix(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @xsltPreprocessStylesheet(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @xsltParseStylesheetTop(%struct.TYPE_18__*, i32*) #1

declare dso_local i32* @xmlGetNsProp(i32*, i32*, i32) #1

declare dso_local i32 @xmlStrEqual(i32*, i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local %struct.TYPE_17__* @xsltNewTemplate(...) #1

declare dso_local i32 @xmlStrdup(i32*) #1

declare dso_local i32 @xsltParseTemplateContent(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @xsltAddTemplate(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
