; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_imports.c_xsltParseStylesheetImport.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_imports.c_xsltParseStylesheetImport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"xsl:import : missing href attribute\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"xsl:import : invalid URI reference %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"xsl:import : recursion detected on imported URL %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"xsl:import: read rights for %s denied\0A\00", align 1
@XSLT_PARSE_OPTIONS = common dso_local global i32 0, align 4
@XSLT_LOAD_STYLESHEET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"xsl:import : unable to load %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltParseStylesheetImport(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %154

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @xmlGetNsProp(i32* %22, i32* bitcast ([5 x i8]* @.str to i32*), i32* null)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32*, %struct.TYPE_9__*, i32*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_9__* %27, i32* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %134

30:                                               ; preds = %21
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @xmlNodeGetBase(%struct.TYPE_10__* %33, i32* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32* @xmlBuildURI(i32* %36, i32* %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 (i32*, %struct.TYPE_9__*, i32*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_9__* %42, i32* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* %44)
  br label %134

46:                                               ; preds = %30
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %11, align 8
  br label %48

48:                                               ; preds = %71, %46
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = icmp eq %struct.TYPE_10__* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %75

57:                                               ; preds = %51
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @xmlStrEqual(i32 %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 (i32*, %struct.TYPE_9__*, i32*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_9__* %67, i32* %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32* %69)
  br label %134

71:                                               ; preds = %57
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %11, align 8
  br label %48

75:                                               ; preds = %56, %48
  %76 = call i32* (...) @xsltGetDefaultSecurityPrefs()
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i32*, i32** %12, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @xsltCheckRead(i32* %80, i32* null, i32* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 (i32*, %struct.TYPE_9__*, i32*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_9__* null, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32* %86)
  br label %134

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i32*, i32** %10, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @XSLT_PARSE_OPTIONS, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = bitcast %struct.TYPE_9__* %95 to i8*
  %97 = load i32, i32* @XSLT_LOAD_STYLESHEET, align 4
  %98 = call i32* @xsltDocDefaultLoader(i32* %90, i32 %93, i32 %94, i8* %96, i32 %97)
  store i32* %98, i32** %7, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %89
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 (i32*, %struct.TYPE_9__*, i32*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_9__* %102, i32* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32* %104)
  br label %134

106:                                              ; preds = %89
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = call %struct.TYPE_9__* @xsltParseStylesheetImportedDoc(i32* %107, %struct.TYPE_9__* %108)
  store %struct.TYPE_9__* %109, %struct.TYPE_9__** %11, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %111 = icmp ne %struct.TYPE_9__* %110, null
  br i1 %111, label %112, label %130

112:                                              ; preds = %106
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = icmp eq %struct.TYPE_9__* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %112
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %128 = call i32 @xsltFixImportedCompSteps(%struct.TYPE_9__* %126, %struct.TYPE_9__* %127)
  br label %129

129:                                              ; preds = %125, %112
  store i32 0, i32* %6, align 4
  br label %133

130:                                              ; preds = %106
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @xmlFreeDoc(i32* %131)
  br label %133

133:                                              ; preds = %130, %129
  br label %134

134:                                              ; preds = %133, %101, %85, %66, %41, %26
  %135 = load i32*, i32** %9, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @xmlFree(i32* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32*, i32** %8, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @xmlFree(i32* %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32*, i32** %10, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @xmlFree(i32* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %19
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32* @xmlGetNsProp(i32*, i32*, i32*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_9__*, i32*, i8*, ...) #1

declare dso_local i32* @xmlNodeGetBase(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @xmlBuildURI(i32*, i32*) #1

declare dso_local i64 @xmlStrEqual(i32, i32*) #1

declare dso_local i32* @xsltGetDefaultSecurityPrefs(...) #1

declare dso_local i32 @xsltCheckRead(i32*, i32*, i32*) #1

declare dso_local i32* @xsltDocDefaultLoader(i32*, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @xsltParseStylesheetImportedDoc(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @xsltFixImportedCompSteps(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @xmlFreeDoc(i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
