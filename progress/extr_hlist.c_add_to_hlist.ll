; ModuleID = '/home/carl/AnghaBench/progress/extr_hlist.c_add_to_hlist.c'
source_filename = "/home/carl/AnghaBench/progress/extr_hlist.c_add_to_hlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@max_hlist_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_to_hlist(%struct.TYPE_5__** %0, %struct.TYPE_5__** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %4
  %17 = call %struct.TYPE_5__* @malloc(i32 24)
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %18, align 8
  %19 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %90

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %24, align 8
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %30, align 8
  store i32 1, i32* %10, align 4
  br label %84

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @max_hlist_size, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %11, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %41, align 8
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %46, align 8
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %49, align 8
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %54, align 8
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %61, align 8
  store i32 0, i32* %10, align 4
  br label %83

62:                                               ; preds = %31
  %63 = call %struct.TYPE_5__* @malloc(i32 24)
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %12, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %65 = icmp ne %struct.TYPE_5__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %90

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %75, align 8
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %82, align 8
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %67, %35
  br label %84

84:                                               ; preds = %83, %21
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %84, %66, %20
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
