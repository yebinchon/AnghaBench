; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltForEachComp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltForEachComp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, i32*, %struct.TYPE_16__* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XSLT_FUNC_FOREACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1
@XSLT_NAMESPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"xsl:for-each : select is missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"xsl:for-each : could not compile select expression '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*)* @xsltForEachComp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltForEachComp(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = icmp eq %struct.TYPE_14__* %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = icmp eq %struct.TYPE_16__* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %8, %2
  br label %82

18:                                               ; preds = %11
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = load i32, i32* @XSLT_FUNC_FOREACH, align 4
  %21 = call %struct.TYPE_15__* @xsltNewStylePreComp(%struct.TYPE_14__* %19, i32 %20)
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %5, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = icmp eq %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %82

25:                                               ; preds = %18
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load i32, i32* @XSLT_NAMESPACE, align 4
  %35 = call i32* @xsltGetCNsProp(%struct.TYPE_14__* %32, %struct.TYPE_16__* %33, i32* bitcast ([7 x i8]* @.str to i32*), i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %25
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = call i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_14__* %43, %struct.TYPE_16__* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %42
  br label %82

54:                                               ; preds = %25
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32* @xsltXPathCompile(%struct.TYPE_14__* %55, i32* %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %54
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) @xsltTransformError(i32* null, %struct.TYPE_14__* %67, %struct.TYPE_16__* %68, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32* %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = icmp ne %struct.TYPE_14__* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %66
  br label %81

81:                                               ; preds = %80, %54
  br label %82

82:                                               ; preds = %17, %24, %81, %53
  ret void
}

declare dso_local %struct.TYPE_15__* @xsltNewStylePreComp(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @xsltGetCNsProp(%struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_14__*, %struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32* @xsltXPathCompile(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
