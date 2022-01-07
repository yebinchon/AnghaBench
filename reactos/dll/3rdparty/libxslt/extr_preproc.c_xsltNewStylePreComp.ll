; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltNewStylePreComp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltNewStylePreComp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32* }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"xsltNewStylePreComp : malloc failed\0A\00", align 1
@xsltCopy = common dso_local global i32* null, align 8
@xsltSort = common dso_local global i32* null, align 8
@xsltText = common dso_local global i32* null, align 8
@xsltElement = common dso_local global i32* null, align 8
@xsltAttribute = common dso_local global i32* null, align 8
@xsltComment = common dso_local global i32* null, align 8
@xsltProcessingInstruction = common dso_local global i32* null, align 8
@xsltCopyOf = common dso_local global i32* null, align 8
@xsltValueOf = common dso_local global i32* null, align 8
@xsltNumber = common dso_local global i32* null, align 8
@xsltApplyImports = common dso_local global i32* null, align 8
@xsltCallTemplate = common dso_local global i32* null, align 8
@xsltApplyTemplates = common dso_local global i32* null, align 8
@xsltChoose = common dso_local global i32* null, align 8
@xsltIf = common dso_local global i32* null, align 8
@xsltForEach = common dso_local global i32* null, align 8
@xsltDocumentElem = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"xsltNewStylePreComp : no function for type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i32)* @xsltNewStylePreComp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @xsltNewStylePreComp(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %125

10:                                               ; preds = %2
  %11 = call i64 @xmlMalloc(i32 4)
  %12 = inttoptr i64 %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = call i32 (i32*, %struct.TYPE_7__*, i32*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_7__* %16, i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %125

22:                                               ; preds = %10
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = call i32 @memset(%struct.TYPE_8__* %23, i32 0, i32 4)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %100 [
    i32 143, label %31
    i32 133, label %35
    i32 132, label %39
    i32 140, label %43
    i32 147, label %47
    i32 144, label %51
    i32 134, label %55
    i32 142, label %59
    i32 131, label %63
    i32 137, label %67
    i32 149, label %71
    i32 146, label %75
    i32 148, label %79
    i32 145, label %83
    i32 138, label %87
    i32 139, label %91
    i32 141, label %95
    i32 128, label %99
    i32 135, label %99
    i32 130, label %99
    i32 129, label %99
  ]

31:                                               ; preds = %22
  %32 = load i32*, i32** @xsltCopy, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  br label %114

35:                                               ; preds = %22
  %36 = load i32*, i32** @xsltSort, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  br label %114

39:                                               ; preds = %22
  %40 = load i32*, i32** @xsltText, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  br label %114

43:                                               ; preds = %22
  %44 = load i32*, i32** @xsltElement, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  br label %114

47:                                               ; preds = %22
  %48 = load i32*, i32** @xsltAttribute, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  br label %114

51:                                               ; preds = %22
  %52 = load i32*, i32** @xsltComment, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  br label %114

55:                                               ; preds = %22
  %56 = load i32*, i32** @xsltProcessingInstruction, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  br label %114

59:                                               ; preds = %22
  %60 = load i32*, i32** @xsltCopyOf, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  br label %114

63:                                               ; preds = %22
  %64 = load i32*, i32** @xsltValueOf, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  br label %114

67:                                               ; preds = %22
  %68 = load i32*, i32** @xsltNumber, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  br label %114

71:                                               ; preds = %22
  %72 = load i32*, i32** @xsltApplyImports, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  br label %114

75:                                               ; preds = %22
  %76 = load i32*, i32** @xsltCallTemplate, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  br label %114

79:                                               ; preds = %22
  %80 = load i32*, i32** @xsltApplyTemplates, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  br label %114

83:                                               ; preds = %22
  %84 = load i32*, i32** @xsltChoose, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store i32* %84, i32** %86, align 8
  br label %114

87:                                               ; preds = %22
  %88 = load i32*, i32** @xsltIf, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store i32* %88, i32** %90, align 8
  br label %114

91:                                               ; preds = %22
  %92 = load i32*, i32** @xsltForEach, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  br label %114

95:                                               ; preds = %22
  %96 = load i32*, i32** @xsltDocumentElem, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  store i32* %96, i32** %98, align 8
  br label %114

99:                                               ; preds = %22, %22, %22, %22
  br label %114

100:                                              ; preds = %22
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (i32*, %struct.TYPE_7__*, i32*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_7__* %106, i32* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %105, %100
  br label %114

114:                                              ; preds = %113, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = ptrtoint %struct.TYPE_8__* %120 to i64
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %3, align 8
  br label %125

125:                                              ; preds = %114, %15, %9
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %126
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_7__*, i32*, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
