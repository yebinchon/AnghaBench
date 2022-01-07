; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltFreeTransformContext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltFreeTransformContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_11__*, i32*, i32 (i32*)*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }

@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltFreeTransformContext(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = icmp eq %struct.TYPE_11__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %139

7:                                                ; preds = %1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = call i32 @xsltShutdownCtxtExts(%struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 9
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 9
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 9
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = call i32 @xmlXPathFreeContext(%struct.TYPE_12__* %21)
  br label %23

23:                                               ; preds = %14, %7
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = call i32 @xmlFree(%struct.TYPE_11__* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 7
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 7
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = call i32 @xmlFree(%struct.TYPE_11__* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = call i32 @xmlFree(%struct.TYPE_11__* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %118

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = icmp ne %struct.TYPE_11__* %61, null
  br i1 %62, label %63, label %118

63:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %110, %63
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %64
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 5
  %79 = load i32 (i32*)*, i32 (i32*)** %78, align 8
  %80 = icmp ne i32 (i32*)* %79, null
  br i1 %80, label %81, label %109

81:                                               ; preds = %71
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %109

91:                                               ; preds = %81
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  %99 = load i32 (i32*)*, i32 (i32*)** %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 %99(i32* %107)
  br label %109

109:                                              ; preds = %91, %81, %71
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %64

113:                                              ; preds = %64
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = call i32 @xmlFree(%struct.TYPE_11__* %116)
  br label %118

118:                                              ; preds = %113, %58, %53
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %120 = call i32 @xsltFreeGlobalVariables(%struct.TYPE_11__* %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %122 = call i32 @xsltFreeDocuments(%struct.TYPE_11__* %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %124 = call i32 @xsltFreeCtxtExts(%struct.TYPE_11__* %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %126 = call i32 @xsltFreeRVTs(%struct.TYPE_11__* %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @xsltTransformCacheFree(i32 %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @xmlDictFree(i32 %133)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %136 = call i32 @memset(%struct.TYPE_11__* %135, i32 -1, i32 4)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %138 = call i32 @xmlFree(%struct.TYPE_11__* %137)
  br label %139

139:                                              ; preds = %118, %6
  ret void
}

declare dso_local i32 @xsltShutdownCtxtExts(%struct.TYPE_11__*) #1

declare dso_local i32 @xmlXPathFreeContext(%struct.TYPE_12__*) #1

declare dso_local i32 @xmlFree(%struct.TYPE_11__*) #1

declare dso_local i32 @xsltFreeGlobalVariables(%struct.TYPE_11__*) #1

declare dso_local i32 @xsltFreeDocuments(%struct.TYPE_11__*) #1

declare dso_local i32 @xsltFreeCtxtExts(%struct.TYPE_11__*) #1

declare dso_local i32 @xsltFreeRVTs(%struct.TYPE_11__*) #1

declare dso_local i32 @xsltTransformCacheFree(i32) #1

declare dso_local i32 @xmlDictFree(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
