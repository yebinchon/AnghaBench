; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltDocumentFunctionLoadDocument.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltDocumentFunctionLoadDocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_21__ = type { %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"document() : internal error tctxt == NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"document() : failed to parse URI\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"document() : XPointer does not select a node set: #%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @xsltDocumentFunctionLoadDocument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltDocumentFunctionLoadDocument(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %10, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_20__* @xsltXPathGetTransformContext(i32 %13)
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = icmp eq %struct.TYPE_20__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = call i32 (%struct.TYPE_20__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_20__* null, i32* null, i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.TYPE_22__* @xmlXPathNewNodeSet(i32* null)
  %21 = call i32 @valuePush(i32 %19, %struct.TYPE_22__* %20)
  br label %144

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call %struct.TYPE_23__* @xmlParseURI(i8* %23)
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %6, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %26 = icmp eq %struct.TYPE_23__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = call i32 (%struct.TYPE_20__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_20__* %28, i32* null, i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %3, align 4
  %31 = call %struct.TYPE_22__* @xmlXPathNewNodeSet(i32* null)
  %32 = call i32 @valuePush(i32 %30, %struct.TYPE_22__* %31)
  br label %144

33:                                               ; preds = %22
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %44 = call i8* @xmlSaveUri(%struct.TYPE_23__* %43)
  store i8* %44, i8** %12, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call %struct.TYPE_21__* @xsltLoadDocument(%struct.TYPE_20__* %45, i8* %46)
  store %struct.TYPE_21__* %47, %struct.TYPE_21__** %8, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @xmlFree(i8* %48)
  br label %54

50:                                               ; preds = %33
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call %struct.TYPE_21__* @xsltLoadDocument(%struct.TYPE_20__* %51, i8* %52)
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %8, align 8
  br label %54

54:                                               ; preds = %50, %40
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %56 = call i32 @xmlFreeURI(%struct.TYPE_23__* %55)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = icmp eq %struct.TYPE_21__* %57, null
  br i1 %58, label %59, label %103

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %86, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 35
  br i1 %67, label %86, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = icmp ne %struct.TYPE_24__* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %68
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = call i64 @xmlStrEqual(i32 %82, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %75, %62, %59
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  store %struct.TYPE_24__* %91, %struct.TYPE_24__** %9, align 8
  br label %102

92:                                               ; preds = %75, %68
  %93 = load i32, i32* %3, align 4
  %94 = call %struct.TYPE_22__* @xmlXPathNewNodeSet(i32* null)
  %95 = call i32 @valuePush(i32 %93, %struct.TYPE_22__* %94)
  %96 = load i8*, i8** %7, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @xmlFree(i8* %99)
  br label %101

101:                                              ; preds = %98, %92
  br label %144

102:                                              ; preds = %86
  br label %107

103:                                              ; preds = %54
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  store %struct.TYPE_24__* %106, %struct.TYPE_24__** %9, align 8
  br label %107

107:                                              ; preds = %103, %102
  %108 = load i8*, i8** %7, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %113 = bitcast %struct.TYPE_24__* %112 to i32*
  %114 = call %struct.TYPE_22__* @xmlXPathNewNodeSet(i32* %113)
  %115 = call i32 @valuePush(i32 %111, %struct.TYPE_22__* %114)
  br label %144

116:                                              ; preds = %107
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %118 = icmp eq %struct.TYPE_22__* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %138

120:                                              ; preds = %116
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %129 [
    i32 135, label %124
    i32 130, label %125
    i32 137, label %125
    i32 134, label %125
    i32 131, label %125
    i32 133, label %125
    i32 129, label %125
    i32 128, label %125
    i32 132, label %125
    i32 136, label %125
  ]

124:                                              ; preds = %120
  br label %129

125:                                              ; preds = %120, %120, %120, %120, %120, %120, %120, %120, %120
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 (%struct.TYPE_20__*, i32*, i32*, i8*, ...) @xsltTransformError(%struct.TYPE_20__* %126, i32* null, i32* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %127)
  br label %135

129:                                              ; preds = %120, %124
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %132 = call i32 @valuePush(i32 %130, %struct.TYPE_22__* %131)
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @xmlFree(i8* %133)
  br label %144

135:                                              ; preds = %125
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %137 = call i32 @xmlXPathFreeObject(%struct.TYPE_22__* %136)
  br label %138

138:                                              ; preds = %135, %119
  %139 = load i32, i32* %3, align 4
  %140 = call %struct.TYPE_22__* @xmlXPathNewNodeSet(i32* null)
  %141 = call i32 @valuePush(i32 %139, %struct.TYPE_22__* %140)
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @xmlFree(i8* %142)
  br label %144

144:                                              ; preds = %138, %129, %110, %101, %27, %17
  ret void
}

declare dso_local %struct.TYPE_20__* @xsltXPathGetTransformContext(i32) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_20__*, i32*, i32*, i8*, ...) #1

declare dso_local i32 @valuePush(i32, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @xmlXPathNewNodeSet(i32*) #1

declare dso_local %struct.TYPE_23__* @xmlParseURI(i8*) #1

declare dso_local i8* @xmlSaveUri(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_21__* @xsltLoadDocument(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i32 @xmlFreeURI(%struct.TYPE_23__*) #1

declare dso_local i64 @xmlStrEqual(i32, i8*) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
