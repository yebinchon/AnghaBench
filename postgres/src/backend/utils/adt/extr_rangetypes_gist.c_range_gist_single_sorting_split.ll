; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_gist_single_sorting_split.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_gist_single_sorting_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i8*, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@FirstOffsetNumber = common dso_local global i32 0, align 4
@single_bound_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32)* @range_gist_single_sorting_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_gist_single_sorting_split(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @palloc(i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %9, align 8
  %30 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %80, %4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @DatumGetRangeTypeP(i32 %43)
  store i32* %44, i32** %15, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %45, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %35
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = call i32 @range_deserialize(i32* %55, i32* %56, i32* %16, i32* %62, i32* %17)
  br label %74

64:                                               ; preds = %35
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = call i32 @range_deserialize(i32* %65, i32* %66, i32* %72, i32* %16, i32* %17)
  br label %74

74:                                               ; preds = %64, %54
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @Assert(i32 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @OffsetNumberNext(i32 %81)
  store i32 %82, i32* %12, align 4
  br label %31

83:                                               ; preds = %31
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @single_bound_cmp, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @qsort_arg(%struct.TYPE_9__* %84, i32 %85, i32 8, i32 %86, i32* %87)
  %89 = load i32, i32* %13, align 4
  %90 = sdiv i32 %89, 2
  store i32 %90, i32* %14, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %127, %83
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %95
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %18, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32* @DatumGetRangeTypeP(i32 %113)
  store i32* %114, i32** %19, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %99
  %119 = load i32*, i32** %19, align 8
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @PLACE_LEFT(i32* %119, i32 %120)
  br label %126

122:                                              ; preds = %99
  %123 = load i32*, i32** %19, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @PLACE_RIGHT(i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %95

130:                                              ; preds = %95
  %131 = load i32*, i32** %10, align 8
  %132 = call i8* @RangeTypePGetDatum(i32* %131)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = call i8* @RangeTypePGetDatum(i32* %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  ret void
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @DatumGetRangeTypeP(i32) #1

declare dso_local i32 @range_deserialize(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i32 @qsort_arg(%struct.TYPE_9__*, i32, i32, i32, i32*) #1

declare dso_local i32 @PLACE_LEFT(i32*, i32) #1

declare dso_local i32 @PLACE_RIGHT(i32*, i32) #1

declare dso_local i8* @RangeTypePGetDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
