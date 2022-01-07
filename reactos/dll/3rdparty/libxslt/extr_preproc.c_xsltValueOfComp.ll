; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltValueOfComp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltValueOfComp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32*, i32*, %struct.TYPE_16__* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XSLT_FUNC_VALUEOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"disable-output-escaping\00", align 1
@XSLT_NAMESPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"xsl:value-of : disable-output-escaping allows only yes or no\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"xsl:value-of : select is missing\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"xsl:value-of : could not compile select expression '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*)* @xsltValueOfComp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltValueOfComp(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = icmp eq %struct.TYPE_14__* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = icmp eq %struct.TYPE_16__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %9, %2
  br label %116

19:                                               ; preds = %12
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = load i32, i32* @XSLT_FUNC_VALUEOF, align 4
  %22 = call %struct.TYPE_15__* @xsltNewStylePreComp(%struct.TYPE_14__* %20, i32 %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %5, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = icmp eq %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %116

26:                                               ; preds = %19
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 3
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = load i32, i32* @XSLT_NAMESPACE, align 4
  %36 = call i8* @xsltGetCNsProp(%struct.TYPE_14__* %33, %struct.TYPE_16__* %34, i32* bitcast ([24 x i8]* @.str to i32*), i32 %35)
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %26
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @xmlStrEqual(i32* %41, i32* bitcast ([4 x i8]* @.str.1 to i32*))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %64

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @xmlStrEqual(i32* %48, i32* bitcast ([3 x i8]* @.str.2 to i32*))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = call i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_14__* %52, %struct.TYPE_16__* %53, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = icmp ne %struct.TYPE_14__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %51
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %26
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = load i32, i32* @XSLT_NAMESPACE, align 4
  %69 = call i8* @xsltGetCNsProp(%struct.TYPE_14__* %66, %struct.TYPE_16__* %67, i32* bitcast ([7 x i8]* @.str.4 to i32*), i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %65
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = call i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_14__* %78, %struct.TYPE_16__* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = icmp ne %struct.TYPE_14__* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %77
  br label %116

89:                                               ; preds = %65
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32* @xsltXPathCompile(%struct.TYPE_14__* %90, i32* %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %116

101:                                              ; preds = %89
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_14__* %102, %struct.TYPE_16__* %103, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32* %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = icmp ne %struct.TYPE_14__* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %110, %101
  br label %116

116:                                              ; preds = %18, %25, %88, %115, %89
  ret void
}

declare dso_local %struct.TYPE_15__* @xsltNewStylePreComp(%struct.TYPE_14__*, i32) #1

declare dso_local i8* @xsltGetCNsProp(%struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32* @xsltXPathCompile(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
