; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_revmap.c_brinGetTupleForHeapBlock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_revmap.c_brinGetTupleForHeapBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, i8*, i32 }
%struct.TYPE_7__ = type { i32* }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@InvalidBuffer = common dso_local global i8* null, align 8
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"corrupted BRIN index: inconsistent range map\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @brinGetTupleForHeapBlock(%struct.TYPE_9__* %0, i64 %1, i8** %2, i64* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8** %2, i8*** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sdiv i64 %28, %31
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = mul nsw i64 %32, %35
  store i64 %36, i64* %10, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @revmap_get_blkno(%struct.TYPE_9__* %37, i64 %38)
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %17, align 8
  %41 = load i64, i64* @InvalidBlockNumber, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %7
  %44 = load i64, i64* @InvalidOffsetNumber, align 8
  %45 = load i64*, i64** %12, align 8
  store i64 %44, i64* %45, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %229

46:                                               ; preds = %7
  %47 = call i32 @ItemPointerSetInvalid(i32* %24)
  br label %48

48:                                               ; preds = %224, %46
  %49 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** @InvalidBuffer, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @BufferGetBlockNumber(i8* %58)
  %60 = load i64, i64* %17, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %55, %48
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** @InvalidBuffer, align 8
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @ReleaseBuffer(i8* %71)
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* @InvalidBlockNumber, align 8
  %76 = icmp ne i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @Assert(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %17, align 8
  %83 = call i8* @ReadBuffer(i32 %81, i64 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %73, %55
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %91 = call i32 @LockBuffer(i8* %89, i32 %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @BufferGetPage(i8* %94)
  %96 = call i64 @PageGetContents(i32 %95)
  %97 = inttoptr i64 %96 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %18, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %19, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @HEAPBLK_TO_REVMAP_INDEX(i64 %103, i64 %104)
  %106 = load i32*, i32** %19, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %19, align 8
  %109 = load i32*, i32** %19, align 8
  %110 = call i64 @ItemPointerIsValid(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %86
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %117 = call i32 @LockBuffer(i8* %115, i32 %116)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %229

118:                                              ; preds = %86
  %119 = call i64 @ItemPointerIsValid(i32* %24)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load i32*, i32** %19, align 8
  %123 = call i64 @ItemPointerEquals(i32* %24, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i32, i32* @ERROR, align 4
  %127 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %128 = call i32 @errcode(i32 %127)
  %129 = call i32 @errmsg_internal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %130 = call i32 @ereport(i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %125, %121, %118
  %132 = load i32*, i32** %19, align 8
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %24, align 4
  %134 = load i32*, i32** %19, align 8
  %135 = call i64 @ItemPointerGetBlockNumber(i32* %134)
  store i64 %135, i64* %20, align 8
  %136 = load i32*, i32** %19, align 8
  %137 = call i64 @ItemPointerGetOffsetNumber(i32* %136)
  %138 = load i64*, i64** %12, align 8
  store i64 %137, i64* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %143 = call i32 @LockBuffer(i8* %141, i32 %142)
  %144 = load i8**, i8*** %11, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @BufferIsValid(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %131
  %149 = load i8**, i8*** %11, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @BufferGetBlockNumber(i8* %150)
  %152 = load i64, i64* %20, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %148, %131
  %155 = load i8**, i8*** %11, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @BufferIsValid(i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i8**, i8*** %11, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @ReleaseBuffer(i8* %161)
  br label %163

163:                                              ; preds = %159, %154
  %164 = load i32, i32* %16, align 4
  %165 = load i64, i64* %20, align 8
  %166 = call i8* @ReadBuffer(i32 %164, i64 %165)
  %167 = load i8**, i8*** %11, align 8
  store i8* %166, i8** %167, align 8
  br label %168

168:                                              ; preds = %163, %148
  %169 = load i8**, i8*** %11, align 8
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @LockBuffer(i8* %170, i32 %171)
  %173 = load i8**, i8*** %11, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @BufferGetPage(i8* %174)
  store i32 %175, i32* %21, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %21, align 4
  %179 = call i32 @TestForOldSnapshot(i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %21, align 4
  %181 = call i64 @BRIN_IS_REGULAR_PAGE(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %224

183:                                              ; preds = %168
  %184 = load i64*, i64** %12, align 8
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %21, align 4
  %187 = call i64 @PageGetMaxOffsetNumber(i32 %186)
  %188 = icmp sgt i64 %185, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load i32, i32* @ERROR, align 4
  %191 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %192 = call i32 @errcode(i32 %191)
  %193 = call i32 @errmsg_internal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %194 = call i32 @ereport(i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %189, %183
  %196 = load i32, i32* %21, align 4
  %197 = load i64*, i64** %12, align 8
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @PageGetItemId(i32 %196, i64 %198)
  store i32 %199, i32* %22, align 4
  %200 = load i32, i32* %22, align 4
  %201 = call i64 @ItemIdIsUsed(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %195
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* %22, align 4
  %206 = call i64 @PageGetItem(i32 %204, i32 %205)
  %207 = inttoptr i64 %206 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %207, %struct.TYPE_8__** %23, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %10, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %222

213:                                              ; preds = %203
  %214 = load i32*, i32** %13, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* %22, align 4
  %218 = call i32 @ItemIdGetLength(i32 %217)
  %219 = load i32*, i32** %13, align 8
  store i32 %218, i32* %219, align 4
  br label %220

220:                                              ; preds = %216, %213
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %221, %struct.TYPE_8__** %8, align 8
  br label %229

222:                                              ; preds = %203
  br label %223

223:                                              ; preds = %222, %195
  br label %224

224:                                              ; preds = %223, %168
  %225 = load i8**, i8*** %11, align 8
  %226 = load i8*, i8** %225, align 8
  %227 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %228 = call i32 @LockBuffer(i8* %226, i32 %227)
  br label %48

229:                                              ; preds = %220, %112, %43
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  ret %struct.TYPE_8__* %230
}

declare dso_local i64 @revmap_get_blkno(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @BufferGetBlockNumber(i8*) #1

declare dso_local i32 @ReleaseBuffer(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @ReadBuffer(i32, i64) #1

declare dso_local i32 @LockBuffer(i8*, i32) #1

declare dso_local i64 @PageGetContents(i32) #1

declare dso_local i32 @BufferGetPage(i8*) #1

declare dso_local i32 @HEAPBLK_TO_REVMAP_INDEX(i64, i64) #1

declare dso_local i64 @ItemPointerIsValid(i32*) #1

declare dso_local i64 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @BufferIsValid(i8*) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @BRIN_IS_REGULAR_PAGE(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @ItemIdIsUsed(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
