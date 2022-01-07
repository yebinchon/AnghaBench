; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/prep/extr_prepunion.c_generate_nonunion_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/prep/extr_prepunion.c_generate_nonunion_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { double, i32, i32, %struct.TYPE_49__* }
%struct.TYPE_46__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_48__ = type { double }
%struct.TYPE_49__ = type { double }

@UPPERREL_SETOP = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"INTERSECT\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EXCEPT\00", align 1
@SETOPCMD_INTERSECT_ALL = common dso_local global i32 0, align 4
@SETOPCMD_INTERSECT = common dso_local global i32 0, align 4
@SETOPCMD_EXCEPT_ALL = common dso_local global i32 0, align 4
@SETOPCMD_EXCEPT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"unrecognized set op: %d\00", align 1
@SETOP_HASHED = common dso_local global i32 0, align 4
@SETOP_SORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_47__* (%struct.TYPE_46__*, %struct.TYPE_48__*, %struct.TYPE_49__*, %struct.TYPE_49__**)* @generate_nonunion_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_47__* @generate_nonunion_paths(%struct.TYPE_46__* %0, %struct.TYPE_48__* %1, %struct.TYPE_49__* %2, %struct.TYPE_49__** %3) #0 {
  %5 = alloca %struct.TYPE_46__*, align 8
  %6 = alloca %struct.TYPE_48__*, align 8
  %7 = alloca %struct.TYPE_49__*, align 8
  %8 = alloca %struct.TYPE_49__**, align 8
  %9 = alloca %struct.TYPE_47__*, align 8
  %10 = alloca %struct.TYPE_47__*, align 8
  %11 = alloca %struct.TYPE_47__*, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.TYPE_49__*, align 8
  %14 = alloca %struct.TYPE_49__*, align 8
  %15 = alloca %struct.TYPE_49__*, align 8
  %16 = alloca %struct.TYPE_49__*, align 8
  %17 = alloca %struct.TYPE_49__*, align 8
  %18 = alloca %struct.TYPE_49__*, align 8
  %19 = alloca %struct.TYPE_49__*, align 8
  %20 = alloca %struct.TYPE_49__*, align 8
  %21 = alloca %struct.TYPE_49__*, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_46__* %0, %struct.TYPE_46__** %5, align 8
  store %struct.TYPE_48__* %1, %struct.TYPE_48__** %6, align 8
  store %struct.TYPE_49__* %2, %struct.TYPE_49__** %7, align 8
  store %struct.TYPE_49__** %3, %struct.TYPE_49__*** %8, align 8
  %29 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  store double %31, double* %12, align 8
  %32 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %32, i32 0, i32 0
  store double 0.000000e+00, double* %33, align 8
  %34 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %38 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %45 = call %struct.TYPE_47__* @recurse_set_operations(i32 %36, %struct.TYPE_48__* %37, i32 %40, i32 %43, i32 0, i32 0, %struct.TYPE_49__* %44, %struct.TYPE_49__** %16, double* %22)
  store %struct.TYPE_47__* %45, %struct.TYPE_47__** %10, align 8
  %46 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_49__*, %struct.TYPE_49__** %47, align 8
  store %struct.TYPE_49__* %48, %struct.TYPE_49__** %13, align 8
  %49 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %53 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %60 = call %struct.TYPE_47__* @recurse_set_operations(i32 %51, %struct.TYPE_48__* %52, i32 %55, i32 %58, i32 0, i32 1, %struct.TYPE_49__* %59, %struct.TYPE_49__** %17, double* %23)
  store %struct.TYPE_47__* %60, %struct.TYPE_47__** %11, align 8
  %61 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_49__*, %struct.TYPE_49__** %62, align 8
  store %struct.TYPE_49__* %63, %struct.TYPE_49__** %14, align 8
  %64 = load double, double* %12, align 8
  %65 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %65, i32 0, i32 0
  store double %64, double* %66, align 8
  %67 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 129
  br i1 %70, label %75, label %71

71:                                               ; preds = %4
  %72 = load double, double* %22, align 8
  %73 = load double, double* %23, align 8
  %74 = fcmp ole double %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71, %4
  %76 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %77 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %78 = call %struct.TYPE_49__* @list_make2(%struct.TYPE_49__* %76, %struct.TYPE_49__* %77)
  store %struct.TYPE_49__* %78, %struct.TYPE_49__** %21, align 8
  %79 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %80 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %81 = call %struct.TYPE_49__* @list_make2(%struct.TYPE_49__* %79, %struct.TYPE_49__* %80)
  store %struct.TYPE_49__* %81, %struct.TYPE_49__** %18, align 8
  store i32 0, i32* %28, align 4
  br label %89

