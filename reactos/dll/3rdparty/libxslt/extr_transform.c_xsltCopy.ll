; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltCopy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_32__*, i32 }
%struct.TYPE_32__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i32* }

@XSLT_TRACE_COPY = common dso_local global i32 0, align 4
@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltCopy(%struct.TYPE_30__* %0, %struct.TYPE_32__* %1, %struct.TYPE_32__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %14, %struct.TYPE_31__** %9, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  store %struct.TYPE_32__* %17, %struct.TYPE_32__** %11, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %21 = icmp ne %struct.TYPE_32__* %20, null
  br i1 %21, label %22, label %105

22:                                               ; preds = %4
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %103 [
    i32 128, label %26
    i32 135, label %26
    i32 133, label %33
    i32 131, label %33
    i32 132, label %34
    i32 136, label %57
    i32 129, label %66
    i32 134, label %84
    i32 130, label %94
  ]

26:                                               ; preds = %22, %22
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %32 = call i32 @xsltCopyText(%struct.TYPE_30__* %27, %struct.TYPE_32__* %30, %struct.TYPE_32__* %31, i32 0)
  br label %104

33:                                               ; preds = %22, %22
  br label %104

34:                                               ; preds = %22
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %38, align 8
  %40 = call %struct.TYPE_32__* @xsltShallowCopyElem(%struct.TYPE_30__* %35, %struct.TYPE_32__* %36, %struct.TYPE_32__* %39, i32 0)
  store %struct.TYPE_32__* %40, %struct.TYPE_32__** %10, align 8
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 0
  store %struct.TYPE_32__* %41, %struct.TYPE_32__** %43, align 8
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %34
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @xsltApplyAttributeSet(%struct.TYPE_30__* %49, %struct.TYPE_32__* %50, %struct.TYPE_32__* %51, i32* %54)
  br label %56

56:                                               ; preds = %48, %34
  br label %104

57:                                               ; preds = %22
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %61, align 8
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %64 = ptrtoint %struct.TYPE_32__* %63 to i32
  %65 = call i32 @xsltShallowCopyAttr(%struct.TYPE_30__* %58, %struct.TYPE_32__* %59, %struct.TYPE_32__* %62, i32 %64)
  br label %104

66:                                               ; preds = %22
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.TYPE_32__* @xmlNewDocPI(i32 %71, i32 %74, i32 %77)
  store %struct.TYPE_32__* %78, %struct.TYPE_32__** %10, align 8
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %80, align 8
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %83 = call %struct.TYPE_32__* @xsltAddChild(%struct.TYPE_32__* %81, %struct.TYPE_32__* %82)
  store %struct.TYPE_32__* %83, %struct.TYPE_32__** %10, align 8
  br label %104

84:                                               ; preds = %22
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_32__* @xmlNewComment(i32 %87)
  store %struct.TYPE_32__* %88, %struct.TYPE_32__** %10, align 8
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %90, align 8
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %93 = call %struct.TYPE_32__* @xsltAddChild(%struct.TYPE_32__* %91, %struct.TYPE_32__* %92)
  store %struct.TYPE_32__* %93, %struct.TYPE_32__** %10, align 8
  br label %104

94:                                               ; preds = %22
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %98, align 8
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %101 = ptrtoint %struct.TYPE_32__* %100 to i32
  %102 = call i32 @xsltShallowCopyNsNode(%struct.TYPE_30__* %95, %struct.TYPE_32__* %96, %struct.TYPE_32__* %99, i32 %101)
  br label %104

103:                                              ; preds = %22
  br label %104

104:                                              ; preds = %103, %94, %84, %66, %57, %56, %33, %26
  br label %105

105:                                              ; preds = %104, %4
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %118 [
    i32 133, label %109
    i32 131, label %109
    i32 132, label %109
  ]

109:                                              ; preds = %105, %105, %105
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @xsltApplySequenceConstructor(%struct.TYPE_30__* %110, i32 %113, i32 %116, i32* null)
  br label %119

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %109
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 0
  store %struct.TYPE_32__* %120, %struct.TYPE_32__** %122, align 8
  ret void
}

declare dso_local i32 @xsltCopyText(%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32) #1

declare dso_local %struct.TYPE_32__* @xsltShallowCopyElem(%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @xsltApplyAttributeSet(%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @xsltShallowCopyAttr(%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32) #1

declare dso_local %struct.TYPE_32__* @xmlNewDocPI(i32, i32, i32) #1

declare dso_local %struct.TYPE_32__* @xsltAddChild(%struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @xmlNewComment(i32) #1

declare dso_local i32 @xsltShallowCopyNsNode(%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @xsltApplySequenceConstructor(%struct.TYPE_30__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
