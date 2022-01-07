; ModuleID = '/home/carl/AnghaBench/radare2/libr/hash/extr_sha1.c_SHA1_Final.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/hash/extr_sha1.c_SHA1_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA1_Final(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 128, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 24
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  store i32 %13, i32* %14, align 16
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 0
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 24
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  store i32 %37, i32* %38, align 16
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 0
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = call i32 @SHA1_Update(%struct.TYPE_5__* %57, i32* %5, i32 1)
  br label %59

59:                                               ; preds = %64, %2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 56
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = call i32 @SHA1_Update(%struct.TYPE_5__* %65, i32* %6, i32 1)
  br label %59

67:                                               ; preds = %59
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %70 = call i32 @SHA1_Update(%struct.TYPE_5__* %68, i32* %69, i32 8)
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %97, %67
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 20
  br i1 %73, label %74, label %100

74:                                               ; preds = %71
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sdiv i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 24
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sdiv i32 %91, 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %74
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %71

100:                                              ; preds = %71
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = call i32 @SHA1_Init(%struct.TYPE_5__* %101)
  ret void
}

declare dso_local i32 @SHA1_Update(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @SHA1_Init(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
