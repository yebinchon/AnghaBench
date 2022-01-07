; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltTextComp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltTextComp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XSLT_FUNC_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"disable-output-escaping\00", align 1
@XSLT_NAMESPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"xsl:text: disable-output-escaping allows only yes or no\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_15__*)* @xsltTextComp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltTextComp(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = icmp eq %struct.TYPE_13__* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = icmp eq %struct.TYPE_15__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %9, %2
  br label %66

19:                                               ; preds = %12
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = load i32, i32* @XSLT_FUNC_TEXT, align 4
  %22 = call %struct.TYPE_14__* @xsltNewStylePreComp(%struct.TYPE_13__* %20, i32 %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = icmp eq %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %66

26:                                               ; preds = %19
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = load i32, i32* @XSLT_NAMESPACE, align 4
  %38 = call i32* @xsltGetCNsProp(%struct.TYPE_13__* %35, %struct.TYPE_15__* %36, i32* bitcast ([24 x i8]* @.str to i32*), i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %26
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @xmlStrEqual(i32* %42, i32* bitcast ([4 x i8]* @.str.1 to i32*))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %65

48:                                               ; preds = %41
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @xmlStrEqual(i32* %49, i32* bitcast ([3 x i8]* @.str.2 to i32*))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = call i32 @xsltTransformError(i32* null, %struct.TYPE_13__* %53, %struct.TYPE_15__* %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %52
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %45
  br label %66

66:                                               ; preds = %18, %25, %65, %26
  ret void
}

declare dso_local %struct.TYPE_14__* @xsltNewStylePreComp(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @xsltGetCNsProp(%struct.TYPE_13__*, %struct.TYPE_15__*, i32*, i32) #1

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_13__*, %struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
