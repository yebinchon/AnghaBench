; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_IsPagerNeeded.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_IsPagerNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@stdout = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32**, i32*)* @IsPagerNeeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IsPagerNeeded(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32**, i32*** %9, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** @stdout, align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  store i32 %28, i32* %11, align 4
  br label %34

29:                                               ; preds = %17
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %12, align 8
  br label %45

45:                                               ; preds = %51, %41
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %12, align 8
  br label %45

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = call i32* @PageOutput(i32 %59, %struct.TYPE_7__* %62)
  %64 = load i32**, i32*** %9, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32**, i32*** %9, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** @stdout, align 8
  %68 = icmp ne i32* %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  br label %73

71:                                               ; preds = %5
  %72 = load i32*, i32** %10, align 8
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %56
  ret void
}

declare dso_local i32* @PageOutput(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
