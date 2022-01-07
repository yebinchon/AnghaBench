; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltElementComp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltElementComp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i8*, i32*, i32*, i8*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32 }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XSLT_FUNC_ELEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"xsl:element: The attribute 'name' is missing.\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"xsl:element: The value '%s' of the attribute 'name' is not a valid QName.\0A\00", align 1
@.str.4 = private unnamed_addr constant [174 x i8] c"xsl:element: The prefixed QName '%s' has no namespace binding in scope in the stylesheet; this is an error, since the namespace was not specified by the instruction itself.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"use-attribute-sets\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_19__*)* @xsltElementComp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltElementComp(%struct.TYPE_16__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = icmp eq %struct.TYPE_16__* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = icmp eq %struct.TYPE_19__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %11, %2
  br label %155

21:                                               ; preds = %14
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = load i32, i32* @XSLT_FUNC_ELEMENT, align 4
  %24 = call %struct.TYPE_17__* @xsltNewStylePreComp(%struct.TYPE_16__* %22, i32 %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %5, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = icmp eq %struct.TYPE_17__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %155

28:                                               ; preds = %21
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %31, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 7
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = call i8* @xsltEvalStaticAttrValueTemplate(%struct.TYPE_16__* %35, %struct.TYPE_19__* %36, i32* bitcast ([5 x i8]* @.str to i32*), i32* null, i32* %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %28
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = call i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_16__* %48, %struct.TYPE_19__* %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %154

55:                                               ; preds = %28
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = call i8* @xsltEvalStaticAttrValueTemplate(%struct.TYPE_16__* %56, %struct.TYPE_19__* %57, i32* bitcast ([10 x i8]* @.str.2 to i32*), i32* null, i32* %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %146

67:                                               ; preds = %55
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @xmlValidateQName(i32* %70, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_16__* %74, %struct.TYPE_19__* %75, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32* %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %145

84:                                               ; preds = %67
  store i32* null, i32** %6, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = call i32* @xsltSplitQName(i32 %87, i32* %90, i32** %6)
  store i32* %91, i32** %7, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %134

96:                                               ; preds = %84
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call %struct.TYPE_18__* @xmlSearchNs(i32 %99, %struct.TYPE_19__* %100, i32* %101)
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %8, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %104 = icmp ne %struct.TYPE_18__* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %96
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @xmlDictLookup(i32 %108, i32 %111, i32 -1)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = load i32*, i32** %7, align 8
  br label %133

118:                                              ; preds = %96
  %119 = load i32*, i32** %6, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_16__* %122, %struct.TYPE_19__* %123, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.4, i64 0, i64 0), i32* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %121, %118
  br label %133

133:                                              ; preds = %132, %105
  br label %134

134:                                              ; preds = %133, %84
  %135 = load i32*, i32** %6, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @xmlStrncasecmp(i32* %138, i32* bitcast ([4 x i8]* @.str.5 to i32*), i32 3)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %137, %134
  br label %145

145:                                              ; preds = %144, %73
  br label %146

146:                                              ; preds = %145, %55
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = call i8* @xsltEvalStaticAttrValueTemplate(%struct.TYPE_16__* %147, %struct.TYPE_19__* %148, i32* bitcast ([19 x i8]* @.str.6 to i32*), i32* null, i32* %150)
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %146, %47
  br label %155

155:                                              ; preds = %154, %27, %20
  ret void
}

declare dso_local %struct.TYPE_17__* @xsltNewStylePreComp(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @xsltEvalStaticAttrValueTemplate(%struct.TYPE_16__*, %struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_16__*, %struct.TYPE_19__*, i8*, ...) #1

declare dso_local i64 @xmlValidateQName(i32*, i32) #1

declare dso_local i32* @xsltSplitQName(i32, i32*, i32**) #1

declare dso_local %struct.TYPE_18__* @xmlSearchNs(i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i8* @xmlDictLookup(i32, i32, i32) #1

declare dso_local i32 @xmlStrncasecmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
