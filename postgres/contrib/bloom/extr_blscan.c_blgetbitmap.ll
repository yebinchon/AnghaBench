; ModuleID = '/home/carl/AnghaBench/postgres/contrib/bloom/extr_blscan.c_blgetbitmap.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/bloom/extr_blscan.c_blgetbitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32 }

@BLOOM_HEAD_BLKNO = common dso_local global i64 0, align 8
@SK_ISNULL = common dso_local global i32 0, align 4
@BAS_BULKREAD = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @blgetbitmap(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %19 = load i64, i64* @BLOOM_HEAD_BLKNO, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %11, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %84

29:                                               ; preds = %2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %12, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32* @palloc0(i32 %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %80, %29
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SK_ISNULL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @pfree(i32* %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  store i64 0, i64* %3, align 8
  br label %201

64:                                               ; preds = %50
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @signValue(%struct.TYPE_15__* %66, i32* %69, i32 %72, i64 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 1
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %12, align 8
  br label %80

80:                                               ; preds = %64
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %44

83:                                               ; preds = %44
  br label %84

84:                                               ; preds = %83, %2
  %85 = load i32, i32* @BAS_BULKREAD, align 4
  %86 = call i32 @GetAccessStrategy(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @RelationGetNumberOfBlocks(i32 %89)
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* @BLOOM_HEAD_BLKNO, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %194, %84
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %197

96:                                               ; preds = %92
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MAIN_FORKNUM, align 4
  %101 = load i64, i64* %7, align 8
  %102 = load i32, i32* @RBM_NORMAL, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @ReadBufferExtended(i32 %99, i32 %100, i64 %101, i32 %102, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %107 = call i32 @LockBuffer(i32 %105, i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @BufferGetPage(i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @TestForOldSnapshot(i32 %112, i32 %115, i32 %116)
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @PageIsNew(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %190, label %121

121:                                              ; preds = %96
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @BloomPageIsDeleted(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %190, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @BloomPageGetMaxOffset(i32 %126)
  store i32 %127, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %128

128:                                              ; preds = %186, %125
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %189

132:                                              ; preds = %128
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call %struct.TYPE_13__* @BloomPageGetTuple(%struct.TYPE_15__* %134, i32 %135, i32 %136)
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %17, align 8
  store i32 1, i32* %18, align 4
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %172, %132
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %139, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %138
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %153, %160
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %161, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %146
  store i32 0, i32* %18, align 4
  br label %175

171:                                              ; preds = %146
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %138

175:                                              ; preds = %170, %138
  %176 = load i32, i32* %18, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load i32*, i32** %5, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = call i32 @tbm_add_tuples(i32* %179, i32* %181, i32 1, i32 1)
  %183 = load i64, i64* %6, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %6, align 8
  br label %185

185:                                              ; preds = %178, %175
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %128

189:                                              ; preds = %128
  br label %190

190:                                              ; preds = %189, %121, %96
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @UnlockReleaseBuffer(i32 %191)
  %193 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %7, align 8
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* %7, align 8
  br label %92

197:                                              ; preds = %92
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @FreeAccessStrategy(i32 %198)
  %200 = load i64, i64* %6, align 8
  store i64 %200, i64* %3, align 8
  br label %201

201:                                              ; preds = %197, %57
  %202 = load i64, i64* %3, align 8
  ret i64 %202
}

declare dso_local i32* @palloc0(i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @signValue(%struct.TYPE_15__*, i32*, i32, i64) #1

declare dso_local i32 @GetAccessStrategy(i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i32 @PageIsNew(i32) #1

declare dso_local i32 @BloomPageIsDeleted(i32) #1

declare dso_local i32 @BloomPageGetMaxOffset(i32) #1

declare dso_local %struct.TYPE_13__* @BloomPageGetTuple(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @tbm_add_tuples(i32*, i32*, i32, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @FreeAccessStrategy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
