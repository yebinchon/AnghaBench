; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltExtElementPreCompTest.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltExtElementPreCompTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"xsltExtElementTest: no transformation context\0A\00", align 1
@testStyleData = common dso_local global i32* null, align 8
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"xsltExtElementPreCompTest: not initialized, calling xsltStyleGetExtData\0A\00", align 1
@XSLT_DEFAULT_URL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"xsltExtElementPreCompTest: not initialized\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"xsltExtElementPreCompTest: no instruction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*, i32)* @xsltExtElementPreCompTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xsltExtElementPreCompTest(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @xsltTransformError(i32* null, %struct.TYPE_6__* null, i32* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %60

14:                                               ; preds = %3
  %15 = load i32*, i32** @testStyleData, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load i32, i32* @xsltGenericDebugContext, align 4
  %19 = call i32 @xsltGenericDebug(i32 %18, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i64, i64* @XSLT_DEFAULT_URL, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @xsltStyleGetExtData(%struct.TYPE_6__* %20, i32* %22)
  %24 = load i32*, i32** @testStyleData, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %17
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @xsltTransformError(i32* null, %struct.TYPE_6__* %27, i32* %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %26
  store i32* null, i32** %4, align 8
  br label %60

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32*, i32** %6, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @xsltTransformError(i32* null, %struct.TYPE_6__* %43, i32* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %42
  store i32* null, i32** %4, align 8
  br label %60

54:                                               ; preds = %39
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32* @xsltNewElemPreComp(%struct.TYPE_6__* %55, i32* %56, i32 %57)
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %8, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %54, %53, %37, %11
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

declare dso_local i32 @xsltTransformError(i32*, %struct.TYPE_6__*, i32*, i8*) #1

declare dso_local i32 @xsltGenericDebug(i32, i8*) #1

declare dso_local i32 @xsltStyleGetExtData(%struct.TYPE_6__*, i32*) #1

declare dso_local i32* @xsltNewElemPreComp(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
