; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_whereLoopAddVirtualOne.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_whereLoopAddVirtualOne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32, i32, i32, i64*, %struct.TYPE_20__, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, double, i32, i32, i64, i64, i64, i64, i32, i64, %struct.sqlite3_index_constraint_usage* }
%struct.sqlite3_index_constraint_usage = type { i32, i64 }
%struct.sqlite3_index_constraint = type { i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_BIG_DBL = common dso_local global double 0.000000e+00, align 8
@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"  ^^^^--- non-viable plan rejected!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s.xBestIndex malfunction\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@SQLITE_INDEX_SCAN_UNIQUE = common dso_local global i32 0, align 4
@WHERE_ONEROW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"  bIn=%d prereqIn=%04llx prereqOut=%04llx\0A\00", align 1
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
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
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
  br i1 %152, label %153, label %162

153:                                              ; preds = %113
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = call i32 @WHERETRACE(i32 65535, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %159 = load i32, i32* @SQLITE_OK, align 4
  store i32 %159, i32* %8, align 4
  br label %519

160:                                              ; preds = %153
  %161 = load i32, i32* %21, align 4
  store i32 %161, i32* %8, align 4
  br label %519

162:                                              ; preds = %113
  store i32 -1, i32* %20, align 4
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %25, align 4
  %167 = icmp sge i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  store i32 0, i32* %19, align 4
  br label %170

170:                                              ; preds = %181, %162
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %25, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %170
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 4
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  store i64 0, i64* %180, align 8
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %19, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %19, align 4
  br label %170

184:                                              ; preds = %170
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  store i32 0, i32* %188, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 9
  %191 = bitcast i32* %190 to %struct.sqlite3_index_constraint**
  %192 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %191, align 8
  store %struct.sqlite3_index_constraint* %192, %struct.sqlite3_index_constraint** %17, align 8
  store i32 0, i32* %19, align 4
  br label %193

193:                                              ; preds = %355, %184
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %25, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %360

197:                                              ; preds = %193
  %198 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %18, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %198, i64 %200
  %202 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sub nsw i32 %203, 1
  store i32 %204, i32* %27, align 4
  %205 = icmp sge i32 %204, 0
  br i1 %205, label %206, label %354

206:                                              ; preds = %197
  %207 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %208 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %29, align 4
  %211 = load i32, i32* %27, align 4
  %212 = load i32, i32* %25, align 4
  %213 = icmp sge i32 %211, %212
  br i1 %213, label %237, label %214

214:                                              ; preds = %206
  %215 = load i32, i32* %29, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %237, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %29, align 4
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp sge i32 %218, %221
  br i1 %222, label %237, label %223

223:                                              ; preds = %217
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 4
  %226 = load i64*, i64** %225, align 8
  %227 = load i32, i32* %27, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %223
  %233 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %234 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %232, %223, %217, %214, %206
  %238 = load i32*, i32** %23, align 8
  %239 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %240 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %239, i32 0, i32 0
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @sqlite3ErrorMsg(i32* %238, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %243)
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @testcase(i32 %247)
  %249 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %249, i32* %8, align 4
  br label %519

250:                                              ; preds = %232
  %251 = load i32, i32* %27, align 4
  %252 = load i32, i32* %25, align 4
  %253 = sub nsw i32 %252, 1
  %254 = icmp eq i32 %251, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @testcase(i32 %255)
  %257 = load i32, i32* %29, align 4
  %258 = icmp eq i32 %257, 0
  %259 = zext i1 %258 to i32
  %260 = call i32 @testcase(i32 %259)
  %261 = load i32, i32* %29, align 4
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sub nsw i32 %264, 1
  %266 = icmp eq i32 %261, %265
  %267 = zext i1 %266 to i32
  %268 = call i32 @testcase(i32 %267)
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %270, align 8
  %272 = load i32, i32* %29, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i64 %273
  store %struct.TYPE_22__* %274, %struct.TYPE_22__** %28, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load i32, i32* %27, align 4
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %282, %285
  %287 = zext i1 %286 to i32
  %288 = call i32 @assert(i32 %287)
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %290 = ptrtoint %struct.TYPE_22__* %289 to i64
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 4
  %293 = load i64*, i64** %292, align 8
  %294 = load i32, i32* %27, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %293, i64 %295
  store i64 %290, i64* %296, align 8
  %297 = load i32, i32* %27, align 4
  %298 = load i32, i32* %20, align 4
  %299 = icmp sgt i32 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %250
  %301 = load i32, i32* %27, align 4
  store i32 %301, i32* %20, align 4
  br label %302

302:                                              ; preds = %300, %250
  %303 = load i32, i32* %27, align 4
  %304 = icmp eq i32 %303, 15
  %305 = zext i1 %304 to i32
  %306 = call i32 @testcase(i32 %305)
  %307 = load i32, i32* %27, align 4
  %308 = icmp eq i32 %307, 16
  %309 = zext i1 %308 to i32
  %310 = call i32 @testcase(i32 %309)
  %311 = load i32, i32* %27, align 4
  %312 = icmp slt i32 %311, 16
  br i1 %312, label %313, label %330

313:                                              ; preds = %302
  %314 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %18, align 8
  %315 = load i32, i32* %19, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %314, i64 %316
  %318 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %313
  %322 = load i32, i32* %27, align 4
  %323 = shl i32 1, %322
  %324 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 5
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = or i32 %328, %323
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %321, %313, %302
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @WO_IN, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %353

337:                                              ; preds = %330
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %338, i32 0, i32 6
  store i64 0, i64* %339, align 8
  %340 = load i32, i32* @SQLITE_INDEX_SCAN_UNIQUE, align 4
  %341 = xor i32 %340, -1
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 4
  %345 = and i32 %344, %341
  store i32 %345, i32* %343, align 4
  %346 = load i32*, i32** %15, align 8
  store i32 1, i32* %346, align 4
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* @WO_IN, align 4
  %349 = and i32 %347, %348
  %350 = icmp eq i32 %349, 0
  %351 = zext i1 %350 to i32
  %352 = call i32 @assert(i32 %351)
  br label %353

353:                                              ; preds = %337, %330
  br label %354

354:                                              ; preds = %353, %197
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %19, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %19, align 4
  %358 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %359 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %358, i32 1
  store %struct.sqlite3_index_constraint* %359, %struct.sqlite3_index_constraint** %17, align 8
  br label %193

360:                                              ; preds = %193
  %361 = load i32, i32* %14, align 4
  %362 = xor i32 %361, -1
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 5
  %365 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = and i32 %367, %362
  store i32 %368, i32* %366, align 8
  %369 = load i32, i32* %20, align 4
  %370 = add nsw i32 %369, 1
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 3
  store i32 %370, i32* %372, align 8
  store i32 0, i32* %19, align 4
  br label %373

373:                                              ; preds = %400, %360
  %374 = load i32, i32* %19, align 4
  %375 = load i32, i32* %20, align 4
  %376 = icmp sle i32 %374, %375
  br i1 %376, label %377, label %403

377:                                              ; preds = %373
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %379 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %378, i32 0, i32 4
  %380 = load i64*, i64** %379, align 8
  %381 = load i32, i32* %19, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i64, i64* %380, i64 %382
  %384 = load i64, i64* %383, align 8
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %386, label %399

386:                                              ; preds = %377
  %387 = load i32*, i32** %23, align 8
  %388 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %389 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %388, i32 0, i32 0
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @sqlite3ErrorMsg(i32* %387, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %392)
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @testcase(i32 %396)
  %398 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %398, i32* %8, align 4
  br label %519

399:                                              ; preds = %377
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %19, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %19, align 4
  br label %373

403:                                              ; preds = %373
  %404 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %405 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = icmp sle i32 %406, %409
  %411 = zext i1 %410 to i32
  %412 = call i32 @assert(i32 %411)
  %413 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %413, i32 0, i32 8
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %417 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %416, i32 0, i32 5
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i32 0, i32 4
  store i64 %415, i64* %419, align 8
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %421 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %424 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 1
  store i32 %422, i32* %426, align 4
  %427 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %428 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %427, i32 0, i32 1
  store i32 0, i32* %428, align 4
  %429 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %430 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %429, i32 0, i32 7
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %433 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %432, i32 0, i32 5
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %434, i32 0, i32 2
  store i64 %431, i64* %435, align 8
  %436 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %436, i32 0, i32 6
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %403
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 5
  %443 = load i64, i64* %442, align 8
  br label %445

444:                                              ; preds = %403
  br label %445

445:                                              ; preds = %444, %440
  %446 = phi i64 [ %443, %440 ], [ 0, %444 ]
  %447 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %448 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %447, i32 0, i32 5
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 3
  store i64 %446, i64* %450, align 8
  %451 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %452 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %451, i32 0, i32 9
  store i64 0, i64* %452, align 8
  %453 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %454 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %453, i32 0, i32 2
  %455 = load double, double* %454, align 8
  %456 = call i32 @sqlite3LogEstFromDouble(double %455)
  %457 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %458 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %457, i32 0, i32 8
  store i32 %456, i32* %458, align 8
  %459 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %460 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @sqlite3LogEst(i32 %461)
  %463 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %464 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %463, i32 0, i32 7
  store i32 %462, i32* %464, align 4
  %465 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %466 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %465, i32 0, i32 4
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* @SQLITE_INDEX_SCAN_UNIQUE, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %477

471:                                              ; preds = %445
  %472 = load i32, i32* @WHERE_ONEROW, align 4
  %473 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %474 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %473, i32 0, i32 6
  %475 = load i32, i32* %474, align 8
  %476 = or i32 %475, %472
  store i32 %476, i32* %474, align 8
  br label %484

477:                                              ; preds = %445
  %478 = load i32, i32* @WHERE_ONEROW, align 4
  %479 = xor i32 %478, -1
  %480 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %481 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %480, i32 0, i32 6
  %482 = load i32, i32* %481, align 8
  %483 = and i32 %482, %479
  store i32 %483, i32* %481, align 8
  br label %484

484:                                              ; preds = %477, %471
  %485 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %486 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %487 = call i32 @whereLoopInsert(%struct.TYPE_23__* %485, %struct.TYPE_24__* %486)
  store i32 %487, i32* %21, align 4
  %488 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %489 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i32 0, i32 5
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %505

494:                                              ; preds = %484
  %495 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %496 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %495, i32 0, i32 5
  %497 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %497, i32 0, i32 2
  %499 = load i64, i64* %498, align 8
  %500 = call i32 @sqlite3_free(i64 %499)
  %501 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %502 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %501, i32 0, i32 5
  %503 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %503, i32 0, i32 1
  store i32 0, i32* %504, align 4
  br label %505

505:                                              ; preds = %494, %484
  %506 = load i32*, i32** %15, align 8
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* %10, align 4
  %509 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %510 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* %10, align 4
  %513 = xor i32 %512, -1
  %514 = and i32 %511, %513
  %515 = sext i32 %514 to i64
  %516 = inttoptr i64 %515 to i8*
  %517 = call i32 @WHERETRACE(i32 65535, i8* %516)
  %518 = load i32, i32* %21, align 4
  store i32 %518, i32* %8, align 4
  br label %519

519:                                              ; preds = %505, %386, %237, %160, %157
  %520 = load i32, i32* %8, align 4
  ret i32 %520
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.sqlite3_index_constraint_usage*, i32, i32) #1

declare dso_local i32 @vtabBestIndex(i32*, %struct.TYPE_16__*, %struct.TYPE_21__*) #1

declare dso_local i32 @WHERETRACE(i32, i8*) #1

declare dso_local i32 @sqlite3ErrorMsg(i32*, i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3LogEstFromDouble(double) #1

declare dso_local i32 @sqlite3LogEst(i32) #1

declare dso_local i32 @whereLoopInsert(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
