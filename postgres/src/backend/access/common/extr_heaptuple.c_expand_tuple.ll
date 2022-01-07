; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_expand_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_expand_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_25__ = type { i32, i32 }

@HeapTupleHeaderData = common dso_local global i32 0, align 4
@t_bits = common dso_local global i32 0, align 4
@HEAPTUPLESIZE = common dso_local global i32 0, align 4
@SizeofMinimalTupleHeader = common dso_local global i32 0, align 4
@MINIMAL_TUPLE_OFFSET = common dso_local global i32 0, align 4
@MinimalTupleData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__**, %struct.TYPE_23__**, %struct.TYPE_24__*, %struct.TYPE_22__*)* @expand_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_tuple(%struct.TYPE_24__** %0, %struct.TYPE_23__** %1, %struct.TYPE_24__* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca %struct.TYPE_24__**, align 8
  %6 = alloca %struct.TYPE_23__**, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_25__*, align 8
  %28 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__** %0, %struct.TYPE_24__*** %5, align 8
  store %struct.TYPE_23__** %1, %struct.TYPE_23__*** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %9, align 8
  store i32 0, i32* %11, align 4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %30 = call i32 @HeapTupleHasNulls(%struct.TYPE_24__* %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %14, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %35 = call i32 @HeapTupleHeaderGetNatts(%struct.TYPE_23__* %34)
  store i32 %35, i32* %15, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %16, align 4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %19, align 4
  store i8* null, i8** %23, align 8
  store i32 0, i32* %24, align 4
  %46 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %47 = icmp ne %struct.TYPE_24__** %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %4
  %49 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  %50 = icmp ne %struct.TYPE_23__** %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48, %4
  %52 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %53 = icmp ne %struct.TYPE_24__** %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  %56 = icmp ne %struct.TYPE_23__** %55, null
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br label %59

59:                                               ; preds = %57, %48
  %60 = phi i1 [ true, %48 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @Assert(i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @BITMAPLEN(i32 %71)
  br label %74

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 0, %73 ]
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %19, align 4
  store i32 %76, i32* %20, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = icmp ne %struct.TYPE_21__* %79, null
  br i1 %80, label %81, label %162

81:                                               ; preds = %74
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %85, align 8
  %87 = icmp ne %struct.TYPE_26__* %86, null
  br i1 %87, label %88, label %162

88:                                               ; preds = %81
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  store %struct.TYPE_26__* %93, %struct.TYPE_26__** %9, align 8
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %110, %88
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %113

108:                                              ; preds = %99
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %95

113:                                              ; preds = %107, %95
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %158, %113
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %161

119:                                              ; preds = %115
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %156

127:                                              ; preds = %119
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call %struct.TYPE_25__* @TupleDescAttr(%struct.TYPE_22__* %128, i32 %129)
  store %struct.TYPE_25__* %130, %struct.TYPE_25__** %27, align 8
  %131 = load i32, i32* %20, align 4
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @att_align_datum(i32 %131, i32 %134, i32 %137, i32 %143)
  store i32 %144, i32* %20, align 4
  %145 = load i32, i32* %20, align 4
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @att_addlength_pointer(i32 %145, i32 %148, i32 %154)
  store i32 %155, i32* %20, align 4
  br label %157

156:                                              ; preds = %119
  store i32 1, i32* %12, align 4
  br label %157

157:                                              ; preds = %156, %127
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %115

161:                                              ; preds = %115
  br label %163

162:                                              ; preds = %81, %74
  store i32 1, i32* %12, align 4
  br label %163

163:                                              ; preds = %162, %161
  store i32 0, i32* %21, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @BITMAPLEN(i32 %167)
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %21, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %21, align 4
  br label %173

172:                                              ; preds = %163
  store i32 0, i32* %18, align 4
  br label %173

173:                                              ; preds = %172, %166
  %174 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %175 = icmp ne %struct.TYPE_24__** %174, null
  br i1 %175, label %176, label %270

176:                                              ; preds = %173
  %177 = load i32, i32* @HeapTupleHeaderData, align 4
  %178 = load i32, i32* @t_bits, align 4
  %179 = call i32 @offsetof(i32 %177, i32 %178)
  %180 = load i32, i32* %21, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %21, align 4
  %182 = load i32, i32* %21, align 4
  %183 = call i32 @MAXALIGN(i32 %182)
  store i32 %183, i32* %21, align 4
  store i32 %183, i32* %22, align 4
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %21, align 4
  %187 = load i32, i32* @HEAPTUPLESIZE, align 4
  %188 = load i32, i32* %21, align 4
  %189 = add nsw i32 %187, %188
  %190 = call i64 @palloc0(i32 %189)
  %191 = inttoptr i64 %190 to %struct.TYPE_24__*
  %192 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  store %struct.TYPE_24__* %191, %struct.TYPE_24__** %192, align 8
  %193 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  %195 = bitcast %struct.TYPE_24__* %194 to i8*
  %196 = load i32, i32* @HEAPTUPLESIZE, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = bitcast i8* %198 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %199, %struct.TYPE_23__** %13, align 8
  %200 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  store %struct.TYPE_23__* %199, %struct.TYPE_23__** %202, align 8
  %203 = load i32, i32* %21, align 4
  %204 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 8
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 3
  store i32 %209, i32* %212, align 4
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 2
  store i32 %215, i32* %218, align 8
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %22, align 4
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 4
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %228 = load i32, i32* %16, align 4
  %229 = call i32 @HeapTupleHeaderSetNatts(%struct.TYPE_23__* %227, i32 %228)
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %231 = load i32, i32* %21, align 4
  %232 = call i32 @HeapTupleHeaderSetDatumLength(%struct.TYPE_23__* %230, i32 %231)
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @HeapTupleHeaderSetTypeId(%struct.TYPE_23__* %233, i32 %236)
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @HeapTupleHeaderSetTypMod(%struct.TYPE_23__* %238, i32 %241)
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 3
  %245 = call i32 @ItemPointerSetInvalid(i32* %244)
  %246 = load i32, i32* %18, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %176
  %249 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %251, align 8
  %253 = bitcast %struct.TYPE_23__* %252 to i8*
  %254 = load i32, i32* @HeapTupleHeaderData, align 4
  %255 = load i32, i32* @t_bits, align 4
  %256 = call i32 @offsetof(i32 %254, i32 %255)
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %253, i64 %257
  store i8* %258, i8** %23, align 8
  br label %259

259:                                              ; preds = %248, %176
  %260 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %5, align 8
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %262, align 8
  %264 = bitcast %struct.TYPE_23__* %263 to i8*
  %265 = load i32, i32* %22, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  store i8* %267, i8** %25, align 8
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 2
  store i32* %269, i32** %26, align 8
  br label %324

270:                                              ; preds = %173
  %271 = load i32, i32* @SizeofMinimalTupleHeader, align 4
  %272 = load i32, i32* %21, align 4
  %273 = add nsw i32 %272, %271
  store i32 %273, i32* %21, align 4
  %274 = load i32, i32* %21, align 4
  %275 = call i32 @MAXALIGN(i32 %274)
  store i32 %275, i32* %21, align 4
  store i32 %275, i32* %22, align 4
  %276 = load i32, i32* %20, align 4
  %277 = load i32, i32* %21, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %21, align 4
  %279 = load i32, i32* %21, align 4
  %280 = call i64 @palloc0(i32 %279)
  %281 = inttoptr i64 %280 to %struct.TYPE_23__*
  %282 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  store %struct.TYPE_23__* %281, %struct.TYPE_23__** %282, align 8
  %283 = load i32, i32* %21, align 4
  %284 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 1
  store i32 %283, i32* %286, align 4
  %287 = load i32, i32* %22, align 4
  %288 = load i32, i32* @MINIMAL_TUPLE_OFFSET, align 4
  %289 = add nsw i32 %287, %288
  %290 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 0
  store i32 %289, i32* %292, align 4
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 2
  store i32 %295, i32* %298, align 4
  %299 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %299, align 8
  %301 = load i32, i32* %16, align 4
  %302 = call i32 @HeapTupleHeaderSetNatts(%struct.TYPE_23__* %300, i32 %301)
  %303 = load i32, i32* %18, align 4
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %270
  %306 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %306, align 8
  %308 = bitcast %struct.TYPE_23__* %307 to i8*
  %309 = load i32, i32* @MinimalTupleData, align 4
  %310 = load i32, i32* @t_bits, align 4
  %311 = call i32 @offsetof(i32 %309, i32 %310)
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %308, i64 %312
  store i8* %313, i8** %23, align 8
  br label %314

314:                                              ; preds = %305, %270
  %315 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %315, align 8
  %317 = bitcast %struct.TYPE_23__* %316 to i8*
  %318 = load i32, i32* %22, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  store i8* %320, i8** %25, align 8
  %321 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %6, align 8
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 2
  store i32* %323, i32** %26, align 8
  br label %324

324:                                              ; preds = %314, %259
  %325 = load i32, i32* %18, align 4
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %374

327:                                              ; preds = %324
  %328 = load i32, i32* %17, align 4
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %346

330:                                              ; preds = %327
  %331 = load i8*, i8** %23, align 8
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %333 = bitcast %struct.TYPE_23__* %332 to i8*
  %334 = load i32, i32* @HeapTupleHeaderData, align 4
  %335 = load i32, i32* @t_bits, align 4
  %336 = call i32 @offsetof(i32 %334, i32 %335)
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %333, i64 %337
  %339 = load i32, i32* %17, align 4
  %340 = call i32 @memcpy(i8* %331, i8* %338, i32 %339)
  %341 = load i32, i32* %17, align 4
  %342 = sub nsw i32 %341, 1
  %343 = load i8*, i8** %23, align 8
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i8, i8* %343, i64 %344
  store i8* %345, i8** %23, align 8
  br label %369

346:                                              ; preds = %327
  %347 = load i32, i32* %15, align 4
  %348 = call i32 @BITMAPLEN(i32 %347)
  store i32 %348, i32* %17, align 4
  %349 = load i8*, i8** %23, align 8
  %350 = load i32, i32* %17, align 4
  %351 = call i32 @memset(i8* %349, i32 255, i32 %350)
  %352 = load i32, i32* %17, align 4
  %353 = sub nsw i32 %352, 1
  %354 = load i8*, i8** %23, align 8
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds i8, i8* %354, i64 %355
  store i8* %356, i8** %23, align 8
  %357 = load i32, i32* %15, align 4
  %358 = and i32 %357, 7
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %368

360:                                              ; preds = %346
  %361 = load i32, i32* %15, align 4
  %362 = and i32 %361, 7
  %363 = shl i32 255, %362
  store i32 %363, i32* %24, align 4
  %364 = load i32, i32* %24, align 4
  %365 = xor i32 %364, -1
  %366 = trunc i32 %365 to i8
  %367 = load i8*, i8** %23, align 8
  store i8 %366, i8* %367, align 1
  br label %368

368:                                              ; preds = %360, %346
  br label %369

369:                                              ; preds = %368, %330
  %370 = load i32, i32* %15, align 4
  %371 = sub nsw i32 %370, 1
  %372 = and i32 %371, 7
  %373 = shl i32 1, %372
  store i32 %373, i32* %24, align 4
  br label %374

374:                                              ; preds = %369, %324
  %375 = load i8*, i8** %25, align 8
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %376, i32 0, i32 1
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %377, align 8
  %379 = bitcast %struct.TYPE_23__* %378 to i8*
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %379, i64 %383
  %385 = load i32, i32* %19, align 4
  %386 = call i32 @memcpy(i8* %375, i8* %384, i32 %385)
  %387 = load i32, i32* %19, align 4
  %388 = load i8*, i8** %25, align 8
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i8, i8* %388, i64 %389
  store i8* %390, i8** %25, align 8
  %391 = load i32, i32* %15, align 4
  store i32 %391, i32* %10, align 4
  br label %392

392:                                              ; preds = %431, %374
  %393 = load i32, i32* %10, align 4
  %394 = load i32, i32* %16, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %434

396:                                              ; preds = %392
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %398 = load i32, i32* %10, align 4
  %399 = call %struct.TYPE_25__* @TupleDescAttr(%struct.TYPE_22__* %397, i32 %398)
  store %struct.TYPE_25__* %399, %struct.TYPE_25__** %28, align 8
  %400 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %401 = icmp ne %struct.TYPE_26__* %400, null
  br i1 %401, label %402, label %426

402:                                              ; preds = %396
  %403 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %404 = load i32, i32* %10, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %426

410:                                              ; preds = %402
  %411 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %412 = load i8*, i8** %23, align 8
  %413 = icmp ne i8* %412, null
  br i1 %413, label %414, label %415

414:                                              ; preds = %410
  br label %416

415:                                              ; preds = %410
  br label %416

416:                                              ; preds = %415, %414
  %417 = phi i8** [ %23, %414 ], [ null, %415 ]
  %418 = load i32*, i32** %26, align 8
  %419 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %420 = load i32, i32* %10, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @fill_val(%struct.TYPE_25__* %411, i8** %417, i32* %24, i8** %25, i32* %418, i32 %424, i32 0)
  br label %430

426:                                              ; preds = %402, %396
  %427 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %428 = load i32*, i32** %26, align 8
  %429 = call i32 @fill_val(%struct.TYPE_25__* %427, i8** %23, i32* %24, i8** %25, i32* %428, i32 0, i32 1)
  br label %430

430:                                              ; preds = %426, %416
  br label %431

431:                                              ; preds = %430
  %432 = load i32, i32* %10, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %10, align 4
  br label %392

434:                                              ; preds = %392
  ret void
}

declare dso_local i32 @HeapTupleHasNulls(%struct.TYPE_24__*) #1

declare dso_local i32 @HeapTupleHeaderGetNatts(%struct.TYPE_23__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BITMAPLEN(i32) #1

declare dso_local %struct.TYPE_25__* @TupleDescAttr(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @att_align_datum(i32, i32, i32, i32) #1

declare dso_local i32 @att_addlength_pointer(i32, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @HeapTupleHeaderSetNatts(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetDatumLength(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetTypeId(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @HeapTupleHeaderSetTypMod(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_val(%struct.TYPE_25__*, i8**, i32*, i8**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
