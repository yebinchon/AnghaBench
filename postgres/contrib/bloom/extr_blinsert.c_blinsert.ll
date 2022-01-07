; ModuleID = '/home/carl/AnghaBench/postgres/contrib/bloom/extr_blinsert.c_blinsert.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/bloom/extr_blinsert.c_blinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64* }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Bloom insert temporary context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@BLOOM_METAPAGE_BLKNO = common dso_local global i64 0, align 8
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@GENERIC_XLOG_FULL_IMAGE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"could not add new bloom tuple to empty page\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blinsert(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %29 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %29, i64* %25, align 8
  %30 = load i32, i32* @CurrentMemoryContext, align 4
  %31 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %32 = call i32 @AllocSetContextCreate(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = call i32 @MemoryContextSwitchTo(i32 %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @initBloomState(i32* %16, i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32* @BloomFormTuple(i32* %16, i32 %37, i32* %38, i32* %39)
  store i32* %40, i32** %17, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* @BLOOM_METAPAGE_BLKNO, align 8
  %43 = call i32 @ReadBuffer(i32 %41, i64 %42)
  store i32 %43, i32* %22, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %46 = call i32 @LockBuffer(i32 %44, i32 %45)
  %47 = load i32, i32* %22, align 4
  %48 = call i32 @BufferGetPage(i32 %47)
  %49 = call %struct.TYPE_3__* @BloomPageGetMeta(i32 %48)
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %20, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ugt i64 %52, %55
  br i1 %56, label %57, label %116

57:                                               ; preds = %7
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %25, align 8
  %66 = load i64, i64* %25, align 8
  %67 = load i64, i64* @InvalidBlockNumber, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @Assert(i32 %69)
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %73 = call i32 @LockBuffer(i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = load i64, i64* %25, align 8
  %76 = call i32 @ReadBuffer(i32 %74, i64 %75)
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %79 = call i32 @LockBuffer(i32 %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = call i32* @GenericXLogStart(i32 %80)
  store i32* %81, i32** %27, align 8
  %82 = load i32*, i32** %27, align 8
  %83 = load i32, i32* %21, align 4
  %84 = call i32 @GenericXLogRegisterBuffer(i32* %82, i32 %83, i32 0)
  store i32 %84, i32* %28, align 4
  %85 = load i32, i32* %28, align 4
  %86 = call i64 @PageIsNew(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %57
  %89 = load i32, i32* %28, align 4
  %90 = call i64 @BloomPageIsDeleted(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88, %57
  %93 = load i32, i32* %28, align 4
  %94 = call i32 @BloomInitPage(i32 %93, i32 0)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* %28, align 4
  %97 = load i32*, i32** %17, align 8
  %98 = call i64 @BloomPageAddItem(i32* %16, i32 %96, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load i32*, i32** %27, align 8
  %102 = call i32 @GenericXLogFinish(i32* %101)
  %103 = load i32, i32* %21, align 4
  %104 = call i32 @UnlockReleaseBuffer(i32 %103)
  %105 = load i32, i32* %22, align 4
  %106 = call i32 @ReleaseBuffer(i32 %105)
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @MemoryContextSwitchTo(i32 %107)
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @MemoryContextDelete(i32 %109)
  store i32 0, i32* %8, align 4
  br label %253

111:                                              ; preds = %95
  %112 = load i32*, i32** %27, align 8
  %113 = call i32 @GenericXLogAbort(i32* %112)
  %114 = load i32, i32* %21, align 4
  %115 = call i32 @UnlockReleaseBuffer(i32 %114)
  br label %120

116:                                              ; preds = %7
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %119 = call i32 @LockBuffer(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %123 = call i32 @LockBuffer(i32 %121, i32 %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %26, align 8
  %127 = load i64, i64* %26, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ult i64 %127, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %120
  %133 = load i64, i64* %25, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %26, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %133, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i64, i64* %26, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %26, align 8
  br label %144

144:                                              ; preds = %141, %132, %120
  br label %145

145:                                              ; preds = %209, %144
  %146 = load i32, i32* %9, align 4
  %147 = call i32* @GenericXLogStart(i32 %146)
  store i32* %147, i32** %27, align 8
  %148 = load i32*, i32** %27, align 8
  %149 = load i32, i32* %22, align 4
  %150 = call i32 @GenericXLogRegisterBuffer(i32* %148, i32 %149, i32 0)
  store i32 %150, i32* %24, align 4
  %151 = load i32, i32* %24, align 4
  %152 = call %struct.TYPE_3__* @BloomPageGetMeta(i32 %151)
  store %struct.TYPE_3__* %152, %struct.TYPE_3__** %20, align 8
  %153 = load i64, i64* %26, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp uge i64 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  br label %216

159:                                              ; preds = %145
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %26, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %25, align 8
  %166 = load i64, i64* %25, align 8
  %167 = load i64, i64* @InvalidBlockNumber, align 8
  %168 = icmp ne i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @Assert(i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = load i64, i64* %25, align 8
  %173 = call i32 @ReadBuffer(i32 %171, i64 %172)
  store i32 %173, i32* %21, align 4
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %176 = call i32 @LockBuffer(i32 %174, i32 %175)
  %177 = load i32*, i32** %27, align 8
  %178 = load i32, i32* %21, align 4
  %179 = call i32 @GenericXLogRegisterBuffer(i32* %177, i32 %178, i32 0)
  store i32 %179, i32* %23, align 4
  %180 = load i32, i32* %23, align 4
  %181 = call i64 @PageIsNew(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %159
  %184 = load i32, i32* %23, align 4
  %185 = call i64 @BloomPageIsDeleted(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183, %159
  %188 = load i32, i32* %23, align 4
  %189 = call i32 @BloomInitPage(i32 %188, i32 0)
  br label %190

190:                                              ; preds = %187, %183
  %191 = load i32, i32* %23, align 4
  %192 = load i32*, i32** %17, align 8
  %193 = call i64 @BloomPageAddItem(i32* %16, i32 %191, i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %209

195:                                              ; preds = %190
  %196 = load i64, i64* %26, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  store i64 %196, i64* %198, align 8
  %199 = load i32*, i32** %27, align 8
  %200 = call i32 @GenericXLogFinish(i32* %199)
  %201 = load i32, i32* %21, align 4
  %202 = call i32 @UnlockReleaseBuffer(i32 %201)
  %203 = load i32, i32* %22, align 4
  %204 = call i32 @UnlockReleaseBuffer(i32 %203)
  %205 = load i32, i32* %18, align 4
  %206 = call i32 @MemoryContextSwitchTo(i32 %205)
  %207 = load i32, i32* %19, align 4
  %208 = call i32 @MemoryContextDelete(i32 %207)
  store i32 0, i32* %8, align 4
  br label %253

209:                                              ; preds = %190
  %210 = load i32*, i32** %27, align 8
  %211 = call i32 @GenericXLogAbort(i32* %210)
  %212 = load i32, i32* %21, align 4
  %213 = call i32 @UnlockReleaseBuffer(i32 %212)
  %214 = load i64, i64* %26, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %26, align 8
  br label %145

216:                                              ; preds = %158
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @BloomNewBuffer(i32 %217)
  store i32 %218, i32* %21, align 4
  %219 = load i32*, i32** %27, align 8
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* @GENERIC_XLOG_FULL_IMAGE, align 4
  %222 = call i32 @GenericXLogRegisterBuffer(i32* %219, i32 %220, i32 %221)
  store i32 %222, i32* %23, align 4
  %223 = load i32, i32* %23, align 4
  %224 = call i32 @BloomInitPage(i32 %223, i32 0)
  %225 = load i32, i32* %23, align 4
  %226 = load i32*, i32** %17, align 8
  %227 = call i64 @BloomPageAddItem(i32* %16, i32 %225, i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %216
  %230 = load i32, i32* @ERROR, align 4
  %231 = call i32 @elog(i32 %230, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %232

232:                                              ; preds = %229, %216
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  store i64 0, i64* %234, align 8
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  store i64 1, i64* %236, align 8
  %237 = load i32, i32* %21, align 4
  %238 = call i64 @BufferGetBlockNumber(i32 %237)
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 0
  store i64 %238, i64* %242, align 8
  %243 = load i32*, i32** %27, align 8
  %244 = call i32 @GenericXLogFinish(i32* %243)
  %245 = load i32, i32* %21, align 4
  %246 = call i32 @UnlockReleaseBuffer(i32 %245)
  %247 = load i32, i32* %22, align 4
  %248 = call i32 @UnlockReleaseBuffer(i32 %247)
  %249 = load i32, i32* %18, align 4
  %250 = call i32 @MemoryContextSwitchTo(i32 %249)
  %251 = load i32, i32* %19, align 4
  %252 = call i32 @MemoryContextDelete(i32 %251)
  store i32 0, i32* %8, align 4
  br label %253

253:                                              ; preds = %232, %195, %100
  %254 = load i32, i32* %8, align 4
  ret i32 %254
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @initBloomState(i32*, i32) #1

declare dso_local i32* @BloomFormTuple(i32*, i32, i32*, i32*) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local %struct.TYPE_3__* @BloomPageGetMeta(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @GenericXLogStart(i32) #1

declare dso_local i32 @GenericXLogRegisterBuffer(i32*, i32, i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i64 @BloomPageIsDeleted(i32) #1

declare dso_local i32 @BloomInitPage(i32, i32) #1

declare dso_local i64 @BloomPageAddItem(i32*, i32, i32*) #1

declare dso_local i32 @GenericXLogFinish(i32*) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

declare dso_local i32 @GenericXLogAbort(i32*) #1

declare dso_local i32 @BloomNewBuffer(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
