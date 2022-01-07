; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltDecimalFormatGetByQName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltDecimalFormatGetByQName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @xsltDecimalFormatGetByQName(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  br label %54

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %49, %15
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %8, align 8
  br label %25

25:                                               ; preds = %45, %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @xmlStrEqual(i32* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @xmlStrEqual(i32* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %4, align 8
  br label %54

44:                                               ; preds = %35, %28
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %8, align 8
  br label %25

49:                                               ; preds = %25
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = call %struct.TYPE_7__* @xsltNextImport(%struct.TYPE_7__* %50)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %5, align 8
  br label %16

52:                                               ; preds = %16
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %4, align 8
  br label %54

54:                                               ; preds = %52, %42, %11
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %55
}

declare dso_local i64 @xmlStrEqual(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @xsltNextImport(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
