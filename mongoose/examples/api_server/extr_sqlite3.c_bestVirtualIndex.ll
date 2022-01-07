; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_bestVirtualIndex.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_bestVirtualIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, %struct.sqlite3_index_constraint_usage, %struct.TYPE_21__*, i64, %struct.TYPE_24__**, %struct.SrcList_item*, %struct.TYPE_26__*, %struct.TYPE_19__* }
%struct.sqlite3_index_constraint_usage = type { i64, i32, i64, double, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i64, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i64, double, i32, i32, i64, i64, i64, %struct.sqlite3_index_constraint_usage* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.SrcList_item = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.sqlite3_index_constraint = type { i32, i32 }

@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@SQLITE_BIG_DBL = common dso_local global double 0.000000e+00, align 8
@WHERE_UNIQUE = common dso_local global i32 0, align 4
@WHERE_ORDERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*)* @bestVirtualIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bestVirtualIndex(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.SrcList_item*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.sqlite3_index_constraint*, align 8
  %9 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %3, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 7
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %4, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 6
  %24 = load %struct.SrcList_item*, %struct.SrcList_item** %23, align 8
  store %struct.SrcList_item* %24, %struct.SrcList_item** %5, align 8
  %25 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %26 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %25, i32 0, i32 0
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  store %struct.TYPE_28__* %27, %struct.TYPE_28__** %6, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 2
  %30 = call i32 @memset(%struct.sqlite3_index_constraint_usage* %29, i32 0, i32 64)
  %31 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %37, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %7, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %41 = icmp eq %struct.TYPE_24__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %44 = call %struct.TYPE_24__* @allocateIndexInfo(%struct.TYPE_27__* %43)
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %7, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %46, align 8
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %47, align 8
  br label %48

48:                                               ; preds = %42, %1
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %50 = icmp eq %struct.TYPE_24__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %387

52:                                               ; preds = %48
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %57, %52
  %65 = phi i1 [ false, %52 ], [ %63, %57 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %72 = call i32 @sqlite3GetVTable(i32 %70, %struct.TYPE_28__* %71)
  %73 = call i32 @assert(i32 %72)
  store i32 1, i32* %14, align 4
  br label %74

74:                                               ; preds = %256, %64
  br i1 true, label %75, label %259

75:                                               ; preds = %74
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %14, align 4
  %80 = icmp eq i32 %79, 1
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i1 [ true, %75 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 4
  %87 = bitcast i32* %86 to %struct.sqlite3_index_constraint**
  %88 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %87, align 4
  store %struct.sqlite3_index_constraint* %88, %struct.sqlite3_index_constraint** %8, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 8
  %91 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %90, align 8
  store %struct.sqlite3_index_constraint_usage* %91, %struct.sqlite3_index_constraint_usage** %9, align 8
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %133, %81
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %92
  %99 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %100 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %12, align 4
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i64 %106
  store %struct.TYPE_25__* %107, %struct.TYPE_25__** %10, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %110, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %98
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @WO_IN, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119, %116
  %127 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %128 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  br label %132

129:                                              ; preds = %119, %98
  %130 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %131 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  %136 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %137 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %136, i32 1
  store %struct.sqlite3_index_constraint* %137, %struct.sqlite3_index_constraint** %8, align 8
  br label %92

138:                                              ; preds = %92
  %139 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %9, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = mul i64 64, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @memset(%struct.sqlite3_index_constraint_usage* %139, i32 0, i32 %145)
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %138
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 7
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @sqlite3_free(i64 %154)
  br label %156

156:                                              ; preds = %151, %138
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 7
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 6
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 5
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load double, double* @SQLITE_BIG_DBL, align 8
  %166 = fdiv double %165, 2.000000e+00
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 2
  store double %166, double* %168, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %13, align 4
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %156
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 3
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %156
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %183 = call i64 @vtabBestIndex(%struct.TYPE_19__* %180, %struct.TYPE_28__* %181, %struct.TYPE_24__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %387

186:                                              ; preds = %179
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 4
  %189 = bitcast i32* %188 to %struct.sqlite3_index_constraint**
  %190 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %189, align 4
  store %struct.sqlite3_index_constraint* %190, %struct.sqlite3_index_constraint** %8, align 8
  store i32 0, i32* %11, align 4
  br label %191

191:                                              ; preds = %243, %186
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %248

197:                                              ; preds = %191
  %198 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %9, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %198, i64 %200
  %202 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %242

205:                                              ; preds = %197
  %206 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %207 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %12, align 4
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %210, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i64 %213
  store %struct.TYPE_25__* %214, %struct.TYPE_25__** %10, align 8
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %217
  store i32 %222, i32* %220, align 8
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @WO_IN, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %205
  %230 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %9, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %230, i64 %232
  %234 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  br label %248

238:                                              ; preds = %229
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 1
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %238, %205
  br label %242

242:                                              ; preds = %241, %197
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %11, align 4
  %246 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %8, align 8
  %247 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %246, i32 1
  store %struct.sqlite3_index_constraint* %247, %struct.sqlite3_index_constraint** %8, align 8
  br label %191

248:                                              ; preds = %237, %191
  %249 = load i32, i32* %11, align 4
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp sge i32 %249, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  br label %259

255:                                              ; preds = %248
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %14, align 4
  br label %74

259:                                              ; preds = %254, %74
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %292

264:                                              ; preds = %259
  store i32 0, i32* %11, align 4
  br label %265

265:                                              ; preds = %288, %264
  %266 = load i32, i32* %11, align 4
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp slt i32 %266, %269
  br i1 %270, label %271, label %291

271:                                              ; preds = %265
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %273, align 8
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @WHERE_UNIQUE, align 4
  %282 = and i32 %280, %281
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %271
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 1
  store i64 0, i64* %286, align 8
  br label %287

287:                                              ; preds = %284, %271
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %11, align 4
  br label %265

291:                                              ; preds = %265
  br label %292

292:                                              ; preds = %291, %259
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 2
  %295 = load double, double* %294, align 8
  store double %295, double* %15, align 8
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %292
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %300
  %306 = load double, double* %15, align 8
  %307 = call double @estLog(double %306)
  %308 = load double, double* %15, align 8
  %309 = fmul double %307, %308
  %310 = load double, double* %15, align 8
  %311 = fadd double %310, %309
  store double %311, double* %15, align 8
  br label %312

312:                                              ; preds = %305, %300, %292
  %313 = load double, double* @SQLITE_BIG_DBL, align 8
  %314 = fdiv double %313, 2.000000e+00
  %315 = load double, double* %15, align 8
  %316 = fcmp olt double %314, %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %312
  %318 = load double, double* @SQLITE_BIG_DBL, align 8
  %319 = fdiv double %318, 2.000000e+00
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %321, i32 0, i32 3
  store double %319, double* %322, align 8
  br label %328

323:                                              ; preds = %312
  %324 = load double, double* %15, align 8
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %326, i32 0, i32 3
  store double %324, double* %327, align 8
  br label %328

328:                                              ; preds = %323, %317
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 0
  store %struct.TYPE_24__* %329, %struct.TYPE_24__** %334, align 8
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %352

339:                                              ; preds = %328
  %340 = load i32, i32* @WHERE_ORDERED, align 4
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %342, i32 0, i32 4
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %340
  store i32 %346, i32* %344, align 8
  %347 = load i32, i32* %13, align 4
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %350, i32 0, i32 0
  store i32 %347, i32* %351, align 8
  br label %377

352:                                              ; preds = %328
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %370

357:                                              ; preds = %352
  %358 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %358, i32 0, i32 3
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %359, align 8
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = sub nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  br label %371

370:                                              ; preds = %352
  br label %371

371:                                              ; preds = %370, %357
  %372 = phi i32 [ %369, %357 ], [ 0, %370 ]
  %373 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %374 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %374, i32 0, i32 4
  %376 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %375, i32 0, i32 0
  store i32 %372, i32* %376, align 8
  br label %377

377:                                              ; preds = %371, %339
  %378 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %379, i32 0, i32 4
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 1
  store i64 0, i64* %381, align 8
  %382 = load i32, i32* %13, align 4
  %383 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %383, i32 0, i32 3
  store i32 %382, i32* %384, align 8
  %385 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %386 = call i32 @bestOrClauseIndex(%struct.TYPE_27__* %385)
  br label %387

387:                                              ; preds = %377, %185, %51
  ret void
}

declare dso_local i32 @memset(%struct.sqlite3_index_constraint_usage*, i32, i32) #1

declare dso_local %struct.TYPE_24__* @allocateIndexInfo(%struct.TYPE_27__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3GetVTable(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3_free(i64) #1

declare dso_local i64 @vtabBestIndex(%struct.TYPE_19__*, %struct.TYPE_28__*, %struct.TYPE_24__*) #1

declare dso_local double @estLog(double) #1

declare dso_local i32 @bestOrClauseIndex(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
