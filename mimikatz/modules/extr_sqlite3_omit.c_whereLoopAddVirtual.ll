; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_whereLoopAddVirtual.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_whereLoopAddVirtual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_32__*, %struct.TYPE_22__*, %struct.TYPE_33__* }
%struct.TYPE_32__ = type { i64, i64, %struct.TYPE_27__, i64, i32, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"BEGIN %s.addVirtual()\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"  VirtualOne: all usable\0A\00", align 1
@ALLBITS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"  VirtualOne: all usable w/o IN\0A\00", align 1
@WO_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"  VirtualOne: mPrev=%04llx mNext=%04llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"  VirtualOne: all disabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"  VirtualOne: all disabled and w/o IN\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"END %s.addVirtual(), rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, i64, i64)* @whereLoopAddVirtual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereLoopAddVirtual(%struct.TYPE_31__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.SrcList_item*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %27, %28
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %34, align 8
  store %struct.TYPE_33__* %35, %struct.TYPE_33__** %9, align 8
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  store %struct.TYPE_23__* %38, %struct.TYPE_23__** %10, align 8
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %11, align 8
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %43, align 8
  store %struct.TYPE_32__* %44, %struct.TYPE_32__** %16, align 8
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load %struct.SrcList_item*, %struct.SrcList_item** %48, align 8
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %49, i64 %52
  store %struct.SrcList_item* %53, %struct.SrcList_item** %12, align 8
  %54 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %55 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %54, i32 0, i32 0
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %55, align 8
  %57 = call i32 @IsVirtual(%struct.TYPE_25__* %56)
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.TYPE_30__* @allocateIndexInfo(%struct.TYPE_23__* %59, %struct.TYPE_22__* %60, i64 %61, %struct.SrcList_item* %62, i32 %65, i32* %18)
  store %struct.TYPE_30__* %66, %struct.TYPE_30__** %13, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %68 = icmp eq %struct.TYPE_30__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %3
  %70 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %70, i32* %4, align 4
  br label %303

71:                                               ; preds = %3
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %14, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @whereLoopResize(i32 %88, %struct.TYPE_32__* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %71
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %98 = call i32 @sqlite3DbFree(i32 %96, %struct.TYPE_30__* %97)
  %99 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %99, i32* %4, align 4
  br label %303

100:                                              ; preds = %71
  %101 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %102 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %101, i32 0, i32 0
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @WHERETRACE(i32 2048, i8* %107)
  %109 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @ALLBITS, align 8
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %114 = load i32, i32* %18, align 4
  %115 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_31__* %110, i64 %111, i64 %112, i32 0, %struct.TYPE_30__* %113, i32 %114, i32* %15)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @SQLITE_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %277

119:                                              ; preds = %100
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = xor i64 %123, -1
  %125 = and i64 %122, %124
  store i64 %125, i64* %17, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %277

127:                                              ; preds = %119
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %127
  %131 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @ALLBITS, align 8
  %135 = load i32, i32* @WO_IN, align 4
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_31__* %132, i64 %133, i64 %134, i32 %135, %struct.TYPE_30__* %136, i32 %137, i32* %15)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %6, align 8
  %147 = xor i64 %146, -1
  %148 = and i64 %145, %147
  store i64 %148, i64* %22, align 8
  %149 = load i64, i64* %22, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %130
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %152

152:                                              ; preds = %151, %130
  br label %153

153:                                              ; preds = %152, %127
  br label %154

154:                                              ; preds = %240, %213, %153
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @SQLITE_OK, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %241

158:                                              ; preds = %154
  %159 = load i64, i64* @ALLBITS, align 8
  store i64 %159, i64* %24, align 8
  %160 = load i64, i64* %24, align 8
  %161 = icmp sgt i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  store i32 0, i32* %23, align 4
  br label %164

164:                                              ; preds = %196, %158
  %165 = load i32, i32* %23, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %199

168:                                              ; preds = %164
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %170, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %173, align 8
  %175 = load i32, i32* %23, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %6, align 8
  %184 = xor i64 %183, -1
  %185 = and i64 %182, %184
  store i64 %185, i64* %25, align 8
  %186 = load i64, i64* %25, align 8
  %187 = load i64, i64* %21, align 8
  %188 = icmp sgt i64 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %168
  %190 = load i64, i64* %25, align 8
  %191 = load i64, i64* %24, align 8
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load i64, i64* %25, align 8
  store i64 %194, i64* %24, align 8
  br label %195

