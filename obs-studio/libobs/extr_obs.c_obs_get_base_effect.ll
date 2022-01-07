; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_get_base_effect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_get_base_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@obs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_get_base_effect(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %60

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %59 [
    i32 134, label %9
    i32 133, label %14
    i32 131, label %19
    i32 128, label %24
    i32 129, label %29
    i32 136, label %34
    i32 132, label %39
    i32 137, label %44
    i32 135, label %49
    i32 130, label %54
  ]

9:                                                ; preds = %7
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 9
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %2, align 8
  br label %60

14:                                               ; preds = %7
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %2, align 8
  br label %60

19:                                               ; preds = %7
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %2, align 8
  br label %60

24:                                               ; preds = %7
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %2, align 8
  br label %60

29:                                               ; preds = %7
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %2, align 8
  br label %60

34:                                               ; preds = %7
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %2, align 8
  br label %60

39:                                               ; preds = %7
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %2, align 8
  br label %60

44:                                               ; preds = %7
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %2, align 8
  br label %60

49:                                               ; preds = %7
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %2, align 8
  br label %60

54:                                               ; preds = %7
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %2, align 8
  br label %60

59:                                               ; preds = %7
  store i32* null, i32** %2, align 8
  br label %60

60:                                               ; preds = %59, %54, %49, %44, %39, %34, %29, %24, %19, %14, %9, %6
  %61 = load i32*, i32** %2, align 8
  ret i32* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
