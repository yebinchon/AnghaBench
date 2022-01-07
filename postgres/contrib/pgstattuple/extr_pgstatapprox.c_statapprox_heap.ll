; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstatapprox.c_statapprox_heap.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstatapprox.c_statapprox_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double, double, i32, i32, double, double, double, i32, i32 }
%struct.TYPE_6__ = type { double, i32, i64, i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@PROCARRAY_FLAGS_VACUUM = common dso_local global i32 0, align 4
@BAS_BULKREAD = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@SizeOfPageHeaderData = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unexpected HeapTupleSatisfiesVacuum result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*)* @statapprox_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statapprox_heap(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %18 = load i32, i32* @InvalidBuffer, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PROCARRAY_FLAGS_VACUUM, align 4
  %21 = call i32 @GetOldestXmin(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @BAS_BULKREAD, align 4
  %23 = call i32 @GetAccessStrategy(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @RelationGetNumberOfBlocks(i32 %24)
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %178, %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %181

30:                                               ; preds = %26
  %31 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @VM_ALL_VISIBLE(i32 %32, i32 %33, i32* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @GetRecordedFreeSpace(i32 %37, i32 %38)
  store i64 %39, i64* %15, align 8
  %40 = load i32, i32* @BLCKSZ, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %15, align 8
  %43 = sub nsw i64 %41, %42
  %44 = sitofp i64 %43 to double
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = fadd double %47, %44
  store double %48, double* %46, align 8
  %49 = load i64, i64* %15, align 8
  %50 = sitofp i64 %49 to double
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  %54 = fadd double %53, %50
  store double %54, double* %52, align 8
  br label %178

55:                                               ; preds = %30
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @MAIN_FORKNUM, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @RBM_NORMAL, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ReadBufferExtended(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %64 = call i32 @LockBuffer(i32 %62, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @BufferGetPage(i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @PageIsNew(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @PageGetHeapFreeSpace(i32 %71)
  %73 = sitofp i64 %72 to double
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load double, double* %75, align 8
  %77 = fadd double %76, %73
  store double %77, double* %75, align 8
  br label %88

78:                                               ; preds = %55
  %79 = load i32, i32* @BLCKSZ, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @SizeOfPageHeaderData, align 8
  %82 = sub nsw i64 %80, %81
  %83 = sitofp i64 %82 to double
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load double, double* %85, align 8
  %87 = fadd double %86, %83
  store double %87, double* %85, align 8
  br label %88

88:                                               ; preds = %78, %70
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @PageIsNew(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @PageIsEmpty(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @UnlockReleaseBuffer(i32 %99)
  br label %178

101:                                              ; preds = %94
  %102 = load i32, i32* %12, align 4
  %103 = call i64 @PageGetMaxOffsetNumber(i32 %102)
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %104, i64* %13, align 8
  br label %105

105:                                              ; preds = %172, %101
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp sle i64 %106, %107
  br i1 %108, label %109, label %175

109:                                              ; preds = %105
  %110 = load i32, i32* %12, align 4
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @PageGetItemId(i32 %110, i64 %111)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @ItemIdIsUsed(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = load i32, i32* %16, align 4
  %118 = call i64 @ItemIdIsRedirected(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %16, align 4
  %122 = call i64 @ItemIdIsDead(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %116, %109
  br label %172

125:                                              ; preds = %120
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @ItemIdIsNormal(i32 %126)
  %128 = call i32 @Assert(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %130 = load i32, i32* %7, align 4
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @ItemPointerSet(i32* %129, i32 %130, i64 %131)
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %16, align 4
  %135 = call i64 @PageGetItem(i32 %133, i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i64 %135, i64* %136, align 8
  %137 = load i32, i32* %16, align 4
  %138 = call double @ItemIdGetLength(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store double %138, double* %139, align 8
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @RelationGetRelid(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %141, i32* %142, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_6__* %17, i32 %143, i32 %144)
  switch i32 %145, label %168 [
    i32 129, label %146
    i32 131, label %146
    i32 132, label %157
    i32 128, label %157
    i32 130, label %157
  ]

146:                                              ; preds = %125, %125
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %148 = load double, double* %147, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load double, double* %150, align 8
  %152 = fadd double %151, %148
  store double %152, double* %150, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  br label %171

157:                                              ; preds = %125, %125, %125
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %159 = load double, double* %158, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load double, double* %161, align 8
  %163 = fadd double %162, %159
  store double %163, double* %161, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %171

168:                                              ; preds = %125
  %169 = load i32, i32* @ERROR, align 4
  %170 = call i32 @elog(i32 %169, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %157, %146
  br label %172

172:                                              ; preds = %171, %124
  %173 = load i64, i64* %13, align 8
  %174 = call i64 @OffsetNumberNext(i64 %173)
  store i64 %174, i64* %13, align 8
  br label %105

175:                                              ; preds = %105
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @UnlockReleaseBuffer(i32 %176)
  br label %178

178:                                              ; preds = %175, %98, %36
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %26

181:                                              ; preds = %26
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @BLCKSZ, align 4
  %184 = mul nsw i32 %182, %183
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %5, align 4
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @vac_estimate_reltuples(i32 %187, i32 %188, i32 %189, i32 %192)
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 8
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %238

198:                                              ; preds = %181
  %199 = load i32, i32* %5, align 4
  %200 = mul nsw i32 100, %199
  %201 = load i32, i32* %6, align 4
  %202 = sdiv i32 %200, %201
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load double, double* %206, align 8
  %208 = fmul double 1.000000e+02, %207
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = sitofp i32 %211 to double
  %213 = fdiv double %208, %212
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 5
  store double %213, double* %215, align 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 2
  %218 = load double, double* %217, align 8
  %219 = fmul double 1.000000e+02, %218
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = sitofp i32 %222 to double
  %224 = fdiv double %219, %223
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 6
  store double %224, double* %226, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load double, double* %228, align 8
  %230 = fmul double 1.000000e+02, %229
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = sitofp i32 %233 to double
  %235 = fdiv double %230, %234
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 7
  store double %235, double* %237, align 8
  br label %238

238:                                              ; preds = %198, %181
  %239 = load i32, i32* %8, align 4
  %240 = call i64 @BufferIsValid(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @ReleaseBuffer(i32 %243)
  %245 = load i32, i32* @InvalidBuffer, align 4
  store i32 %245, i32* %8, align 4
  br label %246

246:                                              ; preds = %242, %238
  ret void
}

declare dso_local i32 @GetOldestXmin(i32, i32) #1

declare dso_local i32 @GetAccessStrategy(i32) #1

declare dso_local i32 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @VM_ALL_VISIBLE(i32, i32, i32*) #1

declare dso_local i64 @GetRecordedFreeSpace(i32, i32) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i64 @PageGetHeapFreeSpace(i32) #1

declare dso_local i64 @PageIsEmpty(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsUsed(i32) #1

declare dso_local i64 @ItemIdIsRedirected(i32) #1

declare dso_local i64 @ItemIdIsDead(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i64) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local double @ItemIdGetLength(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @vac_estimate_reltuples(i32, i32, i32, i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