195:                                              ; preds = %193, %189, %168
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %23, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %23, align 4
  br label %164

199:                                              ; preds = %164
  %200 = load i64, i64* %24, align 8
  store i64 %200, i64* %21, align 8
  %201 = load i64, i64* %24, align 8
  %202 = load i64, i64* @ALLBITS, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %241

205:                                              ; preds = %199
  %206 = load i64, i64* %24, align 8
  %207 = load i64, i64* %17, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = load i64, i64* %24, align 8
  %211 = load i64, i64* %22, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %209, %205
  br label %154

214:                                              ; preds = %209
  %215 = load i64, i64* %21, align 8
  %216 = trunc i64 %215 to i32
  %217 = load i64, i64* %24, align 8
  %218 = trunc i64 %217 to i32
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @WHERETRACE(i32 64, i8* %220)
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %223 = load i64, i64* %6, align 8
  %224 = load i64, i64* %24, align 8
  %225 = load i64, i64* %6, align 8
  %226 = or i64 %224, %225
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %228 = load i32, i32* %18, align 4
  %229 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_31__* %222, i64 %223, i64 %226, i32 0, %struct.TYPE_30__* %227, i32 %228, i32* %15)
  store i32 %229, i32* %8, align 4
  %230 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %6, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %214
  store i32 1, i32* %19, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 1, i32* %20, align 4
  br label %239

239:                                              ; preds = %238, %235
  br label %240

240:                                              ; preds = %239, %214
  br label %154

241:                                              ; preds = %204, %154
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* @SQLITE_OK, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %260

245:                                              ; preds = %241
  %246 = load i32, i32* %19, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %245
  %249 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %251 = load i64, i64* %6, align 8
  %252 = load i64, i64* %6, align 8
  %253 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %254 = load i32, i32* %18, align 4
  %255 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_31__* %250, i64 %251, i64 %252, i32 0, %struct.TYPE_30__* %253, i32 %254, i32* %15)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %15, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %248
  store i32 1, i32* %20, align 4
  br label %259

259:                                              ; preds = %258, %248
  br label %260

260:                                              ; preds = %259, %245, %241
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* @SQLITE_OK, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %276

264:                                              ; preds = %260
  %265 = load i32, i32* %20, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %264
  %268 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %270 = load i64, i64* %6, align 8
  %271 = load i64, i64* %6, align 8
  %272 = load i32, i32* @WO_IN, align 4
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %274 = load i32, i32* %18, align 4
  %275 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_31__* %269, i64 %270, i64 %271, i32 %272, %struct.TYPE_30__* %273, i32 %274, i32* %15)
  store i32 %275, i32* %8, align 4
  br label %276

276:                                              ; preds = %267, %264, %260
  br label %277

277:                                              ; preds = %276, %119, %100
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @sqlite3_free(i32 %285)
  br label %287

287:                                              ; preds = %282, %277
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %292 = call i32 @sqlite3DbFreeNN(i32 %290, %struct.TYPE_30__* %291)
  %293 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %294 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %293, i32 0, i32 0
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = inttoptr i64 %299 to i8*
  %301 = call i32 @WHERETRACE(i32 2048, i8* %300)
  %302 = load i32, i32* %8, align 4
  store i32 %302, i32* %4, align 4
  br label %303

303:                                              ; preds = %287, %93, %69
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsVirtual(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_30__* @allocateIndexInfo(%struct.TYPE_23__*, %struct.TYPE_22__*, i64, %struct.SrcList_item*, i32, i32*) #1

declare dso_local i64 @whereLoopResize(i32, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @sqlite3DbFree(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @WHERETRACE(i32, i8*) #1

declare dso_local i32 @whereLoopAddVirtualOne(%struct.TYPE_31__*, i64, i64, i32, %struct.TYPE_30__*, i32, i32*) #1

declare dso_local i32 @sqlite3_free(i32) #1

declare dso_local i32 @sqlite3DbFreeNN(i32, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
