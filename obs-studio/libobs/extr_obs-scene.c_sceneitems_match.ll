; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_sceneitems_match.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_sceneitems_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__**, i64, i32*)* @sceneitems_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sceneitems_match(%struct.TYPE_6__* %0, %struct.TYPE_5__** %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %47, %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = icmp ne %struct.TYPE_5__* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %40

33:                                               ; preds = %25
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %33
  store i32 1, i32* %12, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  br label %21

43:                                               ; preds = %39, %21
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %58

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %11, align 8
  br label %17

53:                                               ; preds = %17
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %46
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
