; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_entryLoadMoreItems.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_entryLoadMoreItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i32*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i32 }

@GIN_SHARE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"entryLoadMoreItems, %u/%u, skip: %d\00", align 1
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i8* null, align 8
@GIN_DELETED = common dso_local global i32 0, align 4
@GIN_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32)* @entryLoadMoreItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entryLoadMoreItems(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @BufferIsValid(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %205

21:                                               ; preds = %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 6
  %24 = call i64 @ginCompareItemPointers(i32* %23, i32* %7)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @GIN_SHARE, align 4
  %31 = call i32 @LockBuffer(i8* %29, i32 %30)
  br label %74

32:                                               ; preds = %21
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @ReleaseBuffer(i8* %35)
  %37 = call i64 @ItemPointerIsLossyPage(i32* %7)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = call i64 @GinItemPointerGetBlockNumber(i32* %7)
  %44 = add nsw i64 %43, 1
  %45 = load i32, i32* @FirstOffsetNumber, align 4
  %46 = call i32 @ItemPointerSet(i32* %42, i64 %44, i32 %45)
  br label %55

47:                                               ; preds = %32
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = call i64 @GinItemPointerGetBlockNumber(i32* %7)
  %52 = call i32 @GinItemPointerGetOffsetNumber(i32* %7)
  %53 = call i32 @OffsetNumberNext(i32 %52)
  %54 = call i32 @ItemPointerSet(i32* %50, i64 %51, i32 %53)
  br label %55

55:                                               ; preds = %47, %39
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  %61 = load i32, i32* %8, align 4
  %62 = call %struct.TYPE_12__* @ginFindLeafPage(%struct.TYPE_13__* %60, i32 1, i32 0, i32 %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %12, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @IncrBufferRefCount(i8* %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %73 = call i32 @freeGinBtreeStack(%struct.TYPE_12__* %72)
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %55, %26
  %75 = load i32, i32* @DEBUG2, align 4
  %76 = call i64 @GinItemPointerGetBlockNumber(i32* %7)
  %77 = call i32 @GinItemPointerGetOffsetNumber(i32* %7)
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @elog(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %76, i32 %77, i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @BufferGetPage(i8* %85)
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %204, %154, %144, %74
  %88 = load i32, i32* @InvalidOffsetNumber, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @pfree(i32* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  store i32* null, i32** %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %95, %87
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @GinPageRightMost(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @UnlockReleaseBuffer(i8* %114)
  %116 = load i8*, i8** @InvalidBuffer, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %205

121:                                              ; preds = %107
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @GIN_SHARE, align 4
  %129 = call i8* @ginStepRight(i8* %124, i32 %127, i32 %128)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @BufferGetPage(i8* %134)
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %121, %104
  store i32 1, i32* %11, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call %struct.TYPE_14__* @GinPageGetOpaque(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @GIN_DELETED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %87

145:                                              ; preds = %136
  %146 = load i32, i32* %9, align 4
  %147 = call i64 @GinPageRightMost(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = call i32* @GinDataPageGetRightBound(i32 %150)
  %152 = call i64 @ginCompareItemPointers(i32* %7, i32* %151)
  %153 = icmp sge i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %87

155:                                              ; preds = %149, %145
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  %159 = load i32, i32* %7, align 4
  %160 = call i32* @GinDataLeafPageGetItems(i32 %156, i32* %158, i32 %159)
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 4
  store i32* %160, i32** %162, align 8
  store i32 0, i32* %10, align 4
  br label %163

163:                                              ; preds = %201, %155
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %204

169:                                              ; preds = %163
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = call i64 @ginCompareItemPointers(i32* %7, i32* %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %169
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i64 @GinPageRightMost(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %178
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @UnlockReleaseBuffer(i8* %188)
  %190 = load i8*, i8** @InvalidBuffer, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  br label %199

193:                                              ; preds = %178
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* @GIN_UNLOCK, align 4
  %198 = call i32 @LockBuffer(i8* %196, i32 %197)
  br label %199

199:                                              ; preds = %193, %185
  br label %205

200:                                              ; preds = %169
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %163

204:                                              ; preds = %163
  br label %87

205:                                              ; preds = %199, %111, %18
  ret void
}

declare dso_local i32 @BufferIsValid(i8*) #1

declare dso_local i64 @ginCompareItemPointers(i32*, i32*) #1

declare dso_local i32 @LockBuffer(i8*, i32) #1

declare dso_local i32 @ReleaseBuffer(i8*) #1

declare dso_local i64 @ItemPointerIsLossyPage(i32*) #1

declare dso_local i32 @ItemPointerSet(i32*, i64, i32) #1

declare dso_local i64 @GinItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i32 @GinItemPointerGetOffsetNumber(i32*) #1

declare dso_local %struct.TYPE_12__* @ginFindLeafPage(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @IncrBufferRefCount(i8*) #1

declare dso_local i32 @freeGinBtreeStack(%struct.TYPE_12__*) #1

declare dso_local i32 @elog(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @BufferGetPage(i8*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i64 @GinPageRightMost(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i8*) #1

declare dso_local i8* @ginStepRight(i8*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @GinPageGetOpaque(i32) #1

declare dso_local i32* @GinDataPageGetRightBound(i32) #1

declare dso_local i32* @GinDataLeafPageGetItems(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
