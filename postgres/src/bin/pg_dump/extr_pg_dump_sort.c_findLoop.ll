; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump_sort.c_findLoop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump_sort.c_findLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32*, i64*, %struct.TYPE_5__**, i32)* @findLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findLoop(%struct.TYPE_5__* %0, i64 %1, i32* %2, i64* %3, %struct.TYPE_5__** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_5__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store %struct.TYPE_5__** %4, %struct.TYPE_5__*** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %124

25:                                               ; preds = %6
  %26 = load i64*, i64** %11, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %124

35:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = icmp eq %struct.TYPE_5__* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %124

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %58
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %59, align 8
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %79, %53
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %7, align 4
  br label %124

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %60

82:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %114, %82
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %83
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call %struct.TYPE_5__* @findObjectByDumpId(i64 %96)
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %15, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %99 = icmp ne %struct.TYPE_5__* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %89
  br label %114

101:                                              ; preds = %89
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i64*, i64** %11, align 8
  %106 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @findLoop(%struct.TYPE_5__* %102, i64 %103, i32* %104, i64* %105, %struct.TYPE_5__** %106, i32 %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %7, align 4
  br label %124

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %100
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %83

117:                                              ; preds = %83
  %118 = load i64, i64* %9, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  store i64 %118, i64* %123, align 8
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %117, %111, %76, %48, %34, %24
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_5__* @findObjectByDumpId(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
