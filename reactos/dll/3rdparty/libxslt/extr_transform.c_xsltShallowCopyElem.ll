; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltShallowCopyElem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltShallowCopyElem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i64, i32, %struct.TYPE_32__*, i32*, i32 }
%struct.TYPE_32__ = type { i32*, i32* }

@XML_DTD_NODE = common dso_local global i64 0, align 8
@XML_TEXT_NODE = common dso_local global i64 0, align 8
@XML_CDATA_SECTION_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"xsltShallowCopyElem: copy failed\0A\00", align 1
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"xsltShallowCopyElem: copy %s failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_31__* (%struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32)* @xsltShallowCopyElem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_31__* @xsltShallowCopyElem(%struct.TYPE_30__* %0, %struct.TYPE_31__* %1, %struct.TYPE_31__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %7, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XML_DTD_NODE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %18 = icmp eq %struct.TYPE_31__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %4
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %5, align 8
  br label %153

20:                                               ; preds = %16
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XML_TEXT_NODE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XML_CDATA_SECTION_NODE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26, %20
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %36 = call %struct.TYPE_31__* @xsltCopyText(%struct.TYPE_30__* %33, %struct.TYPE_31__* %34, %struct.TYPE_31__* %35, i32 0)
  store %struct.TYPE_31__* %36, %struct.TYPE_31__** %5, align 8
  br label %153

37:                                               ; preds = %26
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_31__* @xmlDocCopyNode(%struct.TYPE_31__* %38, i32 %41, i32 0)
  store %struct.TYPE_31__* %42, %struct.TYPE_31__** %10, align 8
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %44 = icmp ne %struct.TYPE_31__* %43, null
  br i1 %44, label %45, label %144

45:                                               ; preds = %37
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %53 = call %struct.TYPE_31__* @xsltAddChild(%struct.TYPE_31__* %51, %struct.TYPE_31__* %52)
  store %struct.TYPE_31__* %53, %struct.TYPE_31__** %10, align 8
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %55 = icmp eq %struct.TYPE_31__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %59 = call i32 (%struct.TYPE_30__*, i32*, %struct.TYPE_31__*, i8*, ...) @xsltTransformError(%struct.TYPE_30__* %57, i32* null, %struct.TYPE_31__* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  store %struct.TYPE_31__* %60, %struct.TYPE_31__** %5, align 8
  br label %153

61:                                               ; preds = %45
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %143

67:                                               ; preds = %61
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @xsltCopyNamespaceList(%struct.TYPE_30__* %76, %struct.TYPE_31__* %77, i32* %80)
  br label %88

82:                                               ; preds = %72
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @xsltCopyNamespaceListInternal(%struct.TYPE_31__* %83, i32* %86)
  br label %88

88:                                               ; preds = %82, %75
  br label %89

89:                                               ; preds = %88, %67
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %91, align 8
  %93 = icmp ne %struct.TYPE_32__* %92, null
  br i1 %93, label %94, label %125

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %101, align 8
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %104 = call %struct.TYPE_32__* @xsltGetNamespace(%struct.TYPE_30__* %98, %struct.TYPE_31__* %99, %struct.TYPE_32__* %102, %struct.TYPE_31__* %103)
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 2
  store %struct.TYPE_32__* %104, %struct.TYPE_32__** %106, align 8
  br label %124

107:                                              ; preds = %94
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %121 = call %struct.TYPE_32__* @xsltGetSpecialNamespace(%struct.TYPE_30__* %108, %struct.TYPE_31__* %109, i32* %114, i32* %119, %struct.TYPE_31__* %120)
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 2
  store %struct.TYPE_32__* %121, %struct.TYPE_32__** %123, align 8
  br label %124

124:                                              ; preds = %107, %97
  br label %142

125:                                              ; preds = %89
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %133, align 8
  %135 = icmp ne %struct.TYPE_32__* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %140 = call %struct.TYPE_32__* @xsltGetSpecialNamespace(%struct.TYPE_30__* %137, %struct.TYPE_31__* %138, i32* null, i32* null, %struct.TYPE_31__* %139)
  br label %141

141:                                              ; preds = %136, %131, %125
  br label %142

142:                                              ; preds = %141, %124
  br label %143

143:                                              ; preds = %142, %61
  br label %151

144:                                              ; preds = %37
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (%struct.TYPE_30__*, i32*, %struct.TYPE_31__*, i8*, ...) @xsltTransformError(%struct.TYPE_30__* %145, i32* null, %struct.TYPE_31__* %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %144, %143
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  store %struct.TYPE_31__* %152, %struct.TYPE_31__** %5, align 8
  br label %153

153:                                              ; preds = %151, %56, %32, %19
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  ret %struct.TYPE_31__* %154
}

declare dso_local %struct.TYPE_31__* @xsltCopyText(%struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local %struct.TYPE_31__* @xmlDocCopyNode(%struct.TYPE_31__*, i32, i32) #1

declare dso_local %struct.TYPE_31__* @xsltAddChild(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_30__*, i32*, %struct.TYPE_31__*, i8*, ...) #1

declare dso_local i32 @xsltCopyNamespaceList(%struct.TYPE_30__*, %struct.TYPE_31__*, i32*) #1

declare dso_local i32 @xsltCopyNamespaceListInternal(%struct.TYPE_31__*, i32*) #1

declare dso_local %struct.TYPE_32__* @xsltGetNamespace(%struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_32__* @xsltGetSpecialNamespace(%struct.TYPE_30__*, %struct.TYPE_31__*, i32*, i32*, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
