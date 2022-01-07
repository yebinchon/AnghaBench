; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltGenerateIdFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_functions.c_xsltGenerateIdFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32** }

@xsltGenerateIdFunction.base_address = internal global i8 0, align 1
@XPATH_NODESET = common dso_local global i64 0, align 8
@XPATH_INVALID_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"generate-id() : invalid arg expecting a node-set\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"generate-id() : invalid number of args %d\0A\00", align 1
@XPATH_INVALID_ARITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"idp%ld\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"idm%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltGenerateIdFunction(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [30 x i32], align 16
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  br label %108

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %99

23:                                               ; preds = %20
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = icmp eq %struct.TYPE_13__* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XPATH_NODESET, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28, %23
  %37 = load i32, i32* @XPATH_INVALID_TYPE, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = call i32 @xsltXPathGetTransformContext(%struct.TYPE_14__* %40)
  %42 = call i32 (i32, i32*, i32*, i8*, ...) @xsltTransformError(i32 %41, i32* null, i32* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %137

43:                                               ; preds = %28
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = call %struct.TYPE_15__* @valuePop(%struct.TYPE_14__* %44)
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %6, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %9, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = icmp eq %struct.TYPE_16__* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %43
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51, %43
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = call i32 @xmlXPathFreeObject(%struct.TYPE_15__* %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = call i32 @xmlXPathNewCString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @valuePush(%struct.TYPE_14__* %59, i32 %60)
  br label %137

62:                                               ; preds = %51
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %5, align 8
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %95, %62
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %68
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @xmlXPathCmpNodes(i32* %75, i32* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %94

86:                                               ; preds = %74
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %5, align 8
  br label %94

94:                                               ; preds = %86, %74
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %68

98:                                               ; preds = %68
  br label %107

99:                                               ; preds = %20
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = call i32 @xsltXPathGetTransformContext(%struct.TYPE_14__* %100)
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i32, i32*, i32*, i8*, ...) @xsltTransformError(i32 %101, i32* null, i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @XPATH_INVALID_ARITY, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %137

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %14
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %110 = icmp ne %struct.TYPE_15__* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = call i32 @xmlXPathFreeObject(%struct.TYPE_15__* %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32*, i32** %5, align 8
  %116 = bitcast i32* %115 to i8*
  %117 = ptrtoint i8* %116 to i64
  %118 = sub i64 %117, ptrtoint (i8* @xsltGenerateIdFunction.base_address to i64)
  store i64 %118, i64* %7, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp sge i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = getelementptr inbounds [30 x i32], [30 x i32]* %8, i64 0, i64 0
  %123 = bitcast i32* %122 to i8*
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @snprintf(i8* %123, i32 120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %124)
  br label %132

126:                                              ; preds = %114
  %127 = getelementptr inbounds [30 x i32], [30 x i32]* %8, i64 0, i64 0
  %128 = bitcast i32* %127 to i8*
  %129 = load i64, i64* %7, align 8
  %130 = sub nsw i64 0, %129
  %131 = call i32 @snprintf(i8* %128, i32 120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %126, %121
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = getelementptr inbounds [30 x i32], [30 x i32]* %8, i64 0, i64 0
  %135 = call i32 @xmlXPathNewString(i32* %134)
  %136 = call i32 @valuePush(%struct.TYPE_14__* %133, i32 %135)
  br label %137

137:                                              ; preds = %132, %99, %56, %36
  ret void
}

declare dso_local i32 @xsltTransformError(i32, i32*, i32*, i8*, ...) #1

declare dso_local i32 @xsltXPathGetTransformContext(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @valuePop(%struct.TYPE_14__*) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_15__*) #1

declare dso_local i32 @valuePush(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @xmlXPathNewCString(i8*) #1

declare dso_local i32 @xmlXPathCmpNodes(i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @xmlXPathNewString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
