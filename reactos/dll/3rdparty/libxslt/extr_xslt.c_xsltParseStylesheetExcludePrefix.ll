; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetExcludePrefix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetExcludePrefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"exclude-result-prefixes\00", align 1
@XSLT_NAMESPACE = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"#default\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"xsl:exclude-result-prefixes : undefined namespace %s\0A\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_14__*, i32)* @xsltParseStylesheetExcludePrefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltParseStylesheetExcludePrefix(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = icmp eq %struct.TYPE_14__* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %15, %3
  store i32 0, i32* %4, align 4
  br label %142

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = call i64* @xmlGetNsProp(%struct.TYPE_14__* %29, i64* bitcast ([24 x i8]* @.str to i64*), i32* null)
  store i64* %30, i64** %9, align 8
  br label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = load i32*, i32** @XSLT_NAMESPACE, align 8
  %34 = call i64* @xmlGetNsProp(%struct.TYPE_14__* %32, i64* bitcast ([24 x i8]* @.str to i64*), i32* %33)
  store i64* %34, i64** %9, align 8
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i64*, i64** %9, align 8
  %37 = icmp eq i64* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %142

39:                                               ; preds = %35
  %40 = load i64*, i64** %9, align 8
  store i64* %40, i64** %10, align 8
  br label %41

41:                                               ; preds = %136, %39
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %138

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %51, %45
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @IS_BLANK(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64*, i64** %10, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %10, align 8
  br label %46

54:                                               ; preds = %46
  %55 = load i64*, i64** %10, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %138

59:                                               ; preds = %54
  %60 = load i64*, i64** %10, align 8
  store i64* %60, i64** %11, align 8
  br label %61

61:                                               ; preds = %73, %59
  %62 = load i64*, i64** %11, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i64*, i64** %11, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @IS_BLANK(i64 %67)
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %65, %61
  %72 = phi i1 [ false, %61 ], [ %70, %65 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i64*, i64** %11, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 1
  store i64* %75, i64** %11, align 8
  br label %61

76:                                               ; preds = %71
  %77 = load i64*, i64** %10, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = load i64*, i64** %10, align 8
  %80 = ptrtoint i64* %78 to i64
  %81 = ptrtoint i64* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i64* @xmlStrndup(i64* %77, i32 %84)
  store i64* %85, i64** %10, align 8
  %86 = load i64*, i64** %10, align 8
  %87 = icmp ne i64* %86, null
  br i1 %87, label %88, label %136

88:                                               ; preds = %76
  %89 = load i64*, i64** %10, align 8
  %90 = call i64 @xmlStrEqual(i64* %89, i64* bitcast ([9 x i8]* @.str.1 to i64*))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = call %struct.TYPE_13__* @xmlSearchNs(i32 %95, %struct.TYPE_14__* %96, i64* null)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %12, align 8
  br label %105

98:                                               ; preds = %88
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = load i64*, i64** %10, align 8
  %104 = call %struct.TYPE_13__* @xmlSearchNs(i32 %101, %struct.TYPE_14__* %102, i64* %103)
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %12, align 8
  br label %105

105:                                              ; preds = %98, %92
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = icmp eq %struct.TYPE_13__* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %111 = load i64*, i64** %10, align 8
  %112 = call i32 @xsltTransformError(i32* null, %struct.TYPE_12__* %109, %struct.TYPE_14__* %110, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64* %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = icmp ne %struct.TYPE_12__* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %115, %108
  br label %133

121:                                              ; preds = %105
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i64*
  %127 = call i64 @exclPrefixPush(%struct.TYPE_12__* %122, i64* %126)
  %128 = icmp sge i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %129, %121
  br label %133

133:                                              ; preds = %132, %120
  %134 = load i64*, i64** %10, align 8
  %135 = call i32 @xmlFree(i64* %134)
  br label %136

136:                                              ; preds = %133, %76
  %137 = load i64*, i64** %11, align 8
  store i64* %137, i64** %10, align 8
  br label %41

138:                                              ; preds = %58, %41
  %139 = load i64*, i64** %9, align 8
  %140 = call i32 @xmlFree(i64* %139)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %138, %38, %24
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64* @xmlGetNsProp(%struct.TYPE_14__*, i64*, i32*) #1

declare dso_local i64 @IS_BLANK(i64) #1

declare dso_local i64* @xmlStrndup(i64*, i32) #1

declare dso_local i64 @xmlStrEqual(i64*, i64*) #1

declare dso_local %struct.TYPE_13__* @xmlSearchNs(i32, %struct.TYPE_14__*, i64*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_12__*, %struct.TYPE_14__*, i8*, i64*) #1

declare dso_local i64 @exclPrefixPush(%struct.TYPE_12__*, i64*) #1

declare dso_local i32 @xmlFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
