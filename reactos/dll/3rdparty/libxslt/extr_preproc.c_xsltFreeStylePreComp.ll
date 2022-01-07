; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltFreeStylePreComp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltFreeStylePreComp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_24__*, %struct.TYPE_23__, i32* }
%struct.TYPE_23__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @xsltFreeStylePreComp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltFreeStylePreComp(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %3 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %4 = icmp eq %struct.TYPE_24__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %63

6:                                                ; preds = %1
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @xsltFreeLocale(i64 %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @xmlXPathFreeCompExpr(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @xsltFreeCompMatchList(i32* %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @xsltFreeCompMatchList(i32* %48)
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = icmp ne %struct.TYPE_24__* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %57, align 8
  %59 = call i32 @xmlFree(%struct.TYPE_24__* %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %62 = call i32 @xmlFree(%struct.TYPE_24__* %61)
  br label %63

63:                                               ; preds = %60, %5
  ret void
}

declare dso_local i32 @xsltFreeLocale(i64) #1

declare dso_local i32 @xmlXPathFreeCompExpr(i32*) #1

declare dso_local i32 @xsltFreeCompMatchList(i32*) #1

declare dso_local i32 @xmlFree(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
