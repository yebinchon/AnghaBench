; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltCopyComp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_preproc.c_xsltCopyComp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_8__* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XSLT_FUNC_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"use-attribute-sets\00", align 1
@XSLT_NAMESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @xsltCopyComp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltCopyComp(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %8, %2
  br label %48

18:                                               ; preds = %11
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @XSLT_FUNC_COPY, align 4
  %21 = call %struct.TYPE_7__* @xsltNewStylePreComp(i32* %19, i32 %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %5, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = icmp eq %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %48

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %31, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = load i32, i32* @XSLT_NAMESPACE, align 4
  %35 = call i32* @xsltGetCNsProp(i32* %32, %struct.TYPE_8__* %33, i32* bitcast ([19 x i8]* @.str to i32*), i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %48

45:                                               ; preds = %25
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %17, %24, %45, %42
  ret void
}

declare dso_local %struct.TYPE_7__* @xsltNewStylePreComp(i32*, i32) #1

declare dso_local i32* @xsltGetCNsProp(i32*, %struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
