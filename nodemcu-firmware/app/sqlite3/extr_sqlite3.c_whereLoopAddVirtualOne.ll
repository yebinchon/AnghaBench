; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereLoopAddVirtualOne.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereLoopAddVirtualOne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32, i32, i32, %struct.TYPE_20__, i32, i32, i32, i64, %struct.TYPE_22__** }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32, i64, double, i32, i32, i64, i64, i64, i64, i32, i64, %struct.sqlite3_index_constraint_usage* }
%struct.sqlite3_index_constraint_usage = type { i32, i64 }
%struct.sqlite3_index_constraint = type { i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_BIG_DBL = common dso_local global double 0.000000e+00, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s.xBestIndex malfunction\00", align 1
@WO_IN = common dso_local global i32 0, align 4
@SQLITE_INDEX_SCAN_UNIQUE = common dso_local global i32 0, align 4
@WHERE_ONEROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"  bIn=%d prereqIn=%04llx prereqOut=%04llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, i32, i32, %struct.TYPE_21__*, i32, i32*)* @whereLoopAddVirtualOne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereLoopAddVirtualOne(%struct.TYPE_23__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_21__* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.sqlite3_index_constraint*, align 8
  %18 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_24__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.SrcList_item*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_22__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_22__*, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %16, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 11
  %35 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %34, align 8
  store %struct.sqlite3_index_constraint_usage* %35, %struct.sqlite3_index_constraint_usage** %18, align 8
  %36 = load i32, i32* @SQLITE_OK, align 4
  store i32 %36, i32* %21, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %22, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %23, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.SrcList_item*, %struct.SrcList_item** %50, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %51, i64 %54
  store %struct.SrcList_item* %55, %struct.SrcList_item** %24, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %25, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32*, i32** %15, align 8
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 9
  %72 = bitcast i32* %71 to %struct.sqlite3_index_constraint**
  %73 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %72, align 8
  store %struct.sqlite3_index_constraint* %73, %struct.sqlite3_index_constraint** %17, align 8
  store i32 0, i32* %19, align 4
  br label %74

74:                                               ; preds = %108, %7
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %25, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %113

78:                                               ; preds = %74
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %83 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i64 %84
  store %struct.TYPE_22__* %85, %struct.TYPE_22__** %26, align 8
  %86 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %87 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %86, i32 0, i32 1
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %90, %91
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %78
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %106 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %97, %78
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  %111 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %112 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %111, i32 1
  store %struct.sqlite3_index_constraint* %112, %struct.sqlite3_index_constraint** %17, align 8
  br label %74

113:                                              ; preds = %74
  %114 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %18, align 8
  %115 = load i32, i32* %25, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 16, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memset(%struct.sqlite3_index_constraint_usage* %114, i32 0, i32 %118)
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 7
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 8
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 6
  store i64 0, i64* %131, align 8
  %132 = load double, double* @SQLITE_BIG_DBL, align 8
  %133 = fdiv double %132, 2.000000e+00
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  store double %133, double* %135, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 3
  store i32 25, i32* %137, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 4
  store i32 0, i32* %139, align 4
  %140 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %141 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 10
  store i64 %142, i64* %144, align 8
  %145 = load i32*, i32** %23, align 8
  %146 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %147 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %146, i32 0, i32 0
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %150 = call i32 @vtabBestIndex(i32* %145, %struct.TYPE_16__* %148, %struct.TYPE_21__* %149)
  store i32 %150, i32* %21, align 4
  %151 = load i32, i32* %21, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %113
  %154 = load i32, i32* %21, align 4
  store i32 %154, i32* %8, align 4
  br label %477

155:                                              ; preds = %113
  store i32 -1, i32* %20, align 4
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %25, align 4
  %160 = icmp sge i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  store i32 0, i32* %19, align 4
  br label %163

163:                                              ; preds = %174, %155
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %25, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 9
  %170 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %169, align 8
  %171 = load i32, i32* %19, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %170, i64 %172
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %173, align 8
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %19, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %19, align 4
  br label %163

177:                                              ; preds = %163
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  store i32 0, i32* %181, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 9
  %184 = bitcast i32* %183 to %struct.sqlite3_index_constraint**
  %185 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %184, align 8
  store %struct.sqlite3_index_constraint* %185, %struct.sqlite3_index_constraint** %17, align 8
  store i32 0, i32* %19, align 4
  br label %186

186:                                              ; preds = %344, %177
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %25, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %349

190:                                              ; preds = %186
  %191 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %18, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %191, i64 %193
  %195 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %27, align 4
  %198 = icmp sge i32 %197, 0
  br i1 %198, label %199, label %343

199:                                              ; preds = %190
  %200 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %201 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %29, align 4
  %204 = load i32, i32* %27, align 4
  %205 = load i32, i32* %25, align 4
  %206 = icmp sge i32 %204, %205
  br i1 %206, label %230, label %207

207:                                              ; preds = %199
  %208 = load i32, i32* %29, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %230, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %29, align 4
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp sge i32 %211, %214
  br i1 %215, label %230, label %216

216:                                              ; preds = %210
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 9
  %219 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %218, align 8
  %220 = load i32, i32* %27, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %219, i64 %221
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %222, align 8
  %224 = icmp ne %struct.TYPE_22__* %223, null
  br i1 %224, label %230, label %225

225:                                              ; preds = %216
  %226 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %227 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %225, %216, %210, %207, %199
  %231 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %231, i32* %21, align 4
  %232 = load i32*, i32** %23, align 8
  %233 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %234 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %233, i32 0, i32 0
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @sqlite3ErrorMsg(i32* %232, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %21, align 4
  store i32 %239, i32* %8, align 4
  br label %477

240:                                              ; preds = %225
  %241 = load i32, i32* %27, align 4
  %242 = load i32, i32* %25, align 4
  %243 = sub nsw i32 %242, 1
  %244 = icmp eq i32 %241, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @testcase(i32 %245)
  %247 = load i32, i32* %29, align 4
  %248 = icmp eq i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = call i32 @testcase(i32 %249)
  %251 = load i32, i32* %29, align 4
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %254, 1
  %256 = icmp eq i32 %251, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 @testcase(i32 %257)
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %260, align 8
  %262 = load i32, i32* %29, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i64 %263
  store %struct.TYPE_22__* %264, %struct.TYPE_22__** %28, align 8
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  %272 = load i32, i32* %27, align 4
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = icmp slt i32 %272, %275
  %277 = zext i1 %276 to i32
  %278 = call i32 @assert(i32 %277)
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 9
  %282 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %281, align 8
  %283 = load i32, i32* %27, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %282, i64 %284
  store %struct.TYPE_22__* %279, %struct.TYPE_22__** %285, align 8
  %286 = load i32, i32* %27, align 4
  %287 = load i32, i32* %20, align 4
  %288 = icmp sgt i32 %286, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %240
  %290 = load i32, i32* %27, align 4
  store i32 %290, i32* %20, align 4
  br label %291

291:                                              ; preds = %289, %240
  %292 = load i32, i32* %27, align 4
  %293 = icmp eq i32 %292, 15
  %294 = zext i1 %293 to i32
  %295 = call i32 @testcase(i32 %294)
  %296 = load i32, i32* %27, align 4
  %297 = icmp eq i32 %296, 16
  %298 = zext i1 %297 to i32
  %299 = call i32 @testcase(i32 %298)
  %300 = load i32, i32* %27, align 4
  %301 = icmp slt i32 %300, 16
  br i1 %301, label %302, label %319

302:                                              ; preds = %291
  %303 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %18, align 8
  %304 = load i32, i32* %19, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %303, i64 %305
  %307 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %302
  %311 = load i32, i32* %27, align 4
  %312 = shl i32 1, %311
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %312
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %310, %302, %291
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @WO_IN, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %342

326:                                              ; preds = %319
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 6
  store i64 0, i64* %328, align 8
  %329 = load i32, i32* @SQLITE_INDEX_SCAN_UNIQUE, align 4
  %330 = xor i32 %329, -1
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 4
  %334 = and i32 %333, %330
  store i32 %334, i32* %332, align 4
  %335 = load i32*, i32** %15, align 8
  store i32 1, i32* %335, align 4
  %336 = load i32, i32* %12, align 4
  %337 = load i32, i32* @WO_IN, align 4
  %338 = and i32 %336, %337
  %339 = icmp eq i32 %338, 0
  %340 = zext i1 %339 to i32
  %341 = call i32 @assert(i32 %340)
  br label %342

342:                                              ; preds = %326, %319
  br label %343

343:                                              ; preds = %342, %190
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %19, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %19, align 4
  %347 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %348 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %347, i32 1
  store %struct.sqlite3_index_constraint* %348, %struct.sqlite3_index_constraint** %17, align 8
  br label %186

349:                                              ; preds = %186
  %350 = load i32, i32* %14, align 4
  %351 = xor i32 %350, -1
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 4
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = and i32 %356, %351
  store i32 %357, i32* %355, align 8
  %358 = load i32, i32* %20, align 4
  %359 = add nsw i32 %358, 1
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 3
  store i32 %359, i32* %361, align 8
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = icmp sle i32 %364, %367
  %369 = zext i1 %368 to i32
  %370 = call i32 @assert(i32 %369)
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 8
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 4
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 4
  store i64 %373, i64* %377, align 8
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 4
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 1
  store i64 %380, i64* %384, align 8
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 1
  store i64 0, i64* %386, align 8
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 7
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %391 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %390, i32 0, i32 4
  %392 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i32 0, i32 2
  store i64 %389, i64* %393, align 8
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 6
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %349
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 5
  %401 = load i64, i64* %400, align 8
  br label %403

402:                                              ; preds = %349
  br label %403

403:                                              ; preds = %402, %398
  %404 = phi i64 [ %401, %398 ], [ 0, %402 ]
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 4
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 3
  store i64 %404, i64* %408, align 8
  %409 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %410 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %409, i32 0, i32 8
  store i64 0, i64* %410, align 8
  %411 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %412 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i32 0, i32 2
  %413 = load double, double* %412, align 8
  %414 = call i32 @sqlite3LogEstFromDouble(double %413)
  %415 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %416 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %415, i32 0, i32 7
  store i32 %414, i32* %416, align 8
  %417 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %418 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @sqlite3LogEst(i32 %419)
  %421 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %422 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %421, i32 0, i32 6
  store i32 %420, i32* %422, align 4
  %423 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %424 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @SQLITE_INDEX_SCAN_UNIQUE, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %435

429:                                              ; preds = %403
  %430 = load i32, i32* @WHERE_ONEROW, align 4
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 5
  %433 = load i32, i32* %432, align 8
  %434 = or i32 %433, %430
  store i32 %434, i32* %432, align 8
  br label %442

435:                                              ; preds = %403
  %436 = load i32, i32* @WHERE_ONEROW, align 4
  %437 = xor i32 %436, -1
  %438 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %439 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %438, i32 0, i32 5
  %440 = load i32, i32* %439, align 8
  %441 = and i32 %440, %437
  store i32 %441, i32* %439, align 8
  br label %442

442:                                              ; preds = %435, %429
  %443 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %445 = call i32 @whereLoopInsert(%struct.TYPE_23__* %443, %struct.TYPE_24__* %444)
  store i32 %445, i32* %21, align 4
  %446 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %447 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %446, i32 0, i32 4
  %448 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %463

452:                                              ; preds = %442
  %453 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %454 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %453, i32 0, i32 4
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %455, i32 0, i32 2
  %457 = load i64, i64* %456, align 8
  %458 = call i32 @sqlite3_free(i64 %457)
  %459 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %460 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %459, i32 0, i32 4
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %461, i32 0, i32 1
  store i64 0, i64* %462, align 8
  br label %463

463:                                              ; preds = %452, %442
  %464 = load i32*, i32** %15, align 8
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* %10, align 4
  %467 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %468 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* %10, align 4
  %471 = xor i32 %470, -1
  %472 = and i32 %469, %471
  %473 = sext i32 %472 to i64
  %474 = inttoptr i64 %473 to i8*
  %475 = call i32 @WHERETRACE(i32 65535, i8* %474)
  %476 = load i32, i32* %21, align 4
  store i32 %476, i32* %8, align 4
  br label %477

477:                                              ; preds = %463, %230, %153
  %478 = load i32, i32* %8, align 4
  ret i32 %478
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.sqlite3_index_constraint_usage*, i32, i32) #1

declare dso_local i32 @vtabBestIndex(i32*, %struct.TYPE_16__*, %struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3ErrorMsg(i32*, i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3LogEstFromDouble(double) #1

declare dso_local i32 @sqlite3LogEst(i32) #1

declare dso_local i32 @whereLoopInsert(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3_free(i64) #1

declare dso_local i32 @WHERETRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
