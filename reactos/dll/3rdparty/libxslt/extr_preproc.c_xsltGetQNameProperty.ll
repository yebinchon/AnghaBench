; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltGetQNameProperty.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltGetQNameProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@XSLT_NAMESPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"The attribute '%s' is missing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"The value '%s' of the attribute '%s' is not a valid QName.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32*, i32, i32*, i32**, i32**)* @xsltGetQNameProperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltGetQNameProperty(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32** %5, i32** %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i32** %6, i32*** %14, align 8
  %17 = load i32**, i32*** %13, align 8
  %18 = icmp ne i32** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i32**, i32*** %13, align 8
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %19, %7
  %22 = load i32**, i32*** %14, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32**, i32*** %14, align 8
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32*, i32** %12, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @XSLT_NAMESPACE, align 4
  %36 = call i32* @xsltGetCNsProp(%struct.TYPE_6__* %32, i32 %33, i32* %34, i32 %35)
  store i32* %36, i32** %15, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 (i32*, %struct.TYPE_6__*, i32, i8*, i32*, ...) @xsltTransformError(i32* null, %struct.TYPE_6__* %43, i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %106

51:                                               ; preds = %39
  br label %105

52:                                               ; preds = %31
  %53 = load i32*, i32** %15, align 8
  %54 = call i64 @xmlValidateQName(i32* %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 (i32*, %struct.TYPE_6__*, i32, i8*, i32*, ...) @xsltTransformError(i32* null, %struct.TYPE_6__* %57, i32 %58, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* %59, i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %106

66:                                               ; preds = %52
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32* @xsltGetQNameURI2(%struct.TYPE_6__* %67, i32 %68, i32** %15)
  store i32* %69, i32** %16, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %103

77:                                               ; preds = %66
  %78 = load i32**, i32*** %14, align 8
  %79 = icmp ne i32** %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %15, align 8
  %82 = load i32**, i32*** %14, align 8
  store i32* %81, i32** %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32*, i32** %12, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32*, i32** %12, align 8
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32*, i32** %16, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i32**, i32*** %13, align 8
  %93 = icmp ne i32** %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %16, align 8
  %99 = call i32* @xmlDictLookup(i32 %97, i32* %98, i32 -1)
  %100 = load i32**, i32*** %13, align 8
  store i32* %99, i32** %100, align 8
  br label %101

101:                                              ; preds = %94, %91
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %72
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %51
  br label %106

106:                                              ; preds = %105, %56, %42
  ret void
}

declare dso_local i32* @xsltGetCNsProp(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_6__*, i32, i8*, i32*, ...) #1

declare dso_local i64 @xmlValidateQName(i32*, i32) #1

declare dso_local i32* @xsltGetQNameURI2(%struct.TYPE_6__*, i32, i32**) #1

declare dso_local i32* @xmlDictLookup(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
