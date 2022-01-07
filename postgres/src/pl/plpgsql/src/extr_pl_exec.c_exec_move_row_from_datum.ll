; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_move_row_from_datum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_move_row_from_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_34__ = type { i64, i64, i32, i64, i64, i32, i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_34__* }

@ER_MAGIC = common dso_local global i64 0, align 8
@PLPGSQL_DTYPE_REC = common dso_local global i64 0, align 8
@RECORDOID = common dso_local global i64 0, align 8
@ER_FLAG_FVALUE_VALID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_32__*, %struct.TYPE_30__*, i32)* @exec_move_row_from_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_move_row_from_datum(%struct.TYPE_32__* %0, %struct.TYPE_30__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_33__, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_31__*, align 8
  %17 = alloca %struct.TYPE_34__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DatumGetPointer(i32 %19)
  %21 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %213

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @DatumGetEOHP(i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %26, %struct.TYPE_34__** %7, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %8, align 8
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ER_MAGIC, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PLPGSQL_DTYPE_REC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %188

39:                                               ; preds = %23
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %41 = bitcast %struct.TYPE_30__* %40 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %41, %struct.TYPE_31__** %9, align 8
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %44, align 8
  %46 = icmp eq %struct.TYPE_34__* %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %322

48:                                               ; preds = %39
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %50 = call i32 @revalidate_rectypeid(%struct.TYPE_31__* %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @DatumGetPointer(i32 %51)
  %53 = call i64 @VARATT_IS_EXTERNAL_EXPANDED_RW(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %48
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %73, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RECORDOID, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %71 = call i32 @ExpandedRecordIsDomain(%struct.TYPE_34__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69, %55
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %77 = call i32 @assign_record_var(%struct.TYPE_32__* %74, %struct.TYPE_31__* %75, %struct.TYPE_34__* %76)
  br label %322

78:                                               ; preds = %69, %63, %48
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %80, align 8
  %82 = icmp ne %struct.TYPE_34__* %81, null
  br i1 %82, label %83, label %135

83:                                               ; preds = %78
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ER_FLAG_FVALUE_VALID, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %135

90:                                               ; preds = %83
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %93, %98
  br i1 %99, label %100, label %135

100:                                              ; preds = %90
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RECORDOID, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %121, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %109, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %106
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %116, %100
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %123, align 8
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 7
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %126, align 8
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i32 @expanded_record_set_tuple(%struct.TYPE_34__* %124, %struct.TYPE_33__* %127, i32 1, i32 %133)
  br label %322

135:                                              ; preds = %116, %106, %90, %83, %78
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %139 = call %struct.TYPE_34__* @make_expanded_record_for_rec(%struct.TYPE_32__* %136, %struct.TYPE_31__* %137, i32* null, %struct.TYPE_34__* %138)
  store %struct.TYPE_34__* %139, %struct.TYPE_34__** %8, align 8
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ER_FLAG_FVALUE_VALID, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %176

146:                                              ; preds = %135
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @RECORDOID, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %160, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %152, %146
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %162 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %162, i32 0, i32 7
  %164 = load %struct.TYPE_33__*, %struct.TYPE_33__** %163, align 8
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 @expanded_record_set_tuple(%struct.TYPE_34__* %161, %struct.TYPE_33__* %164, i32 1, i32 %170)
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %175 = call i32 @assign_record_var(%struct.TYPE_32__* %172, %struct.TYPE_31__* %173, %struct.TYPE_34__* %174)
  br label %322

176:                                              ; preds = %152, %135
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %178 = call i64 @ExpandedRecordIsEmpty(%struct.TYPE_34__* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %182 = call i32 @deconstruct_expanded_record(%struct.TYPE_34__* %181)
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %186 = call i32 @assign_record_var(%struct.TYPE_32__* %183, %struct.TYPE_31__* %184, %struct.TYPE_34__* %185)
  br label %322

187:                                              ; preds = %176
  br label %188

188:                                              ; preds = %187, %23
  %189 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %190 = call i64 @ExpandedRecordIsEmpty(%struct.TYPE_34__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %195 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %196 = call i32 @expanded_record_get_tupdesc(%struct.TYPE_34__* %195)
  %197 = call i32 @exec_move_row(%struct.TYPE_32__* %193, %struct.TYPE_30__* %194, %struct.TYPE_33__* null, i32 %196)
  br label %322

198:                                              ; preds = %188
  %199 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %200 = call i32 @deconstruct_expanded_record(%struct.TYPE_34__* %199)
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %204 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %211 = call i32 @expanded_record_get_tupdesc(%struct.TYPE_34__* %210)
  %212 = call i32 @exec_move_row_from_fields(%struct.TYPE_32__* %201, %struct.TYPE_30__* %202, %struct.TYPE_34__* %203, i32 %206, i32 %209, i32 %211)
  br label %322

213:                                              ; preds = %3
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %215 = call i32 @get_eval_mcontext(%struct.TYPE_32__* %214)
  %216 = call i32 @MemoryContextSwitchTo(i32 %215)
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @DatumGetHeapTupleHeader(i32 %217)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %15, align 4
  %220 = call i32 @MemoryContextSwitchTo(i32 %219)
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @HeapTupleHeaderGetDatumLength(i32 %221)
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %11, i32 0, i32 3
  store i32 %222, i32* %223, align 4
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %11, i32 0, i32 2
  %225 = call i32 @ItemPointerSetInvalid(i32* %224)
  %226 = load i32, i32* @InvalidOid, align 4
  %227 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %11, i32 0, i32 1
  store i32 %226, i32* %227, align 4
  %228 = load i32, i32* %10, align 4
  %229 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %11, i32 0, i32 0
  store i32 %228, i32* %229, align 4
  %230 = load i32, i32* %10, align 4
  %231 = call i64 @HeapTupleHeaderGetTypeId(i32 %230)
  store i64 %231, i64* %12, align 8
  %232 = load i32, i32* %10, align 4
  %233 = call i64 @HeapTupleHeaderGetTypMod(i32 %232)
  store i64 %233, i64* %13, align 8
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @PLPGSQL_DTYPE_REC, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %312

239:                                              ; preds = %213
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %241 = bitcast %struct.TYPE_30__* %240 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %241, %struct.TYPE_31__** %16, align 8
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_34__*, %struct.TYPE_34__** %243, align 8
  %245 = icmp ne %struct.TYPE_34__* %244, null
  br i1 %245, label %246, label %280

246:                                              ; preds = %239
  %247 = load i64, i64* %12, align 8
  %248 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %247, %252
  br i1 %253, label %254, label %280

254:                                              ; preds = %246
  %255 = load i64, i64* %12, align 8
  %256 = load i64, i64* @RECORDOID, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %269, label %258

258:                                              ; preds = %254
  %259 = load i64, i64* %13, align 8
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_34__*, %struct.TYPE_34__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %259, %264
  br i1 %265, label %266, label %280

266:                                              ; preds = %258
  %267 = load i64, i64* %13, align 8
  %268 = icmp sge i64 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %266, %254
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %271, align 8
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  %277 = xor i1 %276, true
  %278 = zext i1 %277 to i32
  %279 = call i32 @expanded_record_set_tuple(%struct.TYPE_34__* %272, %struct.TYPE_33__* %11, i32 1, i32 %278)
  br label %322

280:                                              ; preds = %266, %258, %246, %239
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @RECORDOID, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %292, label %286

286:                                              ; preds = %280
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* %12, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %311

292:                                              ; preds = %286, %280
  %293 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %294 = call i32 @get_eval_mcontext(%struct.TYPE_32__* %293)
  store i32 %294, i32* %18, align 4
  %295 = load i64, i64* %12, align 8
  %296 = load i64, i64* %13, align 8
  %297 = load i32, i32* %18, align 4
  %298 = call %struct.TYPE_34__* @make_expanded_record_from_typeid(i64 %295, i64 %296, i32 %297)
  store %struct.TYPE_34__* %298, %struct.TYPE_34__** %17, align 8
  %299 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = call i32 @expanded_record_set_tuple(%struct.TYPE_34__* %299, %struct.TYPE_33__* %11, i32 1, i32 %305)
  %307 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %308 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %309 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %310 = call i32 @assign_record_var(%struct.TYPE_32__* %307, %struct.TYPE_31__* %308, %struct.TYPE_34__* %309)
  br label %322

311:                                              ; preds = %286
  br label %312

312:                                              ; preds = %311, %213
  %313 = load i64, i64* %12, align 8
  %314 = load i64, i64* %13, align 8
  %315 = call i32 @lookup_rowtype_tupdesc(i64 %313, i64 %314)
  store i32 %315, i32* %14, align 4
  %316 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %317 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %318 = load i32, i32* %14, align 4
  %319 = call i32 @exec_move_row(%struct.TYPE_32__* %316, %struct.TYPE_30__* %317, %struct.TYPE_33__* %11, i32 %318)
  %320 = load i32, i32* %14, align 4
  %321 = call i32 @ReleaseTupleDesc(i32 %320)
  br label %322

322:                                              ; preds = %47, %73, %121, %160, %180, %192, %269, %292, %312, %198
  ret void
}

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @DatumGetEOHP(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @revalidate_rectypeid(%struct.TYPE_31__*) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED_RW(i32) #1

declare dso_local i32 @ExpandedRecordIsDomain(%struct.TYPE_34__*) #1

declare dso_local i32 @assign_record_var(%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_34__*) #1

declare dso_local i32 @expanded_record_set_tuple(%struct.TYPE_34__*, %struct.TYPE_33__*, i32, i32) #1

declare dso_local %struct.TYPE_34__* @make_expanded_record_for_rec(%struct.TYPE_32__*, %struct.TYPE_31__*, i32*, %struct.TYPE_34__*) #1

declare dso_local i64 @ExpandedRecordIsEmpty(%struct.TYPE_34__*) #1

declare dso_local i32 @deconstruct_expanded_record(%struct.TYPE_34__*) #1

declare dso_local i32 @exec_move_row(%struct.TYPE_32__*, %struct.TYPE_30__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @expanded_record_get_tupdesc(%struct.TYPE_34__*) #1

declare dso_local i32 @exec_move_row_from_fields(%struct.TYPE_32__*, %struct.TYPE_30__*, %struct.TYPE_34__*, i32, i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @get_eval_mcontext(%struct.TYPE_32__*) #1

declare dso_local i32 @DatumGetHeapTupleHeader(i32) #1

declare dso_local i32 @HeapTupleHeaderGetDatumLength(i32) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i64 @HeapTupleHeaderGetTypeId(i32) #1

declare dso_local i64 @HeapTupleHeaderGetTypMod(i32) #1

declare dso_local %struct.TYPE_34__* @make_expanded_record_from_typeid(i64, i64, i32) #1

declare dso_local i32 @lookup_rowtype_tupdesc(i64, i64) #1

declare dso_local i32 @ReleaseTupleDesc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
