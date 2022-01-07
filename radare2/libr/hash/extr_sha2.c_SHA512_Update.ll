; ModuleID = '/home/carl/AnghaBench/radare2/libr/hash/extr_sha2.c_SHA512_Update.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/hash/extr_sha2.c_SHA512_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@SHA512_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA512_Update(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %128

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %12
  br label %128

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 3
  %26 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %86

30:                                               ; preds = %19
  %31 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp uge i64 %34, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %30
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = call i32 @memcpy(i32* %44, i32* %45, i64 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 3
  %54 = zext i32 %53 to i64
  %55 = call i32 @ADDINC128(i32* %51, i64 %54)
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %5, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @SHA512_Transform(%struct.TYPE_4__* %64, i32* %67)
  br label %85

69:                                               ; preds = %30
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32*, i32** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @memcpy(i32* %75, i32* %76, i64 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = shl i64 %82, 3
  %84 = call i32 @ADDINC128(i32* %81, i64 %83)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %128

85:                                               ; preds = %38
  br label %86

86:                                               ; preds = %85, %19
  br label %87

87:                                               ; preds = %92, %86
  %88 = load i64, i64* %6, align 8
  %89 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp uge i64 %88, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @SHA512_Transform(%struct.TYPE_4__* %93, i32* %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %100 = shl i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = call i32 @ADDINC128(i32* %98, i64 %101)
  %103 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %6, align 8
  %106 = sub i64 %105, %104
  store i64 %106, i64* %6, align 8
  %107 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %5, align 8
  br label %87

111:                                              ; preds = %87
  %112 = load i64, i64* %6, align 8
  %113 = icmp ugt i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @memcpy(i32* %117, i32* %118, i64 %119)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = shl i64 %124, 3
  %126 = call i32 @ADDINC128(i32* %123, i64 %125)
  br label %127

127:                                              ; preds = %114, %111
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %127, %69, %18, %11
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ADDINC128(i32*, i64) #1

declare dso_local i32 @SHA512_Transform(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
