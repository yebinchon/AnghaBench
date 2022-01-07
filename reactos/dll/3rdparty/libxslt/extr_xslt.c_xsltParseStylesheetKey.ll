; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"xsl:key : error missing name\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"xsl:key : error missing match\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"xsl:key : error missing use\0A\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*)* @xsltParseStylesheetKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltParseStylesheetKey(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = icmp eq %struct.TYPE_13__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %13, %2
  br label %140

23:                                               ; preds = %16
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = call i32* @xmlGetNsProp(%struct.TYPE_13__* %24, i32* bitcast ([5 x i8]* @.str to i32*), i32* null)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = call i32* @xsltGetQNameURI(%struct.TYPE_13__* %29, i32** %5)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %33
  br label %105

42:                                               ; preds = %28
  %43 = load i32*, i32** %5, align 8
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32*, i32** %10, align 8
  %48 = call i32* @xmlStrdup(i32* %47)
  store i32* %48, i32** %9, align 8
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49
  br label %63

51:                                               ; preds = %23
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = call i32 @xsltTransformError(i32* null, %struct.TYPE_12__* %52, %struct.TYPE_13__* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = icmp ne %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %51
  br label %105

63:                                               ; preds = %50
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call i32* @xmlGetNsProp(%struct.TYPE_13__* %64, i32* bitcast ([6 x i8]* @.str.2 to i32*), i32* null)
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = call i32 @xsltTransformError(i32* null, %struct.TYPE_12__* %69, %struct.TYPE_13__* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = icmp ne %struct.TYPE_12__* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %68
  br label %105

80:                                               ; preds = %63
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = call i32* @xmlGetNsProp(%struct.TYPE_13__* %81, i32* bitcast ([4 x i8]* @.str.4 to i32*), i32* null)
  store i32* %82, i32** %6, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = call i32 @xsltTransformError(i32* null, %struct.TYPE_12__* %86, %struct.TYPE_13__* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = icmp ne %struct.TYPE_12__* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %85
  br label %105

97:                                               ; preds = %80
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = call i32 @xsltAddKey(%struct.TYPE_12__* %98, i32* %99, i32* %100, i32* %101, i32* %102, %struct.TYPE_13__* %103)
  br label %105

105:                                              ; preds = %97, %96, %79, %62, %41
  %106 = load i32*, i32** %6, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @xmlFree(i32* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32*, i32** %7, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @xmlFree(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32*, i32** %8, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @xmlFree(i32* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32*, i32** %9, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @xmlFree(i32* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @xsltParseContentError(%struct.TYPE_12__* %135, i32* %138)
  br label %140

140:                                              ; preds = %22, %134, %129
  ret void
}

declare dso_local i32* @xmlGetNsProp(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32* @xsltGetQNameURI(%struct.TYPE_13__*, i32**) #1

declare dso_local i32* @xmlStrdup(i32*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @xsltAddKey(%struct.TYPE_12__*, i32*, i32*, i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @xsltParseContentError(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
