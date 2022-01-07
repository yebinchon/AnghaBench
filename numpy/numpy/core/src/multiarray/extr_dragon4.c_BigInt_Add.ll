; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_BigInt_Add.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_BigInt_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64* }

@c_BigInt_MaxBlocks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @BigInt_Add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BigInt_Add(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %8, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %7, align 8
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %7, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %10, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64* %43, i64** %12, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %11, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  store i64* %51, i64** %13, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  store i64* %54, i64** %14, align 8
  br label %55

55:                                               ; preds = %59, %30
  %56 = load i64*, i64** %11, align 8
  %57 = load i64*, i64** %13, align 8
  %58 = icmp ne i64* %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = load i64*, i64** %10, align 8
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = add nsw i32 %60, %63
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = add nsw i32 %64, %67
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = ashr i32 %69, 32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @bitmask_u64(i32 32)
  %73 = and i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = load i64*, i64** %14, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = getelementptr inbounds i64, i64* %76, i32 1
  store i64* %77, i64** %10, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %11, align 8
  %80 = load i64*, i64** %14, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %14, align 8
  br label %55

82:                                               ; preds = %55
  br label %83

83:                                               ; preds = %87, %82
  %84 = load i64*, i64** %10, align 8
  %85 = load i64*, i64** %12, align 8
  %86 = icmp ne i64* %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = load i64*, i64** %10, align 8
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = ashr i32 %93, 32
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @bitmask_u64(i32 32)
  %97 = and i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = load i64*, i64** %14, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i64*, i64** %10, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %10, align 8
  %102 = load i64*, i64** %14, align 8
  %103 = getelementptr inbounds i64, i64* %102, i32 1
  store i64* %103, i64** %14, align 8
  br label %83

104:                                              ; preds = %83
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 1
  %110 = zext i1 %109 to i32
  %111 = call i32 @DEBUG_ASSERT(i32 %110)
  %112 = load i64*, i64** %14, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = ptrtoint i64* %112 to i64
  %117 = ptrtoint i64* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %107
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @c_BigInt_MaxBlocks, align 8
  %129 = icmp slt i64 %127, %128
  br label %130

130:                                              ; preds = %124, %107
  %131 = phi i1 [ false, %107 ], [ %129, %124 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @DEBUG_ASSERT(i32 %132)
  %134 = load i64*, i64** %14, align 8
  store i64 1, i64* %134, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %147

141:                                              ; preds = %104
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %141, %130
  ret void
}

declare dso_local i32 @bitmask_u64(i32) #1

declare dso_local i32 @DEBUG_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
