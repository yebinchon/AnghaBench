; ModuleID = '/home/carl/AnghaBench/radare2/libr/hash/extr_sha2.c_SHA256_Final.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/hash/extr_sha2.c_SHA256_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32* }

@SHA256_BLOCK_LENGTH = common dso_local global i32 0, align 4
@SHA256_SHORT_BLOCK_LENGTH = common dso_local global i32 0, align 4
@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA256_Final(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load i32*, i32** %3, align 8
  store i32* %9, i32** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %141

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %138

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 3
  %21 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @REVERSE64(i32 %25, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %16
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 128, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SHA256_SHORT_BLOCK_LENGTH, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %32
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @SHA256_SHORT_BLOCK_LENGTH, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub i32 %50, %51
  %53 = call i32 @memset(i32* %49, i32 0, i32 %52)
  br label %80

54:                                               ; preds = %32
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub i32 %65, %66
  %68 = call i32 @memset(i32* %64, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %58, %54
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @SHA256_Transform(%struct.TYPE_5__* %70, i32* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @SHA256_SHORT_BLOCK_LENGTH, align 4
  %79 = call i32 @memset(i32* %77, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %69, %43
  br label %90

81:                                               ; preds = %16
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @SHA256_SHORT_BLOCK_LENGTH, align 4
  %86 = call i32 @memset(i32* %84, i32 0, i32 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  store i32 128, i32* %89, align 4
  br label %90

90:                                               ; preds = %81, %80
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @SHA256_SHORT_BLOCK_LENGTH, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32* %96, i32** %7, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @SHA256_Transform(%struct.TYPE_5__* %101, i32* %104)
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %134, %90
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 8
  br i1 %108, label %109, label %137

109:                                              ; preds = %106
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @REVERSE32(i32 %116, i32 %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %5, align 8
  store i32 %131, i32* %132, align 4
  br label %134

134:                                              ; preds = %109
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %106

137:                                              ; preds = %106
  br label %138

138:                                              ; preds = %137, %13
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = call i32 @r_mem_memzero(%struct.TYPE_5__* %139, i32 24)
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %138, %12
  ret void
}

declare dso_local i32 @REVERSE64(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @SHA256_Transform(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @REVERSE32(i32, i32) #1

declare dso_local i32 @r_mem_memzero(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
