; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_load_qualified_items.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_load_qualified_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i32 }

@FirstOffsetNumber = common dso_local global i64 0, align 8
@INDEX_MOVED_BY_SPLIT_MASK = common dso_local global i32 0, align 4
@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i64, i32)* @_hash_load_qualified_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hash_load_qualified_items(%struct.TYPE_11__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @PageGetMaxOffsetNumber(i32 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @ScanDirectionIsForward(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %102

24:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %92, %68, %24
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %95

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @FirstOffsetNumber, align 8
  %32 = icmp sge i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @PageGetItemId(i32 %36, i64 %37)
  %39 = call i64 @PageGetItem(i32 %35, i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %11, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %29
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @INDEX_MOVED_BY_SPLIT_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %50, %45, %29
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @PageGetItemId(i32 %63, i64 %64)
  %66 = call i64 @ItemIdIsDead(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %50
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @OffsetNumberNext(i64 %69)
  store i64 %70, i64* %8, align 8
  br label %25

71:                                               ; preds = %62, %57
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = call i64 @_hash_get_indextuple_hashkey(%struct.TYPE_10__* %75)
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = call i64 @_hash_checkqual(%struct.TYPE_11__* %79, %struct.TYPE_10__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %88 = call i32 @_hash_saveitem(%struct.TYPE_12__* %84, i32 %85, i64 %86, %struct.TYPE_10__* %87)
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %92

91:                                               ; preds = %78, %71
  br label %95

92:                                               ; preds = %83
  %93 = load i64, i64* %8, align 8
  %94 = call i64 @OffsetNumberNext(i64 %93)
  store i64 %94, i64* %8, align 8
  br label %25

95:                                               ; preds = %91, %25
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %98 = icmp sle i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @Assert(i32 %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %180

102:                                              ; preds = %4
  %103 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %171, %147, %102
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @FirstOffsetNumber, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %174

108:                                              ; preds = %104
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %13, align 8
  %111 = icmp sle i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @Assert(i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @PageGetItemId(i32 %115, i64 %116)
  %118 = call i64 @PageGetItem(i32 %114, i32 %117)
  %119 = inttoptr i64 %118 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %11, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %108
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @INDEX_MOVED_BY_SPLIT_MASK, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %129, %124, %108
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  %143 = load i64, i64* %8, align 8
  %144 = call i32 @PageGetItemId(i32 %142, i64 %143)
  %145 = call i64 @ItemIdIsDead(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141, %129
  %148 = load i64, i64* %8, align 8
  %149 = call i64 @OffsetNumberPrev(i64 %148)
  store i64 %149, i64* %8, align 8
  br label %104

150:                                              ; preds = %141, %136
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %155 = call i64 @_hash_get_indextuple_hashkey(%struct.TYPE_10__* %154)
  %156 = icmp eq i64 %153, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %150
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %160 = call i64 @_hash_checkqual(%struct.TYPE_11__* %158, %struct.TYPE_10__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %12, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i64, i64* %8, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %169 = call i32 @_hash_saveitem(%struct.TYPE_12__* %165, i32 %166, i64 %167, %struct.TYPE_10__* %168)
  br label %171

170:                                              ; preds = %157, %150
  br label %174

171:                                              ; preds = %162
  %172 = load i64, i64* %8, align 8
  %173 = call i64 @OffsetNumberPrev(i64 %172)
  store i64 %173, i64* %8, align 8
  br label %104

174:                                              ; preds = %170, %104
  %175 = load i32, i32* %12, align 4
  %176 = icmp sge i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @Assert(i32 %177)
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %174, %95
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @ScanDirectionIsForward(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @ItemIdIsDead(i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i64 @_hash_get_indextuple_hashkey(%struct.TYPE_10__*) #1

declare dso_local i64 @_hash_checkqual(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @_hash_saveitem(%struct.TYPE_12__*, i32, i64, %struct.TYPE_10__*) #1

declare dso_local i64 @OffsetNumberPrev(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
