; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereLoopAddOr.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereLoopAddOr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_23__*, %struct.TYPE_30__*, i64, %struct.TYPE_32__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_29__*, i32, %struct.TYPE_23__*, i32 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_30__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i64, i64 }
%struct.TYPE_32__ = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_30__, i64, i64, i32, %struct.TYPE_29__** }
%struct.TYPE_22__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@WO_OR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Begin processing OR-clause %p\0A\00", align 1
@WO_AND = common dso_local global i32 0, align 4
@TK_AND = common dso_local global i32 0, align 4
@WHERE_MULTI_OR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"End processing OR-clause %p\0A\00", align 1
@sqlite3WhereTrace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, i32, i32)* @whereLoopAddOr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereLoopAddOr(%struct.TYPE_31__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca %struct.TYPE_31__, align 8
  %16 = alloca %struct.TYPE_30__, align 8
  %17 = alloca %struct.TYPE_30__, align 8
  %18 = alloca %struct.SrcList_item*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca %struct.TYPE_29__*, align 8
  %21 = alloca %struct.TYPE_29__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_30__, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %7, align 8
  %29 = load i32, i32* @SQLITE_OK, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %8, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i64 %39
  store %struct.TYPE_29__* %40, %struct.TYPE_29__** %11, align 8
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %42, align 8
  store %struct.TYPE_32__* %43, %struct.TYPE_32__** %9, align 8
  %44 = call i32 @memset(%struct.TYPE_30__* %16, i32 0, i32 16)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load %struct.SrcList_item*, %struct.SrcList_item** %48, align 8
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %49, i64 %53
  store %struct.SrcList_item* %54, %struct.SrcList_item** %18, align 8
  %55 = load %struct.SrcList_item*, %struct.SrcList_item** %18, align 8
  %56 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %59, align 8
  store %struct.TYPE_29__* %60, %struct.TYPE_29__** %10, align 8
  br label %61

61:                                               ; preds = %341, %3
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %64 = icmp ult %struct.TYPE_29__* %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @SQLITE_OK, align 4
  %68 = icmp eq i32 %66, %67
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i1 [ false, %61 ], [ %68, %65 ]
  br i1 %70, label %71, label %344

71:                                               ; preds = %69
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @WO_OR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %340

78:                                               ; preds = %71
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %340

90:                                               ; preds = %78
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  store %struct.TYPE_23__* %95, %struct.TYPE_23__** %19, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %97, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i64 %102
  store %struct.TYPE_29__* %103, %struct.TYPE_29__** %20, align 8
  store i32 1, i32* %22, align 4
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %105 = bitcast %struct.TYPE_31__* %15 to i8*
  %106 = bitcast %struct.TYPE_31__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 40, i1 false)
  %107 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  store %struct.TYPE_30__* %17, %struct.TYPE_30__** %108, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %110 = bitcast %struct.TYPE_29__* %109 to i8*
  %111 = call i32 @WHERETRACE(i32 512, i8* %110)
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %113, align 8
  store %struct.TYPE_29__* %114, %struct.TYPE_29__** %21, align 8
  br label %115

115:                                              ; preds = %269, %90
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %118 = icmp ult %struct.TYPE_29__* %116, %117
  br i1 %118, label %119, label %272

119:                                              ; preds = %115
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @WO_AND, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  store %struct.TYPE_23__* %131, %struct.TYPE_23__** %132, align 8
  br label %154

133:                                              ; preds = %119
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %133
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 4
  store i32 %142, i32* %143, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 3
  store %struct.TYPE_23__* %144, %struct.TYPE_23__** %145, align 8
  %146 = load i32, i32* @TK_AND, align 4
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  store i32 %146, i32* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  store i32 1, i32* %148, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  store %struct.TYPE_29__* %149, %struct.TYPE_29__** %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %151, align 8
  br label %153

152:                                              ; preds = %133
  br label %269

153:                                              ; preds = %139
  br label %154

