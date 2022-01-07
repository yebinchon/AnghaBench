; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cbin.c_set_bin_relocs.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cbin.c_set_bin_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"bin.demangle\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bin.demangle.libs\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bin.lang\00", align 1
@R_FLAG_NAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Ordinal\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c".dll_Ordinal_\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s.sdb\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@R2_SDB_FORMAT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"dll\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%s.%s.%s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@R_META_TYPE_DATA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"%s.reloc.%s\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"reloc.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32**, i8**)* @set_bin_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_bin_relocs(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2, i32** %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @r_config_get_i(i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @r_config_get_i(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @r_config_get(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %41, i8** %13, align 8
  store i8* null, i8** %15, align 8
  store i32 1, i32* %16, align 4
  %42 = call i32 @r_sandbox_enable(i32 0)
  store i32 %42, i32* %17, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %47, label %297

47:                                               ; preds = %5
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %297

57:                                               ; preds = %47
  %58 = load i32, i32* @R_FLAG_NAME_SIZE, align 4
  %59 = zext i32 %58 to i64
  %60 = call i8* @llvm.stacksave()
  store i8* %60, i8** %18, align 8
  %61 = alloca i8, i64 %59, align 16
  store i64 %59, i64* %19, align 8
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %215

64:                                               ; preds = %57
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %215, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strstr(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %215

75:                                               ; preds = %67
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @strdup(i8* %80)
  store i8* %81, i8** %22, align 8
  %82 = load i8*, i8** %22, align 8
  %83 = load i8*, i8** %21, align 8
  %84 = call i8* @strstr(i8* %82, i8* %83)
  store i8* %84, i8** %23, align 8
  %85 = load i8*, i8** %22, align 8
  %86 = call i32 @r_str_case(i8* %85, i32 0)
  %87 = load i8*, i8** %23, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %193

89:                                               ; preds = %75
  store i8* null, i8** %24, align 8
  %90 = load i8*, i8** %23, align 8
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %21, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = load i8*, i8** %23, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %23, align 8
  %96 = load i8*, i8** %23, align 8
  %97 = call i32 @atoi(i8* %96)
  store i32 %97, i32* %25, align 4
  %98 = load i8**, i8*** %10, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = load i8*, i8** %22, align 8
  %103 = load i8**, i8*** %10, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcmp(i8* %102, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %147

107:                                              ; preds = %101, %89
  %108 = load i32**, i32*** %9, align 8
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @sdb_free(i32* %109)
  %111 = load i32**, i32*** %9, align 8
  store i32* null, i32** %111, align 8
  %112 = load i8**, i8*** %10, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i8*, i8** %22, align 8
  %116 = call i8* @strdup(i8* %115)
  %117 = load i8**, i8*** %10, align 8
  store i8* %116, i8** %117, align 8
  %118 = load i8*, i8** %22, align 8
  %119 = call i8* (i8*, i8*, ...) @sdb_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  store i8* %119, i8** %24, align 8
  %120 = load i8*, i8** %24, align 8
  %121 = call i32 @r_str_case(i8* %120, i32 0)
  %122 = load i8*, i8** %24, align 8
  %123 = call i64 @r_file_exists(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %107
  %126 = load i8*, i8** %24, align 8
  %127 = call i32* @sdb_new(i32* null, i8* %126, i32 0)
  %128 = load i32**, i32*** %9, align 8
  store i32* %127, i32** %128, align 8
  br label %146

129:                                              ; preds = %107
  %130 = call i8* @r_sys_prefix(i32* null)
  store i8* %130, i8** %26, align 8
  %131 = load i32, i32* @R2_SDB_FORMAT, align 4
  %132 = call i32 @R_JOIN_4_PATHS(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = load i8*, i8** %26, align 8
  %136 = load i8*, i8** %22, align 8
  %137 = call i8* (i8*, i8*, ...) @sdb_fmt(i8* %134, i8* %135, i8* %136)
  store i8* %137, i8** %24, align 8
  %138 = load i8*, i8** %24, align 8
  %139 = call i64 @r_file_exists(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %129
  %142 = load i8*, i8** %24, align 8
  %143 = call i32* @sdb_new(i32* null, i8* %142, i32 0)
  %144 = load i32**, i32*** %9, align 8
  store i32* %143, i32** %144, align 8
  br label %145

145:                                              ; preds = %141, %129
  br label %146

146:                                              ; preds = %145, %125
  br label %147

147:                                              ; preds = %146, %101
  %148 = load i32**, i32*** %9, align 8
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %192

151:                                              ; preds = %147
  %152 = load i32**, i32*** %9, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = load i8*, i8** %22, align 8
  %155 = load i32, i32* %25, align 4
  %156 = sub nsw i32 %155, 1
  %157 = call i8* @resolveModuleOrdinal(i32* %153, i8* %154, i32 %156)
  store i8* %157, i8** %27, align 8
  %158 = load i8*, i8** %27, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %191

160:                                              ; preds = %151
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %180

167:                                              ; preds = %160
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** %22, align 8
  %174 = load i8*, i8** %27, align 8
  %175 = call i8* (i8*, i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %172, i8* %173, i8* %174)
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i8* %175, i8** %179, align 8
  br label %188

180:                                              ; preds = %160
  %181 = load i8*, i8** %22, align 8
  %182 = load i8*, i8** %27, align 8
  %183 = call i8* (i8*, i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %181, i8* %182)
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  store i8* %183, i8** %187, align 8
  br label %188

188:                                              ; preds = %180, %167
  %189 = load i8*, i8** %27, align 8
  %190 = call i32 @R_FREE(i8* %189)
  br label %191

191:                                              ; preds = %188, %151
  br label %192

192:                                              ; preds = %191, %147
  br label %193

193:                                              ; preds = %192, %75
  %194 = load i8*, i8** %22, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @r_anal_hint_set_size(i32 %198, i64 %201, i32 4)
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @R_META_TYPE_DATA, align 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, 4
  %214 = call i32 @r_meta_add(i32 %205, i32 %206, i64 %209, i64 %213, i32* null)
  br label %215

215:                                              ; preds = %193, %67, %64, %57
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  store i8* %220, i8** %14, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %236

227:                                              ; preds = %215
  %228 = load i32, i32* @R_FLAG_NAME_SIZE, align 4
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = load i8*, i8** %14, align 8
  %235 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %61, i32 %228, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %233, i8* %234)
  br label %240

236:                                              ; preds = %215
  %237 = load i32, i32* @R_FLAG_NAME_SIZE, align 4
  %238 = load i8*, i8** %14, align 8
  %239 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %61, i32 %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %238)
  br label %240

240:                                              ; preds = %236, %227
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %260

243:                                              ; preds = %240
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i8*, i8** %13, align 8
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %12, align 4
  %252 = call i8* @r_bin_demangle(i32 %248, i8* %249, i8* %61, i32 %250, i32 %251)
  store i8* %252, i8** %15, align 8
  %253 = load i8*, i8** %15, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %259

255:                                              ; preds = %243
  %256 = load i32, i32* @R_FLAG_NAME_SIZE, align 4
  %257 = load i8*, i8** %15, align 8
  %258 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %61, i32 %256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %257)
  br label %259

259:                                              ; preds = %255, %243
  br label %260

260:                                              ; preds = %259, %240
  %261 = call i32 @r_name_filter(i8* %61, i32 0)
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %267 = call i32 @bin_reloc_size(%struct.TYPE_13__* %266)
  %268 = call i32* @r_flag_set(i32 %264, i8* %61, i32 %265, i32 %267)
  store i32* %268, i32** %20, align 8
  %269 = load i8*, i8** %15, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %293

271:                                              ; preds = %260
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %286

278:                                              ; preds = %271
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = load i8*, i8** %15, align 8
  %285 = call i8* (i8*, i8*, ...) @sdb_fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %283, i8* %284)
  store i8* %285, i8** %28, align 8
  br label %289

286:                                              ; preds = %271
  %287 = load i8*, i8** %15, align 8
  %288 = call i8* (i8*, i8*, ...) @sdb_fmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %287)
  store i8* %288, i8** %28, align 8
  br label %289

289:                                              ; preds = %286, %278
  %290 = load i32*, i32** %20, align 8
  %291 = load i8*, i8** %28, align 8
  %292 = call i32 @r_flag_item_set_realname(i32* %290, i8* %291)
  br label %293

293:                                              ; preds = %289, %260
  %294 = load i8*, i8** %15, align 8
  %295 = call i32 @free(i8* %294)
  %296 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %296)
  br label %315

297:                                              ; preds = %47, %5
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %300 = load i32, i32* %8, align 4
  %301 = call i8* @get_reloc_name(%struct.TYPE_12__* %298, %struct.TYPE_13__* %299, i32 %300)
  store i8* %301, i8** %29, align 8
  %302 = load i8*, i8** %29, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %313

304:                                              ; preds = %297
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i8*, i8** %29, align 8
  %309 = load i32, i32* %8, align 4
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %311 = call i32 @bin_reloc_size(%struct.TYPE_13__* %310)
  %312 = call i32* @r_flag_set(i32 %307, i8* %308, i32 %309, i32 %311)
  br label %314

313:                                              ; preds = %297
  br label %314

314:                                              ; preds = %313, %304
  br label %315

315:                                              ; preds = %314, %293
  ret void
}

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @r_sandbox_enable(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_str_case(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sdb_free(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @sdb_fmt(i8*, i8*, ...) #1

declare dso_local i64 @r_file_exists(i8*) #1

declare dso_local i32* @sdb_new(i32*, i8*, i32) #1

declare dso_local i8* @r_sys_prefix(i32*) #1

declare dso_local i32 @R_JOIN_4_PATHS(i8*, i32, i8*, i8*) #1

declare dso_local i8* @resolveModuleOrdinal(i32*, i8*, i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @r_anal_hint_set_size(i32, i64, i32) #1

declare dso_local i32 @r_meta_add(i32, i32, i64, i64, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @r_bin_demangle(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @r_name_filter(i8*, i32) #1

declare dso_local i32* @r_flag_set(i32, i8*, i32, i32) #1

declare dso_local i32 @bin_reloc_size(%struct.TYPE_13__*) #1

declare dso_local i32 @r_flag_item_set_realname(i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @get_reloc_name(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