82:                                               ; preds = %71
  %83 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %84 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %85 = call %struct.TYPE_49__* @list_make2(%struct.TYPE_49__* %83, %struct.TYPE_49__* %84)
  store %struct.TYPE_49__* %85, %struct.TYPE_49__** %21, align 8
  %86 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %87 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %88 = call %struct.TYPE_49__* @list_make2(%struct.TYPE_49__* %86, %struct.TYPE_49__* %87)
  store %struct.TYPE_49__* %88, %struct.TYPE_49__** %18, align 8
  store i32 1, i32* %28, align 4
  br label %89

89:                                               ; preds = %82, %75
  %90 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_49__*, %struct.TYPE_49__** %18, align 8
  %97 = load %struct.TYPE_49__*, %struct.TYPE_49__** %7, align 8
  %98 = call %struct.TYPE_49__* @generate_append_tlist(i32 %92, i32 %95, i32 1, %struct.TYPE_49__* %96, %struct.TYPE_49__* %97)
  store %struct.TYPE_49__* %98, %struct.TYPE_49__** %19, align 8
  %99 = load %struct.TYPE_49__*, %struct.TYPE_49__** %19, align 8
  %100 = load %struct.TYPE_49__**, %struct.TYPE_49__*** %8, align 8
  store %struct.TYPE_49__* %99, %struct.TYPE_49__** %100, align 8
  %101 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %102 = load i32, i32* @UPPERREL_SETOP, align 4
  %103 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @bms_union(i32 %105, i32 %108)
  %110 = call %struct.TYPE_47__* @fetch_upper_rel(%struct.TYPE_48__* %101, i32 %102, i32 %109)
  store %struct.TYPE_47__* %110, %struct.TYPE_47__** %9, align 8
  %111 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %112 = load %struct.TYPE_49__*, %struct.TYPE_49__** %19, align 8
  %113 = call i32 @create_pathtarget(%struct.TYPE_48__* %111, %struct.TYPE_49__* %112)
  %114 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %117 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %118 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %119 = load i32, i32* @NIL, align 4
  %120 = load i32, i32* @NIL, align 4
  %121 = load i32, i32* @NIL, align 4
  %122 = call i64 @create_append_path(%struct.TYPE_48__* %116, %struct.TYPE_47__* %117, %struct.TYPE_49__* %118, i32 %119, i32 %120, i32* null, i32 0, i32 0, i32 %121, i32 -1)
  %123 = inttoptr i64 %122 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %123, %struct.TYPE_49__** %15, align 8
  %124 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %125 = load %struct.TYPE_49__*, %struct.TYPE_49__** %19, align 8
  %126 = call %struct.TYPE_49__* @generate_setop_grouplist(%struct.TYPE_46__* %124, %struct.TYPE_49__* %125)
  store %struct.TYPE_49__* %126, %struct.TYPE_49__** %20, align 8
  %127 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 129
  br i1 %130, label %131, label %145

131:                                              ; preds = %89
  %132 = load double, double* %22, align 8
  store double %132, double* %24, align 8
  %133 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %138, i32 0, i32 0
  %140 = load double, double* %139, align 8
  br label %143

141:                                              ; preds = %131
  %142 = load double, double* %24, align 8
  br label %143

143:                                              ; preds = %141, %137
  %144 = phi double [ %140, %137 ], [ %142, %141 ]
  store double %144, double* %25, align 8
  br label %165

145:                                              ; preds = %89
  %146 = load double, double* %22, align 8
  %147 = load double, double* %23, align 8
  %148 = call double @Min(double %146, double %147)
  store double %148, double* %24, align 8
  %149 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %145
  %154 = load %struct.TYPE_49__*, %struct.TYPE_49__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %154, i32 0, i32 0
  %156 = load double, double* %155, align 8
  %157 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %157, i32 0, i32 0
  %159 = load double, double* %158, align 8
  %160 = call double @Min(double %156, double %159)
  br label %163

161:                                              ; preds = %145
  %162 = load double, double* %24, align 8
  br label %163

163:                                              ; preds = %161, %153
  %164 = phi double [ %160, %153 ], [ %162, %161 ]
  store double %164, double* %25, align 8
  br label %165

165:                                              ; preds = %163, %143
  %166 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %167 = load %struct.TYPE_49__*, %struct.TYPE_49__** %20, align 8
  %168 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %169 = load double, double* %24, align 8
  %170 = load double, double* %25, align 8
  %171 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 128
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %177 = call i32 @choose_hashed_setop(%struct.TYPE_48__* %166, %struct.TYPE_49__* %167, %struct.TYPE_49__* %168, double %169, double %170, i8* %176)
  store i32 %177, i32* %26, align 4
  %178 = load %struct.TYPE_49__*, %struct.TYPE_49__** %20, align 8
  %179 = icmp ne %struct.TYPE_49__* %178, null
  br i1 %179, label %180, label %193

