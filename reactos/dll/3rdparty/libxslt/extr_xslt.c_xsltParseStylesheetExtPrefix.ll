; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetExtPrefix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltParseStylesheetExtPrefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"extension-element-prefixes\00", align 1
@XSLT_NAMESPACE = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"#default\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"xsl:extension-element-prefix : undefined namespace %s\0A\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_14__*, i32)* @xsltParseStylesheetExtPrefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltParseStylesheetExtPrefix(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp eq %struct.TYPE_14__* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = icmp eq %struct.TYPE_12__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %13, %3
  br label %134

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = call i64* @xmlGetNsProp(%struct.TYPE_14__* %27, i64* bitcast ([27 x i8]* @.str to i64*), i32* null)
  store i64* %28, i64** %7, align 8
  br label %33

29:                                               ; preds = %23
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = load i32*, i32** @XSLT_NAMESPACE, align 8
  %32 = call i64* @xmlGetNsProp(%struct.TYPE_14__* %30, i64* bitcast ([27 x i8]* @.str to i64*), i32* %31)
  store i64* %32, i64** %7, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i64*, i64** %7, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %134

37:                                               ; preds = %33
  %38 = load i64*, i64** %7, align 8
  store i64* %38, i64** %8, align 8
  br label %39

39:                                               ; preds = %129, %37
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %131

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %49, %43
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @IS_BLANK(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %8, align 8
  br label %44

52:                                               ; preds = %44
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %131

57:                                               ; preds = %52
  %58 = load i64*, i64** %8, align 8
  store i64* %58, i64** %9, align 8
  br label %59

59:                                               ; preds = %71, %57
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i64*, i64** %9, align 8
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @IS_BLANK(i64 %65)
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i1 [ false, %59 ], [ %68, %63 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i64*, i64** %9, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %9, align 8
  br label %59

74:                                               ; preds = %69
  %75 = load i64*, i64** %8, align 8
  %76 = load i64*, i64** %9, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = ptrtoint i64* %76 to i64
  %79 = ptrtoint i64* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 8
  %82 = trunc i64 %81 to i32
  %83 = call i64* @xmlStrndup(i64* %75, i32 %82)
  store i64* %83, i64** %8, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %129

86:                                               ; preds = %74
  %87 = load i64*, i64** %8, align 8
  %88 = call i64 @xmlStrEqual(i64* %87, i64* bitcast ([9 x i8]* @.str.1 to i64*))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %95 = call %struct.TYPE_13__* @xmlSearchNs(i32 %93, %struct.TYPE_14__* %94, i64* null)
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %10, align 8
  br label %103

96:                                               ; preds = %86
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = call %struct.TYPE_13__* @xmlSearchNs(i32 %99, %struct.TYPE_14__* %100, i64* %101)
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %10, align 8
  br label %103

103:                                              ; preds = %96, %90
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %105 = icmp eq %struct.TYPE_13__* %104, null
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = call i32 @xsltTransformError(i32* null, %struct.TYPE_12__* %107, %struct.TYPE_14__* %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64* %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = icmp ne %struct.TYPE_12__* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %106
  br label %126

119:                                              ; preds = %103
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = load i64*, i64** %8, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @xsltRegisterExtPrefix(%struct.TYPE_12__* %120, i64* %121, i32 %124)
  br label %126

126:                                              ; preds = %119, %118
  %127 = load i64*, i64** %8, align 8
  %128 = call i32 @xmlFree(i64* %127)
  br label %129

129:                                              ; preds = %126, %74
  %130 = load i64*, i64** %9, align 8
  store i64* %130, i64** %8, align 8
  br label %39

131:                                              ; preds = %56, %39
  %132 = load i64*, i64** %7, align 8
  %133 = call i32 @xmlFree(i64* %132)
  br label %134

134:                                              ; preds = %131, %36, %22
  ret void
}

declare dso_local i64* @xmlGetNsProp(%struct.TYPE_14__*, i64*, i32*) #1

declare dso_local i64 @IS_BLANK(i64) #1

declare dso_local i64* @xmlStrndup(i64*, i32) #1

declare dso_local i64 @xmlStrEqual(i64*, i64*) #1

declare dso_local %struct.TYPE_13__* @xmlSearchNs(i32, %struct.TYPE_14__*, i64*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_12__*, %struct.TYPE_14__*, i8*, i64*) #1

declare dso_local i32 @xsltRegisterExtPrefix(%struct.TYPE_12__*, i64*, i32) #1

declare dso_local i32 @xmlFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
