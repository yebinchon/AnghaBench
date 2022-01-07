; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_templates.c_xsltEvalTemplateString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_templates.c_xsltEvalTemplateString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i32* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to create temporary node\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltEvalTemplateString(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = icmp eq %struct.TYPE_13__* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = icmp eq %struct.TYPE_14__* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = icmp eq %struct.TYPE_14__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %16, %13, %3
  store i32* null, i32** %4, align 8
  br label %68

26:                                               ; preds = %19
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32* null, i32** %4, align 8
  br label %68

32:                                               ; preds = %26
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_14__* @xmlNewDocNode(i32 %35, i32* null, i32* bitcast ([5 x i8]* @.str to i32*), i32* null)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %9, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = icmp eq %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = call i32 @xsltTransformError(%struct.TYPE_13__* %40, i32* null, %struct.TYPE_14__* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %68

43:                                               ; preds = %32
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %8, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @xsltApplyOneTemplate(%struct.TYPE_13__* %50, %struct.TYPE_14__* %51, i32* %54, i32* null, i32* null)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %58, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %60 = call i32* @xmlNodeGetContent(%struct.TYPE_14__* %59)
  store i32* %60, i32** %10, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = icmp ne %struct.TYPE_14__* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %43
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = call i32 @xmlFreeNode(%struct.TYPE_14__* %64)
  br label %66

66:                                               ; preds = %63, %43
  %67 = load i32*, i32** %10, align 8
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %66, %39, %31, %25
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local %struct.TYPE_14__* @xmlNewDocNode(i32, i32*, i32*, i32*) #1

declare dso_local i32 @xsltTransformError(%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i8*) #1

declare dso_local i32 @xsltApplyOneTemplate(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32*, i32*) #1

declare dso_local i32* @xmlNodeGetContent(%struct.TYPE_14__*) #1

declare dso_local i32 @xmlFreeNode(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
