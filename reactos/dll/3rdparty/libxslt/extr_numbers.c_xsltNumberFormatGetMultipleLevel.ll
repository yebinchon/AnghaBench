; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatGetMultipleLevel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatGetMultipleLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }

@XML_DOCUMENT_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i32*, i32*, double*, i32)* @xsltNumberFormatGetMultipleLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltNumberFormatGetMultipleLevel(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32* %2, i32* %3, double* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store double* %4, double** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %22, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = call i64 @xmlXPathNewParserContext(i32* null, %struct.TYPE_15__* %25)
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* %17, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %102

29:                                               ; preds = %6
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %15, align 8
  br label %31

31:                                               ; preds = %95, %29
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %33 = icmp ne %struct.TYPE_17__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XML_DOCUMENT_NODE, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i1 [ false, %31 ], [ %39, %34 ]
  br i1 %41, label %42, label %99

42:                                               ; preds = %40
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @xsltTestCompMatchList(%struct.TYPE_16__* %46, %struct.TYPE_17__* %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %99

52:                                               ; preds = %45, %42
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = call i64 @xsltTestCompMatchCount(%struct.TYPE_16__* %53, %struct.TYPE_17__* %54, i32* %55, %struct.TYPE_17__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %52
  store i32 1, i32* %14, align 4
  %60 = load i64, i64* %17, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %62 = call %struct.TYPE_17__* @xmlXPathNextPrecedingSibling(i64 %60, %struct.TYPE_17__* %61)
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %16, align 8
  br label %63

63:                                               ; preds = %77, %59
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %65 = icmp ne %struct.TYPE_17__* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = call i64 @xsltTestCompMatchCount(%struct.TYPE_16__* %67, %struct.TYPE_17__* %68, i32* %69, %struct.TYPE_17__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %73, %66
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %17, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %80 = call %struct.TYPE_17__* @xmlXPathNextPrecedingSibling(i64 %78, %struct.TYPE_17__* %79)
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %16, align 8
  br label %63

81:                                               ; preds = %63
  %82 = load i32, i32* %14, align 4
  %83 = sitofp i32 %82 to double
  %84 = load double*, double** %11, align 8
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds double, double* %84, i64 %87
  store double %83, double* %88, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %99

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %52
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %17, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %98 = call %struct.TYPE_17__* @xmlXPathNextAncestor(i64 %96, %struct.TYPE_17__* %97)
  store %struct.TYPE_17__* %98, %struct.TYPE_17__** %15, align 8
  br label %31

99:                                               ; preds = %92, %51, %40
  %100 = load i64, i64* %17, align 8
  %101 = call i32 @xmlXPathFreeParserContext(i64 %100)
  br label %102

102:                                              ; preds = %99, %6
  %103 = load i32, i32* %13, align 4
  ret i32 %103
}

declare dso_local i64 @xmlXPathNewParserContext(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @xsltTestCompMatchList(%struct.TYPE_16__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i64 @xsltTestCompMatchCount(%struct.TYPE_16__*, %struct.TYPE_17__*, i32*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @xmlXPathNextPrecedingSibling(i64, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @xmlXPathNextAncestor(i64, %struct.TYPE_17__*) #1

declare dso_local i32 @xmlXPathFreeParserContext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
