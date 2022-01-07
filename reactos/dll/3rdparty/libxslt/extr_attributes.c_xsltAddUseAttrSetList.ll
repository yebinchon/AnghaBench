; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_attributes.c_xsltAddUseAttrSetList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_attributes.c_xsltAddUseAttrSetList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*, i32*, i32*)* @xsltAddUseAttrSetList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @xsltAddUseAttrSetList(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  br label %57

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.TYPE_5__* @xsltNewUseAttrSet(i32* %18, i32* %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %4, align 8
  br label %57

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %9, align 8
  br label %23

23:                                               ; preds = %53, %21
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %4, align 8
  br label %57

40:                                               ; preds = %32, %26
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = icmp eq %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call %struct.TYPE_5__* @xsltNewUseAttrSet(i32* %47, i32* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %4, align 8
  br label %57

53:                                               ; preds = %40
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %9, align 8
  br label %23

55:                                               ; preds = %23
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %4, align 8
  br label %57

57:                                               ; preds = %55, %46, %38, %17, %12
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %58
}

declare dso_local %struct.TYPE_5__* @xsltNewUseAttrSet(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