180:                                              ; preds = %165
  %181 = load i32, i32* %26, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %180
  %184 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %185 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %186 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %187 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %188 = load %struct.TYPE_49__*, %struct.TYPE_49__** %20, align 8
  %189 = load %struct.TYPE_49__*, %struct.TYPE_49__** %19, align 8
  %190 = call i32 @make_pathkeys_for_sortclauses(%struct.TYPE_48__* %187, %struct.TYPE_49__* %188, %struct.TYPE_49__* %189)
  %191 = call i64 @create_sort_path(%struct.TYPE_48__* %184, %struct.TYPE_47__* %185, %struct.TYPE_49__* %186, i32 %190, double -1.000000e+00)
  %192 = inttoptr i64 %191 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %192, %struct.TYPE_49__** %15, align 8
  br label %193

193:                                              ; preds = %183, %180, %165
  %194 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  switch i32 %196, label %219 [
    i32 128, label %197
    i32 129, label %208
  ]

197:                                              ; preds = %193
  %198 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i32, i32* @SETOPCMD_INTERSECT_ALL, align 4
  br label %206

204:                                              ; preds = %197
  %205 = load i32, i32* @SETOPCMD_INTERSECT, align 4
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  store i32 %207, i32* %27, align 4
  br label %226

208:                                              ; preds = %193
  %209 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i32, i32* @SETOPCMD_EXCEPT_ALL, align 4
  br label %217

215:                                              ; preds = %208
  %216 = load i32, i32* @SETOPCMD_EXCEPT, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  store i32 %218, i32* %27, align 4
  br label %226

219:                                              ; preds = %193
  %220 = load i32, i32* @ERROR, align 4
  %221 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @elog(i32 %220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @SETOPCMD_INTERSECT, align 4
  store i32 %225, i32* %27, align 4
  br label %226

226:                                              ; preds = %219, %217, %206
  %227 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %228 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %229 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %230 = load i32, i32* %27, align 4
  %231 = load i32, i32* %26, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = load i32, i32* @SETOP_HASHED, align 4
  br label %237

235:                                              ; preds = %226
  %236 = load i32, i32* @SETOP_SORTED, align 4
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i32 [ %234, %233 ], [ %236, %235 ]
  %239 = load %struct.TYPE_49__*, %struct.TYPE_49__** %20, align 8
  %240 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i64 @list_length(i32 %242)
  %244 = add nsw i64 %243, 1
  %245 = load i32, i32* %26, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %237
  %248 = load i32, i32* %28, align 4
  br label %250

249:                                              ; preds = %237
  br label %250

250:                                              ; preds = %249, %247
  %251 = phi i32 [ %248, %247 ], [ -1, %249 ]
  %252 = load double, double* %24, align 8
  %253 = load double, double* %25, align 8
  %254 = call i64 @create_setop_path(%struct.TYPE_48__* %227, %struct.TYPE_47__* %228, %struct.TYPE_49__* %229, i32 %230, i32 %238, %struct.TYPE_49__* %239, i64 %244, i32 %251, double %252, double %253)
  %255 = inttoptr i64 %254 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %255, %struct.TYPE_49__** %15, align 8
  %256 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %256, i32 0, i32 0
  %258 = load double, double* %257, align 8
  %259 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %259, i32 0, i32 0
  store double %258, double* %260, align 8
  %261 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %262 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %263 = call i32 @add_path(%struct.TYPE_47__* %261, %struct.TYPE_49__* %262)
  %264 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  ret %struct.TYPE_47__* %264
}

declare dso_local %struct.TYPE_47__* @recurse_set_operations(i32, %struct.TYPE_48__*, i32, i32, i32, i32, %struct.TYPE_49__*, %struct.TYPE_49__**, double*) #1

declare dso_local %struct.TYPE_49__* @list_make2(%struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local %struct.TYPE_49__* @generate_append_tlist(i32, i32, i32, %struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local %struct.TYPE_47__* @fetch_upper_rel(%struct.TYPE_48__*, i32, i32) #1

declare dso_local i32 @bms_union(i32, i32) #1

declare dso_local i32 @create_pathtarget(%struct.TYPE_48__*, %struct.TYPE_49__*) #1

declare dso_local i64 @create_append_path(%struct.TYPE_48__*, %struct.TYPE_47__*, %struct.TYPE_49__*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_49__* @generate_setop_grouplist(%struct.TYPE_46__*, %struct.TYPE_49__*) #1

declare dso_local double @Min(double, double) #1

declare dso_local i32 @choose_hashed_setop(%struct.TYPE_48__*, %struct.TYPE_49__*, %struct.TYPE_49__*, double, double, i8*) #1

declare dso_local i64 @create_sort_path(%struct.TYPE_48__*, %struct.TYPE_47__*, %struct.TYPE_49__*, i32, double) #1

declare dso_local i32 @make_pathkeys_for_sortclauses(%struct.TYPE_48__*, %struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @create_setop_path(%struct.TYPE_48__*, %struct.TYPE_47__*, %struct.TYPE_49__*, i32, i32, %struct.TYPE_49__*, i64, i32, double, double) #1

declare dso_local i64 @list_length(i32) #1

declare dso_local i32 @add_path(%struct.TYPE_47__*, %struct.TYPE_49__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
