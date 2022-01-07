; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_documents.c_xsltLoadDocument.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_documents.c_xsltLoadDocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i64, i64, i32, i32, %struct.TYPE_14__*, i32* }

@.str = private unnamed_addr constant [45 x i8] c"xsltLoadDocument: read rights for %s denied\0A\00", align 1
@XSLT_LOAD_DOCUMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"xsltLoadDocument(%s) : XInclude processing not compiled in\0A\00", align 1
@XSLT_DEBUG_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @xsltLoadDocument(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = icmp eq %struct.TYPE_13__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %115

15:                                               ; preds = %11
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @xsltCheckRead(i32* %23, %struct.TYPE_13__* %24, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @xsltTransformError(%struct.TYPE_13__* %30, i32* null, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32* %31)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %115

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %15
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %6, align 8
  br label %38

38:                                               ; preds = %64, %34
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @xmlStrEqual(i32* %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %3, align 8
  br label %115

64:                                               ; preds = %53, %46, %41
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %6, align 8
  br label %38

68:                                               ; preds = %38
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = bitcast %struct.TYPE_13__* %76 to i8*
  %78 = load i32, i32* @XSLT_LOAD_DOCUMENT, align 4
  %79 = call i32* @xsltDocDefaultLoader(i32* %69, i32 %72, i32 %75, i8* %77, i32 %78)
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %115

83:                                               ; preds = %68
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @xsltTransformError(%struct.TYPE_13__* %89, i32* null, i32* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* %90)
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = call i64 @xsltNeedElemSpaceHandling(%struct.TYPE_13__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @xmlDocGetRootElement(i32* %98)
  %100 = call i32 @xsltApplyStripSpaces(%struct.TYPE_13__* %97, i32 %99)
  br label %101

101:                                              ; preds = %96, %92
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @XSLT_DEBUG_NONE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @xmlXPathOrderDocElems(i32* %108)
  br label %110

110:                                              ; preds = %107, %101
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call %struct.TYPE_14__* @xsltNewDocument(%struct.TYPE_13__* %111, i32* %112)
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %6, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %3, align 8
  br label %115

115:                                              ; preds = %110, %82, %62, %29, %14
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %116
}

declare dso_local i32 @xsltCheckRead(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_13__*, i32*, i32*, i8*, i32*) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local i32* @xsltDocDefaultLoader(i32*, i32, i32, i8*, i32) #1

declare dso_local i64 @xsltNeedElemSpaceHandling(%struct.TYPE_13__*) #1

declare dso_local i32 @xsltApplyStripSpaces(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xmlDocGetRootElement(i32*) #1

declare dso_local i32 @xmlXPathOrderDocElems(i32*) #1

declare dso_local %struct.TYPE_14__* @xsltNewDocument(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
