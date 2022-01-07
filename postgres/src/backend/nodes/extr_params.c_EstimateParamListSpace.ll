; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_params.c_EstimateParamListSpace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_params.c_EstimateParamListSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__* (%struct.TYPE_7__*, i32, i32, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EstimateParamListSpace(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 4, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %79

20:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %74, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__* (%struct.TYPE_7__*, i32, i32, %struct.TYPE_8__*)*, %struct.TYPE_8__* (%struct.TYPE_7__*, i32, i32, %struct.TYPE_8__*)** %29, align 8
  %31 = icmp ne %struct.TYPE_8__* (%struct.TYPE_7__*, i32, i32, %struct.TYPE_8__*)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__* (%struct.TYPE_7__*, i32, i32, %struct.TYPE_8__*)*, %struct.TYPE_8__* (%struct.TYPE_7__*, i32, i32, %struct.TYPE_8__*)** %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  %39 = call %struct.TYPE_8__* %35(%struct.TYPE_7__* %36, i32 %38, i32 0, %struct.TYPE_8__* %7)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %6, align 8
  br label %47

40:                                               ; preds = %27
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %6, align 8
  br label %47

47:                                               ; preds = %40, %32
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @add_size(i32 %51, i32 4)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @add_size(i32 %53, i32 4)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @OidIsValid(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @get_typlenbyval(i32 %59, i32* %9, i32* %10)
  br label %62

61:                                               ; preds = %47
  store i32 4, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @datumEstimateSpace(i32 %66, i32 %69, i32 %70, i32 %71)
  %73 = call i32 @add_size(i32 %63, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %21

77:                                               ; preds = %21
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %18
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @add_size(i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @get_typlenbyval(i32, i32*, i32*) #1

declare dso_local i32 @datumEstimateSpace(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
