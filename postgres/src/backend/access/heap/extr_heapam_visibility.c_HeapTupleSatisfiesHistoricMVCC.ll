; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesHistoricMVCC.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesHistoricMVCC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@InvalidCommandId = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not resolve cmin/cmax of catalog tuple\00", align 1
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not resolve combocid to cmax\00", align 1
@HEAP_XMAX_COMMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32)* @HeapTupleSatisfiesHistoricMVCC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HeapTupleSatisfiesHistoricMVCC(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %8, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_15__* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_15__* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = call i32 @ItemPointerIsValid(i32* %25)
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @InvalidOid, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = call i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_15__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @TransactionIdDidCommit(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  store i32 0, i32* %4, align 4
  br label %256

45:                                               ; preds = %3
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @TransactionIdInArray(i32 %46, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %45
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = call i64 @HeapTupleHeaderGetRawCommandId(%struct.TYPE_15__* %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* @InvalidCommandId, align 8
  store i64 %58, i64* %13, align 8
  %59 = call i32 (...) @HistoricSnapshotGetTupleCids()
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ResolveCminCmaxDuringDecoding(i32 %59, %struct.TYPE_14__* %60, %struct.TYPE_16__* %61, i32 %62, i64* %12, i64* %13)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @ERROR, align 4
  %68 = call i32 @elog(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %55
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @InvalidCommandId, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %256

81:                                               ; preds = %69
  br label %135

82:                                               ; preds = %45
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @TransactionIdPrecedes(i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %82
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %91 = call i64 @HeapTupleHeaderXminCommitted(%struct.TYPE_15__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @TransactionIdDidCommit(i32 %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %93, %89
  %99 = phi i1 [ false, %89 ], [ %97, %93 ]
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %104 = call i64 @HeapTupleHeaderXminCommitted(%struct.TYPE_15__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @TransactionIdDidCommit(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %256

111:                                              ; preds = %106, %98
  br label %134

112:                                              ; preds = %82
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @TransactionIdFollowsOrEquals(i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %256

120:                                              ; preds = %112
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @TransactionIdInArray(i32 %121, i32 %124, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %132

131:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %256

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133, %111
  br label %135

135:                                              ; preds = %134, %81
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 1, i32* %4, align 4
  br label %256

144:                                              ; preds = %136
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 1, i32* %4, align 4
  br label %256

151:                                              ; preds = %144
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %160 = call i32 @HeapTupleGetUpdateXid(%struct.TYPE_15__* %159)
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %158, %151
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @TransactionIdInArray(i32 %164, i32 %167, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %199

173:                                              ; preds = %163
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %175 = call i64 @HeapTupleHeaderGetRawCommandId(%struct.TYPE_15__* %174)
  store i64 %175, i64* %16, align 8
  %176 = call i32 (...) @HistoricSnapshotGetTupleCids()
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @ResolveCminCmaxDuringDecoding(i32 %176, %struct.TYPE_14__* %177, %struct.TYPE_16__* %178, i32 %179, i64* %15, i64* %16)
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %173
  %184 = load i32, i32* @ERROR, align 4
  %185 = call i32 @elog(i32 %184, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %173
  %187 = load i64, i64* %16, align 8
  %188 = load i64, i64* @InvalidCommandId, align 8
  %189 = icmp ne i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @Assert(i32 %190)
  %192 = load i64, i64* %16, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp sge i64 %192, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %186
  store i32 1, i32* %4, align 4
  br label %256

198:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %256

199:                                              ; preds = %163
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @TransactionIdPrecedes(i32 %200, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %236

206:                                              ; preds = %199
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @TransactionIdDidCommit(i32 %214)
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  br label %218

218:                                              ; preds = %213, %206
  %219 = phi i1 [ false, %206 ], [ %217, %213 ]
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = call i32 @Assert(i32 %221)
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %218
  store i32 0, i32* %4, align 4
  br label %256

230:                                              ; preds = %218
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @TransactionIdDidCommit(i32 %231)
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  store i32 %235, i32* %4, align 4
  br label %256

236:                                              ; preds = %199
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @TransactionIdFollowsOrEquals(i32 %237, i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  store i32 1, i32* %4, align 4
  br label %256

244:                                              ; preds = %236
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @TransactionIdInArray(i32 %245, i32 %248, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %244
  store i32 0, i32* %4, align 4
  br label %256

255:                                              ; preds = %244
  store i32 1, i32* %4, align 4
  br label %256

256:                                              ; preds = %255, %254, %243, %230, %229, %198, %197, %150, %143, %131, %119, %110, %80, %38
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local i32 @HeapTupleHeaderGetXmin(%struct.TYPE_15__*) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_15__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_15__*) #1

declare dso_local i32 @TransactionIdDidCommit(i32) #1

declare dso_local i64 @TransactionIdInArray(i32, i32, i32) #1

declare dso_local i64 @HeapTupleHeaderGetRawCommandId(%struct.TYPE_15__*) #1

declare dso_local i32 @ResolveCminCmaxDuringDecoding(i32, %struct.TYPE_14__*, %struct.TYPE_16__*, i32, i64*, i64*) #1

declare dso_local i32 @HistoricSnapshotGetTupleCids(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i64 @HeapTupleHeaderXminCommitted(%struct.TYPE_15__*) #1

declare dso_local i64 @TransactionIdFollowsOrEquals(i32, i32) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i32 @HeapTupleGetUpdateXid(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
