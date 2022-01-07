; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_constructAutomaticIndex.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_constructAutomaticIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32* }
%struct.TYPE_34__ = type { i64, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_27__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.SrcList_item = type { i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_33__ = type { i64, i64, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i8**, i32*, i8*, i32, %struct.TYPE_35__*, i32* }
%struct.TYPE_28__ = type { i8* }

@BMS = common dso_local global i32 0, align 4
@WHERE_COLUMN_EQ = common dso_local global i32 0, align 4
@WHERE_IDX_ONLY = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"auto-index\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@OP_OpenAutoindex = common dso_local global i32 0, align 4
@P4_KEYINFO_HANDOFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"for %s\00", align 1
@OP_Rewind = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OPFLAG_USESEEKRESULT = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@SQLITE_STMTSTATUS_AUTOINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_36__*, %struct.TYPE_34__*, %struct.SrcList_item*, i32, %struct.TYPE_33__*)* @constructAutomaticIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constructAutomaticIndex(%struct.TYPE_36__* %0, %struct.TYPE_34__* %1, %struct.SrcList_item* %2, i32 %3, %struct.TYPE_33__* %4) #0 {
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.SrcList_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_37__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_35__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_28__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %7, align 8
  store %struct.SrcList_item* %2, %struct.SrcList_item** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_33__* %4, %struct.TYPE_33__** %10, align 8
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %41 = call i32 @sqlite3CodeOnce(%struct.TYPE_36__* %40)
  store i32 %41, i32* %17, align 4
  store i32 0, i32* %11, align 4
  %42 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %43 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %42, i32 0, i32 1
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %43, align 8
  store %struct.TYPE_35__* %44, %struct.TYPE_35__** %18, align 8
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %46, align 8
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i64 %50
  store %struct.TYPE_32__* %51, %struct.TYPE_32__** %13, align 8
  store i32 0, i32* %26, align 4
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %53, align 8
  store %struct.TYPE_32__* %54, %struct.TYPE_32__** %12, align 8
  br label %55

55:                                               ; preds = %105, %5
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %58 = icmp ult %struct.TYPE_32__* %56, %57
  br i1 %58, label %59, label %108

59:                                               ; preds = %55
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %61 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @termCanDriveIndex(%struct.TYPE_32__* %60, %struct.SrcList_item* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %104

65:                                               ; preds = %59
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %28, align 4
  %70 = load i32, i32* %28, align 4
  %71 = load i32, i32* @BMS, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @BMS, align 4
  %75 = sub nsw i32 %74, 1
  %76 = shl i32 1, %75
  br label %80

77:                                               ; preds = %65
  %78 = load i32, i32* %28, align 4
  %79 = shl i32 1, %78
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi i32 [ %76, %73 ], [ %79, %77 ]
  store i32 %81, i32* %29, align 4
  %82 = load i32, i32* %28, align 4
  %83 = load i32, i32* @BMS, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @testcase(i32 %85)
  %87 = load i32, i32* %28, align 4
  %88 = load i32, i32* @BMS, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @testcase(i32 %91)
  %93 = load i32, i32* %26, align 4
  %94 = load i32, i32* %29, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %80
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %29, align 4
  %101 = load i32, i32* %26, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %26, align 4
  br label %103

103:                                              ; preds = %97, %80
  br label %104

104:                                              ; preds = %103, %59
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 1
  store %struct.TYPE_32__* %107, %struct.TYPE_32__** %12, align 8
  br label %55

108:                                              ; preds = %55
  %109 = load i32, i32* %11, align 4
  %110 = icmp sgt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %118 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %26, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* @BMS, align 4
  %123 = sub nsw i32 %122, 1
  %124 = shl i32 1, %123
  %125 = or i32 %121, %124
  %126 = and i32 %119, %125
  store i32 %126, i32* %27, align 4
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @BMS, align 4
  %131 = sub nsw i32 %130, 1
  %132 = icmp sge i32 %129, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %108
  %134 = load i32, i32* @BMS, align 4
  %135 = sub nsw i32 %134, 1
  br label %140

136:                                              ; preds = %108
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  br label %140

140:                                              ; preds = %136, %133
  %141 = phi i32 [ %135, %133 ], [ %139, %136 ]
  store i32 %141, i32* %24, align 4
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BMS, align 4
  %146 = sub nsw i32 %145, 1
  %147 = icmp eq i32 %144, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @testcase(i32 %148)
  %150 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @BMS, align 4
  %154 = sub nsw i32 %153, 2
  %155 = icmp eq i32 %152, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @testcase(i32 %156)
  store i32 0, i32* %23, align 4
  br label %158

158:                                              ; preds = %172, %140
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %24, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load i32, i32* %27, align 4
  %164 = load i32, i32* %23, align 4
  %165 = shl i32 1, %164
  %166 = and i32 %163, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %168, %162
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %23, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %23, align 4
  br label %158

175:                                              ; preds = %158
  %176 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %177 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @BMS, align 4
  %180 = sub nsw i32 %179, 1
  %181 = shl i32 1, %180
  %182 = and i32 %178, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %175
  %185 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @BMS, align 4
  %189 = sub nsw i32 %187, %188
  %190 = add nsw i32 %189, 1
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %184, %175
  %194 = load i32, i32* @WHERE_COLUMN_EQ, align 4
  %195 = load i32, i32* @WHERE_IDX_ONLY, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @WO_EQ, align 4
  %198 = or i32 %196, %197
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %198
  store i32 %203, i32* %201, align 4
  store i32 48, i32* %14, align 4
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = mul i64 %205, 4
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = add i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 %212, 8
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = add i64 %215, %213
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %14, align 4
  %221 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = call %struct.TYPE_37__* @sqlite3DbMallocZero(i32 %223, i32 %224)
  store %struct.TYPE_37__* %225, %struct.TYPE_37__** %15, align 8
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %227 = icmp eq %struct.TYPE_37__* %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %193
  br label %502

229:                                              ; preds = %193
  %230 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 0
  store %struct.TYPE_37__* %230, %struct.TYPE_37__** %234, align 8
  %235 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %235, i64 1
  %237 = bitcast %struct.TYPE_37__* %236 to i8**
  %238 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %238, i32 0, i32 0
  store i8** %237, i8*** %239, align 8
  %240 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %240, i32 0, i32 0
  %242 = load i8**, i8*** %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %242, i64 %244
  %246 = bitcast i8** %245 to i32*
  %247 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %247, i32 0, i32 1
  store i32* %246, i32** %248, align 8
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %255, i32 0, i32 5
  store i32* %254, i32** %256, align 8
  %257 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %257, i32 0, i32 2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %258, align 8
  %259 = load i32, i32* %11, align 4
  %260 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %260, i32 0, i32 3
  store i32 %259, i32* %261, align 8
  %262 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %263 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %263, i32 0, i32 4
  store %struct.TYPE_35__* %262, %struct.TYPE_35__** %264, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %26, align 4
  %265 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_32__*, %struct.TYPE_32__** %266, align 8
  store %struct.TYPE_32__* %267, %struct.TYPE_32__** %12, align 8
  br label %268

268:                                              ; preds = %344, %229
  %269 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %271 = icmp ult %struct.TYPE_32__* %269, %270
  br i1 %271, label %272, label %347

272:                                              ; preds = %268
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %274 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %275 = load i32, i32* %9, align 4
  %276 = call i64 @termCanDriveIndex(%struct.TYPE_32__* %273, %struct.SrcList_item* %274, i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %343

278:                                              ; preds = %272
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %30, align 4
  %283 = load i32, i32* %30, align 4
  %284 = load i32, i32* @BMS, align 4
  %285 = icmp sge i32 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %278
  %287 = load i32, i32* @BMS, align 4
  %288 = sub nsw i32 %287, 1
  %289 = shl i32 1, %288
  br label %293

290:                                              ; preds = %278
  %291 = load i32, i32* %30, align 4
  %292 = shl i32 1, %291
  br label %293

293:                                              ; preds = %290, %286
  %294 = phi i32 [ %289, %286 ], [ %292, %290 ]
  store i32 %294, i32* %31, align 4
  %295 = load i32, i32* %26, align 4
  %296 = load i32, i32* %31, align 4
  %297 = and i32 %295, %296
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %342

299:                                              ; preds = %293
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %301, align 8
  store %struct.TYPE_27__* %302, %struct.TYPE_27__** %32, align 8
  %303 = load i32, i32* %31, align 4
  %304 = load i32, i32* %26, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %26, align 4
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %311 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %22, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %309, i32* %315, align 4
  %316 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  %318 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call %struct.TYPE_28__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_36__* %316, i32 %319, i32 %322)
  store %struct.TYPE_28__* %323, %struct.TYPE_28__** %25, align 8
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %325 = call i64 @ALWAYS(%struct.TYPE_28__* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %299
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  br label %332

331:                                              ; preds = %299
  br label %332

332:                                              ; preds = %331, %327
  %333 = phi i8* [ %330, %327 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %331 ]
  %334 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %335 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %334, i32 0, i32 0
  %336 = load i8**, i8*** %335, align 8
  %337 = load i32, i32* %22, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %336, i64 %338
  store i8* %333, i8** %339, align 8
  %340 = load i32, i32* %22, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %22, align 4
  br label %342

342:                                              ; preds = %332, %293
  br label %343

343:                                              ; preds = %342, %272
  br label %344

344:                                              ; preds = %343
  %345 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 1
  store %struct.TYPE_32__* %346, %struct.TYPE_32__** %12, align 8
  br label %268

347:                                              ; preds = %268
  %348 = load i32, i32* %22, align 4
  %349 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = icmp eq i32 %348, %352
  %354 = zext i1 %353 to i32
  %355 = call i32 @assert(i32 %354)
  store i32 0, i32* %23, align 4
  br label %356

356:                                              ; preds = %383, %347
  %357 = load i32, i32* %23, align 4
  %358 = load i32, i32* %24, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %386

360:                                              ; preds = %356
  %361 = load i32, i32* %27, align 4
  %362 = load i32, i32* %23, align 4
  %363 = shl i32 1, %362
  %364 = and i32 %361, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %382

366:                                              ; preds = %360
  %367 = load i32, i32* %23, align 4
  %368 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %369 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %368, i32 0, i32 1
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %22, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  store i32 %367, i32* %373, align 4
  %374 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %375 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %374, i32 0, i32 0
  %376 = load i8**, i8*** %375, align 8
  %377 = load i32, i32* %22, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8*, i8** %376, i64 %378
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %379, align 8
  %380 = load i32, i32* %22, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %22, align 4
  br label %382

382:                                              ; preds = %366, %360
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %23, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %23, align 4
  br label %356

386:                                              ; preds = %356
  %387 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %388 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @BMS, align 4
  %391 = sub nsw i32 %390, 1
  %392 = shl i32 1, %391
  %393 = and i32 %389, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %424

395:                                              ; preds = %386
  %396 = load i32, i32* @BMS, align 4
  %397 = sub nsw i32 %396, 1
  store i32 %397, i32* %23, align 4
  br label %398

398:                                              ; preds = %420, %395
  %399 = load i32, i32* %23, align 4
  %400 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %401 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = icmp slt i32 %399, %402
  br i1 %403, label %404, label %423

404:                                              ; preds = %398
  %405 = load i32, i32* %23, align 4
  %406 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %407 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %406, i32 0, i32 1
  %408 = load i32*, i32** %407, align 8
  %409 = load i32, i32* %22, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  store i32 %405, i32* %411, align 4
  %412 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %413 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %412, i32 0, i32 0
  %414 = load i8**, i8*** %413, align 8
  %415 = load i32, i32* %22, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8*, i8** %414, i64 %416
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %417, align 8
  %418 = load i32, i32* %22, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %22, align 4
  br label %420

420:                                              ; preds = %404
  %421 = load i32, i32* %23, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %23, align 4
  br label %398

423:                                              ; preds = %398
  br label %424

424:                                              ; preds = %423, %386
  %425 = load i32, i32* %22, align 4
  %426 = load i32, i32* %11, align 4
  %427 = icmp eq i32 %425, %426
  %428 = zext i1 %427 to i32
  %429 = call i32 @assert(i32 %428)
  %430 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %431 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %432 = call i32* @sqlite3IndexKeyinfo(%struct.TYPE_36__* %430, %struct.TYPE_37__* %431)
  store i32* %432, i32** %19, align 8
  %433 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %434 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = icmp sge i64 %435, 0
  %437 = zext i1 %436 to i32
  %438 = call i32 @assert(i32 %437)
  %439 = load i32*, i32** %16, align 8
  %440 = load i32, i32* @OP_OpenAutoindex, align 4
  %441 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = load i32, i32* %11, align 4
  %445 = add nsw i32 %444, 1
  %446 = load i32*, i32** %19, align 8
  %447 = bitcast i32* %446 to i8*
  %448 = load i32, i32* @P4_KEYINFO_HANDOFF, align 4
  %449 = call i32 @sqlite3VdbeAddOp4(i32* %439, i32 %440, i64 %443, i32 %445, i32 0, i8* %447, i32 %448)
  %450 = load i32*, i32** %16, align 8
  %451 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %452 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = sext i32 %453 to i64
  %455 = inttoptr i64 %454 to i32*
  %456 = call i32 @VdbeComment(i32* %455)
  %457 = load i32*, i32** %16, align 8
  %458 = load i32, i32* @OP_Rewind, align 4
  %459 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %460 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %459, i32 0, i32 1
  %461 = load i64, i64* %460, align 8
  %462 = call i32 @sqlite3VdbeAddOp1(i32* %457, i32 %458, i64 %461)
  store i32 %462, i32* %20, align 4
  %463 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %464 = call i32 @sqlite3GetTempReg(%struct.TYPE_36__* %463)
  store i32 %464, i32* %21, align 4
  %465 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %466 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %467 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %468 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = load i32, i32* %21, align 4
  %471 = call i32 @sqlite3GenerateIndexKey(%struct.TYPE_36__* %465, %struct.TYPE_37__* %466, i64 %469, i32 %470, i32 1)
  %472 = load i32*, i32** %16, align 8
  %473 = load i32, i32* @OP_IdxInsert, align 4
  %474 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %475 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = load i32, i32* %21, align 4
  %478 = call i32 @sqlite3VdbeAddOp2(i32* %472, i32 %473, i64 %476, i32 %477)
  %479 = load i32*, i32** %16, align 8
  %480 = load i32, i32* @OPFLAG_USESEEKRESULT, align 4
  %481 = call i32 @sqlite3VdbeChangeP5(i32* %479, i32 %480)
  %482 = load i32*, i32** %16, align 8
  %483 = load i32, i32* @OP_Next, align 4
  %484 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %485 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %484, i32 0, i32 1
  %486 = load i64, i64* %485, align 8
  %487 = load i32, i32* %20, align 4
  %488 = add nsw i32 %487, 1
  %489 = call i32 @sqlite3VdbeAddOp2(i32* %482, i32 %483, i64 %486, i32 %488)
  %490 = load i32*, i32** %16, align 8
  %491 = load i32, i32* @SQLITE_STMTSTATUS_AUTOINDEX, align 4
  %492 = call i32 @sqlite3VdbeChangeP5(i32* %490, i32 %491)
  %493 = load i32*, i32** %16, align 8
  %494 = load i32, i32* %20, align 4
  %495 = call i32 @sqlite3VdbeJumpHere(i32* %493, i32 %494)
  %496 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %497 = load i32, i32* %21, align 4
  %498 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_36__* %496, i32 %497)
  %499 = load i32*, i32** %16, align 8
  %500 = load i32, i32* %17, align 4
  %501 = call i32 @sqlite3VdbeJumpHere(i32* %499, i32 %500)
  br label %502

502:                                              ; preds = %424, %228
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3CodeOnce(%struct.TYPE_36__*) #1

declare dso_local i64 @termCanDriveIndex(%struct.TYPE_32__*, %struct.SrcList_item*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_37__* @sqlite3DbMallocZero(i32, i32) #1

declare dso_local %struct.TYPE_28__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_28__*) #1

declare dso_local i32* @sqlite3IndexKeyinfo(%struct.TYPE_36__*, %struct.TYPE_37__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i64) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_36__*) #1

declare dso_local i32 @sqlite3GenerateIndexKey(%struct.TYPE_36__*, %struct.TYPE_37__*, i64, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i64, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_36__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
