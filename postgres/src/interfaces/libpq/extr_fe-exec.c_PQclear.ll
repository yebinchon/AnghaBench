; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQclear.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, i32*, i32*, %struct.TYPE_7__*, i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32 (i32, %struct.TYPE_8__*, i32)*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }

@PGEVT_RESULTDESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PQclear(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %109

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %57, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %10
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 11
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %16
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 10
  %36 = load i32 (i32, %struct.TYPE_8__*, i32)*, i32 (i32, %struct.TYPE_8__*, i32)** %35, align 8
  %37 = load i32, i32* @PGEVT_RESULTDESTROY, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %36(i32 %37, %struct.TYPE_8__* %5, i32 %45)
  br label %47

47:                                               ; preds = %26, %16
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = call i32 @free(%struct.TYPE_7__* %55)
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %10

60:                                               ; preds = %10
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = call i32 @free(%struct.TYPE_7__* %68)
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %76, %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %3, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 7
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = call i32 @free(%struct.TYPE_7__* %82)
  br label %71

84:                                               ; preds = %71
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = icmp ne %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = call i32 @free(%struct.TYPE_7__* %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  store i32* null, i32** %100, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %108 = call i32 @free(%struct.TYPE_7__* %107)
  br label %109

109:                                              ; preds = %94, %8
  ret void
}

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
