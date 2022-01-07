; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginpostinglist.c_ginPostingListDecodeAllSegments.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginpostinglist.c_ginPostingListDecodeAllSegments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ginPostingListDecodeAllSegments(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = bitcast %struct.TYPE_5__* %14 to i8*
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %10, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32* @palloc(i32 %27)
  store i32* %28, i32** %7, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %123, %3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = bitcast %struct.TYPE_5__* %30 to i8*
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %126

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32* @repalloc(i32* %41, i32 %45)
  store i32* %46, i32** %7, align 8
  br label %47

47:                                               ; preds = %38, %34
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = call i32 @ItemPointerGetOffsetNumber(i32* %49)
  %51 = call i32 @OffsetNumberIsValid(i32 %50)
  %52 = call i32 @Assert(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = call i64 @ginCompareItemPointers(i32* %57, i32* %62)
  %64 = icmp sgt i64 %63, 0
  br label %65

65:                                               ; preds = %55, %47
  %66 = phi i1 [ true, %47 ], [ %64, %55 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = call i32 @itemptr_to_uint64(i32* %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %12, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  store i8* %91, i8** %13, align 8
  br label %92

92:                                               ; preds = %109, %65
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = icmp ult i8* %93, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %92
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 %101, 2
  store i32 %102, i32* %8, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = call i32* @repalloc(i32* %103, i32 %107)
  store i32* %108, i32** %7, align 8
  br label %109

109:                                              ; preds = %100, %96
  %110 = call i64 @decode_varbyte(i8** %12)
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @uint64_to_itemptr(i32 %115, i32* %119)
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %92

123:                                              ; preds = %92
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = call %struct.TYPE_5__* @GinNextPostingListSegment(%struct.TYPE_5__* %124)
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** %4, align 8
  br label %29

126:                                              ; preds = %29
  %127 = load i32*, i32** %6, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = load i32*, i32** %6, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32*, i32** %7, align 8
  ret i32* %133
}

declare dso_local i32* @palloc(i32) #1

declare dso_local i32* @repalloc(i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OffsetNumberIsValid(i32) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @ginCompareItemPointers(i32*, i32*) #1

declare dso_local i32 @itemptr_to_uint64(i32*) #1

declare dso_local i64 @decode_varbyte(i8**) #1

declare dso_local i32 @uint64_to_itemptr(i32, i32*) #1

declare dso_local %struct.TYPE_5__* @GinNextPostingListSegment(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