154:                                              ; preds = %153, %126
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  store i32 0, i32* %155, align 8
  %156 = load %struct.SrcList_item*, %struct.SrcList_item** %18, align 8
  %157 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @IsVirtual(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @whereLoopAddVirtual(%struct.TYPE_31__* %15, i32 %162, i32 %163)
  store i32 %164, i32* %12, align 4
  br label %168

165:                                              ; preds = %154
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @whereLoopAddBtree(%struct.TYPE_31__* %15, i32 %166)
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %165, %161
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @SQLITE_OK, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @whereLoopAddOr(%struct.TYPE_31__* %15, i32 %173, i32 %174)
  store i32 %175, i32* %12, align 4
  br label %176

176:                                              ; preds = %172, %168
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @SQLITE_OK, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 0
  br label %184

184:                                              ; preds = %180, %176
  %185 = phi i1 [ true, %176 ], [ %183, %180 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  store i32 0, i32* %192, align 8
  br label %272

193:                                              ; preds = %184
  %194 = load i32, i32* %22, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 @whereOrMove(%struct.TYPE_30__* %16, %struct.TYPE_30__* %17)
  store i32 0, i32* %22, align 4
  br label %267

198:                                              ; preds = %193
  %199 = call i32 @whereOrMove(%struct.TYPE_30__* %25, %struct.TYPE_30__* %16)
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  store i32 0, i32* %200, align 8
  store i32 0, i32* %23, align 4
  br label %201

201:                                              ; preds = %263, %198
  %202 = load i32, i32* %23, align 4
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %266

206:                                              ; preds = %201
  store i32 0, i32* %24, align 4
  br label %207

207:                                              ; preds = %259, %206
  %208 = load i32, i32* %24, align 4
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %208, %210
  br i1 %211, label %212, label %262

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %213, align 8
  %215 = load i32, i32* %23, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %220, align 8
  %222 = load i32, i32* %24, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %219, %226
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %228, align 8
  %230 = load i32, i32* %23, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %235, align 8
  %237 = load i32, i32* %24, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @sqlite3LogEstAdd(i64 %234, i64 %241)
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %243, align 8
  %245 = load i32, i32* %23, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 1
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %250, align 8
  %252 = load i32, i32* %24, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @sqlite3LogEstAdd(i64 %249, i64 %256)
  %258 = call i32 @whereOrInsert(%struct.TYPE_30__* %16, i32 %227, i32 %242, i32 %257)
  br label %259

259:                                              ; preds = %212
  %260 = load i32, i32* %24, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %24, align 4
  br label %207

262:                                              ; preds = %207
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %23, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %23, align 4
  br label %201

266:                                              ; preds = %201
  br label %267

267:                                              ; preds = %266, %196
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268, %152
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 1
  store %struct.TYPE_29__* %271, %struct.TYPE_29__** %21, align 8
  br label %115

272:                                              ; preds = %191, %115
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 2
  store i32 1, i32* %274, align 8
  %275 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %276 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %276, i32 0, i32 10
  %278 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %278, i64 0
  store %struct.TYPE_29__* %275, %struct.TYPE_29__** %279, align 8
  %280 = load i32, i32* @WHERE_MULTI_OR, align 4
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i32 0, i32 9
  store i32 %280, i32* %282, align 8
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %283, i32 0, i32 8
  store i64 0, i64* %284, align 8
  %285 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %285, i32 0, i32 7
  store i64 0, i64* %286, align 8
  %287 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %287, i32 0, i32 6
  %289 = call i32 @memset(%struct.TYPE_30__* %288, i32 0, i32 16)
  store i32 0, i32* %23, align 4
  br label %290

290:                                              ; preds = %333, %272
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* @SQLITE_OK, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %290
  %295 = load i32, i32* %23, align 4
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp slt i32 %295, %297
  br label %299

299:                                              ; preds = %294, %290
  %300 = phi i1 [ false, %290 ], [ %298, %294 ]
  br i1 %300, label %301, label %336

301:                                              ; preds = %299
  %302 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 1
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %302, align 8
  %304 = load i32, i32* %23, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %308, 1
  %310 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 5
  store i64 %309, i64* %311, align 8
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 1
  %313 = load %struct.TYPE_28__*, %struct.TYPE_28__** %312, align 8
  %314 = load i32, i32* %23, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %319, i32 0, i32 4
  store i64 %318, i64* %320, align 8
  %321 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 1
  %322 = load %struct.TYPE_28__*, %struct.TYPE_28__** %321, align 8
  %323 = load i32, i32* %23, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 4
  %330 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %331 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %332 = call i32 @whereLoopInsert(%struct.TYPE_31__* %330, %struct.TYPE_32__* %331)
  store i32 %332, i32* %12, align 4
  br label %333

333:                                              ; preds = %301
  %334 = load i32, i32* %23, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %23, align 4
  br label %290

336:                                              ; preds = %299
  %337 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %338 = bitcast %struct.TYPE_29__* %337 to i8*
  %339 = call i32 @WHERETRACE(i32 512, i8* %338)
  br label %340

340:                                              ; preds = %336, %78, %71
  br label %341

341:                                              ; preds = %340
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 1
  store %struct.TYPE_29__* %343, %struct.TYPE_29__** %10, align 8
  br label %61

344:                                              ; preds = %69
  %345 = load i32, i32* %12, align 4
  ret i32 %345
}

declare dso_local i32 @memset(%struct.TYPE_30__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WHERETRACE(i32, i8*) #1

declare dso_local i64 @IsVirtual(i32) #1

declare dso_local i32 @whereLoopAddVirtual(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @whereLoopAddBtree(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @whereOrMove(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @whereOrInsert(%struct.TYPE_30__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3LogEstAdd(i64, i64) #1

declare dso_local i32 @whereLoopInsert(%struct.TYPE_31__*, %struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
