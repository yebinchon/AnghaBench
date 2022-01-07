; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatGetAnyLevel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatGetAnyLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }

@XML_DOCUMENT_NODE = common dso_local global i64 0, align 8
@XML_HTML_DOCUMENT_NODE = common dso_local global i64 0, align 8
@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_ATTRIBUTE_NODE = common dso_local global i64 0, align 8
@XML_DTD_NODE = common dso_local global i64 0, align 8
@XML_XINCLUDE_START = common dso_local global i64 0, align 8
@XML_XINCLUDE_END = common dso_local global i64 0, align 8
@XML_DOCB_DOCUMENT_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, i32*, i32*, double*)* @xsltNumberFormatGetAnyLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltNumberFormatGetAnyLevel(i32 %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store double* %4, double** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %13, align 8
  br label %15

15:                                               ; preds = %137, %5
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %138

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = call i64 @xsltTestCompMatchCount(i32 %19, %struct.TYPE_8__* %20, i32* %21, %struct.TYPE_8__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @xsltTestCompMatchList(i32 %32, %struct.TYPE_8__* %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %138

38:                                               ; preds = %31, %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XML_DOCUMENT_NODE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XML_HTML_DOCUMENT_NODE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38
  br label %138

51:                                               ; preds = %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = bitcast %struct.TYPE_8__* %58 to %struct.TYPE_7__*
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %13, align 8
  br label %137

63:                                               ; preds = %51
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %13, align 8
  br label %136

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %107, %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = icmp ne %struct.TYPE_8__* %77, null
  br i1 %78, label %79, label %105

79:                                               ; preds = %74
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XML_DTD_NODE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %103, label %87

87:                                               ; preds = %79
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @XML_XINCLUDE_START, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %87
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @XML_XINCLUDE_END, align 8
  %102 = icmp eq i64 %100, %101
  br label %103

103:                                              ; preds = %95, %87, %79
  %104 = phi i1 [ true, %87 ], [ true, %79 ], [ %102, %95 ]
  br label %105

105:                                              ; preds = %103, %74
  %106 = phi i1 [ false, %74 ], [ %104, %103 ]
  br i1 %106, label %107, label %111

107:                                              ; preds = %105
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %13, align 8
  br label %74

111:                                              ; preds = %105
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = icmp ne %struct.TYPE_8__* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  store %struct.TYPE_8__* %119, %struct.TYPE_8__** %13, align 8
  br label %120

120:                                              ; preds = %126, %116
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = icmp ne %struct.TYPE_8__* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %13, align 8
  br label %120

130:                                              ; preds = %120
  br label %135

131:                                              ; preds = %111
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %13, align 8
  br label %135

135:                                              ; preds = %131, %130
  br label %136

136:                                              ; preds = %135, %69
  br label %137

137:                                              ; preds = %136, %57
  br label %15

138:                                              ; preds = %50, %37, %15
  %139 = load i32, i32* %12, align 4
  %140 = sitofp i32 %139 to double
  %141 = load double*, double** %10, align 8
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds double, double* %141, i64 %144
  store double %140, double* %145, align 8
  %146 = load i32, i32* %11, align 4
  ret i32 %146
}

declare dso_local i64 @xsltTestCompMatchCount(i32, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @xsltTestCompMatchList(i32, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
