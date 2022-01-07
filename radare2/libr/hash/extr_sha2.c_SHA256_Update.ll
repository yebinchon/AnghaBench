; ModuleID = '/home/carl/AnghaBench/radare2/libr/hash/extr_sha2.c_SHA256_Update.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/hash/extr_sha2.c_SHA256_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@SHA256_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA256_Update(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %3
  br label %127

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 3
  %23 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %84

27:                                               ; preds = %18
  %28 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp uge i64 %31, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = call i32 @memcpy(i32* %41, i32* %42, i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %6, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %5, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @SHA256_Transform(%struct.TYPE_4__* %60, i32* %63)
  br label %83

65:                                               ; preds = %27
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @memcpy(i32* %71, i32* %72, i64 %73)
  %75 = load i64, i64* %6, align 8
  %76 = shl i64 %75, 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %127

83:                                               ; preds = %35
  br label %84

84:                                               ; preds = %83, %18
  br label %85

85:                                               ; preds = %90, %84
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp uge i64 %86, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @SHA256_Transform(%struct.TYPE_4__* %91, i32* %92)
  %94 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %95 = shl i32 %94, 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %6, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %6, align 8
  %104 = load i32, i32* @SHA256_BLOCK_LENGTH, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %5, align 8
  br label %85

108:                                              ; preds = %85
  %109 = load i64, i64* %6, align 8
  %110 = icmp ugt i64 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @memcpy(i32* %114, i32* %115, i64 %116)
  %118 = load i64, i64* %6, align 8
  %119 = shl i64 %118, 3
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 8
  br label %126

126:                                              ; preds = %111, %108
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %126, %65, %17
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @SHA256_Transform(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
