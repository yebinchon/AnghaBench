; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgscan.c_spgWalk.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgscan.c_spgWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32 }

@InvalidBuffer = common dso_local global i64 0, align 8
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@SpGistRedirectOffsetNumber = common dso_local global i64 0, align 8
@SPGIST_LIVE = common dso_local global i64 0, align 8
@SPGIST_REDIRECT = common dso_local global i64 0, align 8
@SPGIST_METAPAGE_BLKNO = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected SPGiST tuple state: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_18__*, i32, i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)*, i32)* @spgWalk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spgWalk(i32 %0, %struct.TYPE_18__* %1, i32 %2, i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)* %3, i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load i64, i64* @InvalidBuffer, align 8
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %218, %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ true, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %226

30:                                               ; preds = %28
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %32 = call %struct.TYPE_19__* @spgGetNextQueueItem(%struct.TYPE_18__* %31)
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %13, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %34 = icmp eq %struct.TYPE_19__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %226

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %191, %168, %36
  %38 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)** %9, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %50(%struct.TYPE_18__* %51, i32* %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68)
  store i32 1, i32* %12, align 4
  br label %218

70:                                               ; preds = %37
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = call i64 @ItemPointerGetBlockNumber(i32* %72)
  store i64 %73, i64* %14, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = call i64 @ItemPointerGetOffsetNumber(i32* %75)
  store i64 %76, i64* %15, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @InvalidBuffer, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = load i64, i64* %14, align 8
  %83 = call i64 @ReadBuffer(i32 %81, i64 %82)
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %86 = call i32 @LockBuffer(i64 %84, i32 %85)
  br label %102

87:                                               ; preds = %70
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i64 @BufferGetBlockNumber(i64 %89)
  %91 = icmp ne i64 %88, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @UnlockReleaseBuffer(i64 %93)
  %95 = load i32, i32* %6, align 4
  %96 = load i64, i64* %14, align 8
  %97 = call i64 @ReadBuffer(i32 %95, i64 %96)
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %100 = call i32 @LockBuffer(i64 %98, i32 %99)
  br label %101

101:                                              ; preds = %92, %87
  br label %102

102:                                              ; preds = %101, %80
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @BufferGetPage(i64 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @TestForOldSnapshot(i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %16, align 4
  %110 = call i64 @SpGistPageStoresNulls(i32 %109)
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 0
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i64 @SpGistPageIsLeaf(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %172

117:                                              ; preds = %102
  %118 = load i32, i32* %16, align 4
  %119 = call i64 @PageGetMaxOffsetNumber(i32 %118)
  store i64 %119, i64* %18, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i64 @SpGistBlockIsRoot(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %117
  %124 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %124, i64* %15, align 8
  br label %125

125:                                              ; preds = %137, %123
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* %18, align 8
  %128 = icmp sle i64 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load i64, i64* %15, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)** %9, align 8
  %136 = call i64 @spgTestLeafTuple(%struct.TYPE_18__* %130, %struct.TYPE_19__* %131, i32 %132, i64 %133, i32 %134, i32 1, i32* %12, i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)* %135)
  br label %137

137:                                              ; preds = %129
  %138 = load i64, i64* %15, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %15, align 8
  br label %125

140:                                              ; preds = %125
  br label %171

141:                                              ; preds = %117
  br label %142

142:                                              ; preds = %169, %141
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* @InvalidOffsetNumber, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %142
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* @FirstOffsetNumber, align 8
  %149 = icmp sge i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i64, i64* %15, align 8
  %152 = load i64, i64* %18, align 8
  %153 = icmp sle i64 %151, %152
  br label %154

154:                                              ; preds = %150, %146
  %155 = phi i1 [ false, %146 ], [ %153, %150 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @Assert(i32 %156)
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load i64, i64* %15, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)** %9, align 8
  %164 = call i64 @spgTestLeafTuple(%struct.TYPE_18__* %158, %struct.TYPE_19__* %159, i32 %160, i64 %161, i32 %162, i32 0, i32* %12, i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)* %163)
  store i64 %164, i64* %15, align 8
  %165 = load i64, i64* %15, align 8
  %166 = load i64, i64* @SpGistRedirectOffsetNumber, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %154
  br label %37

169:                                              ; preds = %154
  br label %142

170:                                              ; preds = %142
  br label %171

171:                                              ; preds = %170, %140
  br label %217

172:                                              ; preds = %102
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load i64, i64* %15, align 8
  %176 = call i32 @PageGetItemId(i32 %174, i64 %175)
  %177 = call i32 @PageGetItem(i32 %173, i32 %176)
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %179, %struct.TYPE_20__** %19, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @SPGIST_LIVE, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %172
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @SPGIST_REDIRECT, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %185
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %193 = bitcast %struct.TYPE_20__* %192 to %struct.TYPE_21__*
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = call i64 @ItemPointerGetBlockNumber(i32* %199)
  %201 = load i64, i64* @SPGIST_METAPAGE_BLKNO, align 8
  %202 = icmp ne i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @Assert(i32 %203)
  br label %37

205:                                              ; preds = %185
  %206 = load i32, i32* @ERROR, align 4
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @elog(i32 %206, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %209)
  br label %211

211:                                              ; preds = %205, %172
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %215 = load i32, i32* %17, align 4
  %216 = call i32 @spgInnerTest(%struct.TYPE_18__* %212, %struct.TYPE_19__* %213, %struct.TYPE_20__* %214, i32 %215)
  br label %217

217:                                              ; preds = %211, %171
  br label %218

218:                                              ; preds = %217, %43
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %221 = call i32 @spgFreeSearchItem(%struct.TYPE_18__* %219, %struct.TYPE_19__* %220)
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @MemoryContextReset(i32 %224)
  br label %21

226:                                              ; preds = %35, %28
  %227 = load i64, i64* %11, align 8
  %228 = load i64, i64* @InvalidBuffer, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i64, i64* %11, align 8
  %232 = call i32 @UnlockReleaseBuffer(i64 %231)
  br label %233

233:                                              ; preds = %230, %226
  ret void
}

declare dso_local %struct.TYPE_19__* @spgGetNextQueueItem(%struct.TYPE_18__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @ReadBuffer(i32, i64) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i64 @BufferGetBlockNumber(i64) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @SpGistPageStoresNulls(i32) #1

declare dso_local i64 @SpGistPageIsLeaf(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @SpGistBlockIsRoot(i64) #1

declare dso_local i64 @spgTestLeafTuple(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i64, i32, i32, i32*, i32 (%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i32)*) #1

declare dso_local i32 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @spgInnerTest(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @spgFreeSearchItem(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
