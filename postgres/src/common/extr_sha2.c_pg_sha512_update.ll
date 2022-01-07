; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_sha2.c_pg_sha512_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_sha2.c_pg_sha512_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@PG_SHA512_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_sha512_update(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %116

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 3
  %19 = load i32, i32* @PG_SHA512_BLOCK_LENGTH, align 4
  %20 = srem i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %12
  %25 = load i32, i32* @PG_SHA512_BLOCK_LENGTH, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %24
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @memcpy(i32* %37, i32* %38, i64 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = shl i64 %44, 3
  %46 = call i32 @ADDINC128(i32* %43, i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %5, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @SHA512_Transform(%struct.TYPE_4__* %53, i32* %56)
  br label %73

58:                                               ; preds = %24
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @memcpy(i32* %63, i32* %64, i64 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = shl i64 %70, 3
  %72 = call i32 @ADDINC128(i32* %69, i64 %71)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %116

73:                                               ; preds = %32
  br label %74

74:                                               ; preds = %73, %12
  br label %75

75:                                               ; preds = %80, %74
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* @PG_SHA512_BLOCK_LENGTH, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp uge i64 %76, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @SHA512_Transform(%struct.TYPE_4__* %81, i32* %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @PG_SHA512_BLOCK_LENGTH, align 4
  %88 = shl i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = call i32 @ADDINC128(i32* %86, i64 %89)
  %91 = load i32, i32* @PG_SHA512_BLOCK_LENGTH, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %6, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %6, align 8
  %95 = load i32, i32* @PG_SHA512_BLOCK_LENGTH, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %5, align 8
  br label %75

99:                                               ; preds = %75
  %100 = load i64, i64* %6, align 8
  %101 = icmp ugt i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @memcpy(i32* %105, i32* %106, i64 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = shl i64 %112, 3
  %114 = call i32 @ADDINC128(i32* %111, i64 %113)
  br label %115

115:                                              ; preds = %102, %99
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %116

116:                                              ; preds = %115, %58, %11
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
