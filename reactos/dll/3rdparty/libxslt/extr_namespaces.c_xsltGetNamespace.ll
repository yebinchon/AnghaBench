; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_namespaces.c_xsltGetNamespace.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_namespaces.c_xsltGetNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_20__ = type { i32*, i32* }
%struct.TYPE_21__ = type { i32 }

@UNDEFINED_DEFAULT_NS = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @xsltGetNamespace(%struct.TYPE_18__* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %13 = icmp eq %struct.TYPE_20__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %79

15:                                               ; preds = %4
  store i32* null, i32** %11, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = icmp eq %struct.TYPE_18__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = icmp eq %struct.TYPE_21__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %23 = icmp eq %struct.TYPE_21__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %79

25:                                               ; preds = %21
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %10, align 8
  br label %29

29:                                               ; preds = %50, %25
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %31 = icmp ne %struct.TYPE_19__* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @xmlHashLookup(i32* %40, i32* %43)
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %11, align 8
  br label %46

46:                                               ; preds = %37, %32
  %47 = load i32*, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %53

50:                                               ; preds = %46
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %52 = call %struct.TYPE_19__* @xsltNextImport(%struct.TYPE_19__* %51)
  store %struct.TYPE_19__* %52, %struct.TYPE_19__** %10, align 8
  br label %29

53:                                               ; preds = %49, %29
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** @UNDEFINED_DEFAULT_NS, align 8
  %56 = icmp eq i32* %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %61 = call %struct.TYPE_20__* @xsltGetSpecialNamespace(%struct.TYPE_18__* %58, %struct.TYPE_21__* %59, i32* null, i32* null, %struct.TYPE_21__* %60)
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %5, align 8
  br label %79

62:                                               ; preds = %53
  %63 = load i32*, i32** %11, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %11, align 8
  br label %69

69:                                               ; preds = %65, %62
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %78 = call %struct.TYPE_20__* @xsltGetSpecialNamespace(%struct.TYPE_18__* %71, %struct.TYPE_21__* %72, i32* %73, i32* %76, %struct.TYPE_21__* %77)
  store %struct.TYPE_20__* %78, %struct.TYPE_20__** %5, align 8
  br label %79

79:                                               ; preds = %70, %57, %24, %14
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  ret %struct.TYPE_20__* %80
}

declare dso_local i64 @xmlHashLookup(i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @xsltNextImport(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @xsltGetSpecialNamespace(%struct.TYPE_18__*, %struct.TYPE_21__*, i32*, i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
