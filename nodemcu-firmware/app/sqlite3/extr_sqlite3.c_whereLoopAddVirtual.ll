; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereLoopAddVirtual.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereLoopAddVirtual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_21__*, %struct.TYPE_31__* }
%struct.TYPE_30__ = type { i64, i64, %struct.TYPE_25__, i64, i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"  VirtualOne: all usable\0A\00", align 1
@ALLBITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"  VirtualOne: all usable w/o IN\0A\00", align 1
@WO_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"  VirtualOne: mPrev=%04llx mNext=%04llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"  VirtualOne: all disabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"  VirtualOne: all disabled and w/o IN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i64, i64)* @whereLoopAddVirtual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereLoopAddVirtual(%struct.TYPE_29__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.SrcList_item*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
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
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  store %struct.TYPE_31__* %35, %struct.TYPE_31__** %9, align 8
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %10, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %11, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %43, align 8
  store %struct.TYPE_30__* %44, %struct.TYPE_30__** %16, align 8
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load %struct.SrcList_item*, %struct.SrcList_item** %48, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %49, i64 %52
  store %struct.SrcList_item* %53, %struct.SrcList_item** %12, align 8
  %54 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %55 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IsVirtual(i32 %56)
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.TYPE_28__* @allocateIndexInfo(%struct.TYPE_22__* %59, %struct.TYPE_21__* %60, i64 %61, %struct.SrcList_item* %62, i32 %65, i32* %18)
  store %struct.TYPE_28__* %66, %struct.TYPE_28__** %13, align 8
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %68 = icmp eq %struct.TYPE_28__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %3
  %70 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %70, i32* %4, align 4
  br label %286

71:                                               ; preds = %3
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %14, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @whereLoopResize(i32 %88, %struct.TYPE_30__* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %71
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %98 = call i32 @sqlite3DbFree(i32 %96, %struct.TYPE_28__* %97)
  %99 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %99, i32* %4, align 4
  br label %286

100:                                              ; preds = %71
  %101 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @ALLBITS, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_29__* %102, i64 %103, i64 %104, i32 0, %struct.TYPE_28__* %105, i32 %106, i32* %15)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @SQLITE_OK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %269

111:                                              ; preds = %100
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = xor i64 %115, -1
  %117 = and i64 %114, %116
  store i64 %117, i64* %17, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %269

119:                                              ; preds = %111
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %119
  %123 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @ALLBITS, align 8
  %127 = load i32, i32* @WO_IN, align 4
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_29__* %124, i64 %125, i64 %126, i32 %127, %struct.TYPE_28__* %128, i32 %129, i32* %15)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %6, align 8
  %139 = xor i64 %138, -1
  %140 = and i64 %137, %139
  store i64 %140, i64* %22, align 8
  %141 = load i64, i64* %22, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %122
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %144

144:                                              ; preds = %143, %122
  br label %145

145:                                              ; preds = %144, %119
  br label %146

146:                                              ; preds = %232, %205, %145
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @SQLITE_OK, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %233

150:                                              ; preds = %146
  %151 = load i64, i64* @ALLBITS, align 8
  store i64 %151, i64* %24, align 8
  %152 = load i64, i64* %24, align 8
  %153 = icmp sgt i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  store i32 0, i32* %23, align 4
  br label %156

156:                                              ; preds = %188, %150
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %191

160:                                              ; preds = %156
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %162, align 8
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %165, align 8
  %167 = load i32, i32* %23, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %6, align 8
  %176 = xor i64 %175, -1
  %177 = and i64 %174, %176
  store i64 %177, i64* %25, align 8
  %178 = load i64, i64* %25, align 8
  %179 = load i64, i64* %21, align 8
  %180 = icmp sgt i64 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %160
  %182 = load i64, i64* %25, align 8
  %183 = load i64, i64* %24, align 8
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i64, i64* %25, align 8
  store i64 %186, i64* %24, align 8
  br label %187

187:                                              ; preds = %185, %181, %160
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %23, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %23, align 4
  br label %156

