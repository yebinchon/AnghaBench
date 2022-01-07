; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltTestCompMatchCount.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltTestCompMatchCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, i32*, %struct.TYPE_7__*)* @xsltTestCompMatchCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltTestCompMatchCount(i32 %0, %struct.TYPE_7__* %1, i32* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @xsltTestCompMatchList(i32 %13, %struct.TYPE_7__* %14, i32* %15)
  store i32 %16, i32* %5, align 4
  br label %75

17:                                               ; preds = %4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %75

26:                                               ; preds = %17
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %75

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @xmlStrEqual(i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %75

43:                                               ; preds = %33
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = icmp eq %struct.TYPE_6__* %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %75

52:                                               ; preds = %43
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp eq %struct.TYPE_6__* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp eq %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52
  store i32 0, i32* %5, align 4
  br label %75

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @xmlStrEqual(i32 %68, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %63, %62, %51, %42, %32, %25, %12
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @xsltTestCompMatchList(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @xmlStrEqual(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