191:                                              ; preds = %156
  %192 = load i64, i64* %24, align 8
  store i64 %192, i64* %21, align 8
  %193 = load i64, i64* %24, align 8
  %194 = load i64, i64* @ALLBITS, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %233

197:                                              ; preds = %191
  %198 = load i64, i64* %24, align 8
  %199 = load i64, i64* %17, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = load i64, i64* %24, align 8
  %203 = load i64, i64* %22, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201, %197
  br label %146

206:                                              ; preds = %201
  %207 = load i64, i64* %21, align 8
  %208 = trunc i64 %207 to i32
  %209 = load i64, i64* %24, align 8
  %210 = trunc i64 %209 to i32
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i8*
  %213 = call i32 @WHERETRACE(i32 64, i8* %212)
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %215 = load i64, i64* %6, align 8
  %216 = load i64, i64* %24, align 8
  %217 = load i64, i64* %6, align 8
  %218 = or i64 %216, %217
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %220 = load i32, i32* %18, align 4
  %221 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_29__* %214, i64 %215, i64 %218, i32 0, %struct.TYPE_28__* %219, i32 %220, i32* %15)
  store i32 %221, i32* %8, align 4
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %6, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %206
  store i32 1, i32* %19, align 4
  %228 = load i32, i32* %15, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  store i32 1, i32* %20, align 4
  br label %231

231:                                              ; preds = %230, %227
  br label %232

232:                                              ; preds = %231, %206
  br label %146

233:                                              ; preds = %196, %146
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @SQLITE_OK, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %252

237:                                              ; preds = %233
  %238 = load i32, i32* %19, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %237
  %241 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %243 = load i64, i64* %6, align 8
  %244 = load i64, i64* %6, align 8
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %246 = load i32, i32* %18, align 4
  %247 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_29__* %242, i64 %243, i64 %244, i32 0, %struct.TYPE_28__* %245, i32 %246, i32* %15)
  store i32 %247, i32* %8, align 4
  %248 = load i32, i32* %15, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  store i32 1, i32* %20, align 4
  br label %251

251:                                              ; preds = %250, %240
  br label %252

252:                                              ; preds = %251, %237, %233
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* @SQLITE_OK, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %252
  %257 = load i32, i32* %20, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %256
  %260 = call i32 @WHERETRACE(i32 64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %261 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %262 = load i64, i64* %6, align 8
  %263 = load i64, i64* %6, align 8
  %264 = load i32, i32* @WO_IN, align 4
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %266 = load i32, i32* %18, align 4
  %267 = call i32 @whereLoopAddVirtualOne(%struct.TYPE_29__* %261, i64 %262, i64 %263, i32 %264, %struct.TYPE_28__* %265, i32 %266, i32* %15)
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %259, %256, %252
  br label %269

269:                                              ; preds = %268, %111, %100
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %269
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @sqlite3_free(i32 %277)
  br label %279

279:                                              ; preds = %274, %269
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %284 = call i32 @sqlite3DbFreeNN(i32 %282, %struct.TYPE_28__* %283)
  %285 = load i32, i32* %8, align 4
  store i32 %285, i32* %4, align 4
  br label %286

286:                                              ; preds = %279, %93, %69
  %287 = load i32, i32* %4, align 4
  ret i32 %287
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsVirtual(i32) #1

declare dso_local %struct.TYPE_28__* @allocateIndexInfo(%struct.TYPE_22__*, %struct.TYPE_21__*, i64, %struct.SrcList_item*, i32, i32*) #1

declare dso_local i64 @whereLoopResize(i32, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @sqlite3DbFree(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @WHERETRACE(i32, i8*) #1

declare dso_local i32 @whereLoopAddVirtualOne(%struct.TYPE_29__*, i64, i64, i32, %struct.TYPE_28__*, i32, i32*) #1

declare dso_local i32 @sqlite3_free(i32) #1

declare dso_local i32 @sqlite3DbFreeNN(i32, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
