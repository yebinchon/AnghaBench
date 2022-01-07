; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cconfig.c_cb_asmarch.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cconfig.c_cb_asmarch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__*, i32, %struct.TYPE_18__*, %struct.TYPE_21__*, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i8* }

@R_SYS_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"asm.os\00", align 1
@R_SYS_OS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"asm.arch: cannot find (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"asm.cpu\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s.pseudo\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"asm.parser\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"asm.bits\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"anal.arch\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"cfg.bigendian\00", align 1
@R_ANAL_ARCHINFO_ALIGN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"asm.pcalign\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cb_asmarch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_asmarch(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %8, align 8
  store i8* null, i8** %9, align 8
  %25 = load i32, i32* @R_SYS_BITS, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %33 = icmp ne %struct.TYPE_22__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = icmp ne %struct.TYPE_18__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %31, %2
  store i32 0, i32* %3, align 4
  br label %422

40:                                               ; preds = %34
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @r_config_get(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %9, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %46 = icmp ne %struct.TYPE_22__* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %40
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = icmp ne %struct.TYPE_19__* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %59, %52, %47, %40
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 63
  br i1 %72, label %73, label %101

73:                                               ; preds = %65
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %76 = call i32 @update_asmarch_options(%struct.TYPE_22__* %74, %struct.TYPE_23__* %75)
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %98

82:                                               ; preds = %73
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 63
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @rasm2_list(%struct.TYPE_22__* %91, i32* null, i8 signext %96)
  store i32 0, i32* %3, align 4
  br label %422

98:                                               ; preds = %82, %73
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %100 = call i32 @print_node_options(%struct.TYPE_23__* %99)
  store i32 0, i32* %3, align 4
  br label %422

101:                                              ; preds = %65
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @R_SYS_OS, align 4
  %110 = call i32 @r_egg_setup(i32 %104, i8* %107, i32 %108, i32 0, i32 %109)
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @r_asm_use(%struct.TYPE_18__* %113, i8* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %101
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  store i32 0, i32* %3, align 4
  br label %422

124:                                              ; preds = %101
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @r_config_get(i32 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %129 = call i8* @strdup(i8* %128)
  store i8* %129, i8** %11, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  %135 = icmp ne %struct.TYPE_20__* %134, null
  br i1 %135, label %136, label %214

136:                                              ; preds = %124
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %12, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %188

146:                                              ; preds = %136
  %147 = load i8*, i8** %12, align 8
  %148 = load i8, i8* %147, align 1
  %149 = icmp ne i8 %148, 0
  br i1 %149, label %150, label %182

150:                                              ; preds = %146
  %151 = load i8*, i8** %12, align 8
  %152 = call i8* @strdup(i8* %151)
  store i8* %152, i8** %13, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = call i8* @strchr(i8* %153, i8 signext 44)
  store i8* %154, i8** %14, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %179

157:                                              ; preds = %150
  %158 = load i8*, i8** %11, align 8
  %159 = load i8, i8* %158, align 1
  %160 = icmp ne i8 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %157
  %162 = load i8*, i8** %11, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = load i8*, i8** %13, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @strstr(i8* %167, i8* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %166, %157
  %172 = load i8*, i8** %14, align 8
  store i8 0, i8* %172, align 1
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = call i32 @r_config_set(i32 %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %171, %166, %161
  br label %179

179:                                              ; preds = %178, %150
  %180 = load i8*, i8** %13, align 8
  %181 = call i32 @free(i8* %180)
  br label %187

182:                                              ; preds = %146
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @r_config_set(i32 %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %187

187:                                              ; preds = %182, %179
  br label %188

188:                                              ; preds = %187, %136
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = and i32 8, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %188
  store i32 8, i32* %10, align 4
  br label %213

200:                                              ; preds = %188
  %201 = load i32, i32* %10, align 4
  %202 = and i32 16, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store i32 16, i32* %10, align 4
  br label %212

205:                                              ; preds = %200
  %206 = load i32, i32* %10, align 4
  %207 = and i32 32, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  store i32 32, i32* %10, align 4
  br label %211

210:                                              ; preds = %205
  store i32 64, i32* %10, align 4
  br label %211

211:                                              ; preds = %210, %209
  br label %212

212:                                              ; preds = %211, %204
  br label %213

213:                                              ; preds = %212, %199
  br label %214

214:                                              ; preds = %213, %124
  %215 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @snprintf(i8* %215, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %218)
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %224 = call i32 @r_config_set(i32 %222, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %223)
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %228, align 8
  %230 = icmp ne %struct.TYPE_20__* %229, null
  br i1 %230, label %231, label %257

231:                                              ; preds = %214
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %233, align 8
  %235 = icmp ne %struct.TYPE_19__* %234, null
  br i1 %235, label %236, label %257

236:                                              ; preds = %231
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %243, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %236
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %10, align 4
  %256 = call i32 @r_config_set_i(i32 %254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %251, %236, %231, %214
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = load i32, i32* %10, align 4
  %265 = call i32 @r_debug_set_arch(i32 %260, i8* %263, i32 %264)
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @r_config_set(i32 %268, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %304, label %274

274:                                              ; preds = %257
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i8* @strdup(i8* %277)
  store i8* %278, i8** %16, align 8
  %279 = load i8*, i8** %16, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %303

281:                                              ; preds = %274
  %282 = load i8*, i8** %16, align 8
  %283 = call i8* @strchr(i8* %282, i8 signext 46)
  store i8* %283, i8** %15, align 8
  %284 = load i8*, i8** %15, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i8*, i8** %15, align 8
  store i8 0, i8* %287, align 1
  br label %288

288:                                              ; preds = %286, %281
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i8*, i8** %16, align 8
  %293 = call i32 @r_config_set(i32 %291, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %300, label %295

295:                                              ; preds = %288
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @r_config_set(i32 %298, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %300

300:                                              ; preds = %295, %288
  %301 = load i8*, i8** %16, align 8
  %302 = call i32 @free(i8* %301)
  br label %303

303:                                              ; preds = %300, %274
  br label %304

304:                                              ; preds = %303, %257
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %306, align 8
  %308 = icmp ne %struct.TYPE_19__* %307, null
  br i1 %308, label %309, label %333

309:                                              ; preds = %304
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = call i8* @r_config_get(i32 %312, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %313, i8** %17, align 8
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i8*, i8** %17, align 8
  %328 = load i8*, i8** %9, align 8
  %329 = call i32 @r_syscall_setup(i32 %318, i8* %321, i32 %326, i8* %327, i8* %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %332, label %331

331:                                              ; preds = %309
  br label %332

332:                                              ; preds = %331, %309
  br label %333

333:                                              ; preds = %332, %304
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 0
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 2
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @__setsegoff(i32 %336, i8* %339, i32 %344)
  %346 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @r_bin_is_big_endian(i32 %348)
  store i32 %349, i32* %18, align 4
  %350 = load i32, i32* %18, align 4
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %352, label %357

352:                                              ; preds = %333
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @r_config_get_i(i32 %355, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 %356, i32* %18, align 4
  br label %357

357:                                              ; preds = %352, %333
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %359, align 8
  %361 = load i32, i32* %18, align 4
  %362 = call i32 @r_asm_set_big_endian(%struct.TYPE_18__* %360, i32 %361)
  %363 = load i32, i32* %18, align 4
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 3
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 0
  store i32 %363, i32* %367, align 4
  %368 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 2
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %369, align 8
  %371 = load i8*, i8** %11, align 8
  %372 = call i32 @r_asm_set_cpu(%struct.TYPE_18__* %370, i8* %371)
  %373 = load i8*, i8** %11, align 8
  %374 = call i32 @free(i8* %373)
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = call %struct.TYPE_23__* @r_config_node_get(i32 %377, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_23__* %378, %struct.TYPE_23__** %19, align 8
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %380 = icmp ne %struct.TYPE_23__* %379, null
  br i1 %380, label %381, label %385

381:                                              ; preds = %357
  %382 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %384 = call i32 @update_asmcpu_options(%struct.TYPE_22__* %382, %struct.TYPE_23__* %383)
  br label %385

385:                                              ; preds = %381, %357
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 0
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** %387, align 8
  %389 = load i32, i32* @R_ANAL_ARCHINFO_ALIGN, align 4
  %390 = call i32 @r_anal_archinfo(%struct.TYPE_19__* %388, i32 %389)
  store i32 %390, i32* %20, align 4
  %391 = load i32, i32* %20, align 4
  %392 = icmp ne i32 %391, -1
  br i1 %392, label %393, label %399

393:                                              ; preds = %385
  %394 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* %20, align 4
  %398 = call i32 @r_config_set_i(i32 %396, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %397)
  br label %404

399:                                              ; preds = %385
  %400 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @r_config_set_i(i32 %402, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 0)
  br label %404

404:                                              ; preds = %399, %393
  %405 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %406, align 8
  %408 = icmp ne %struct.TYPE_19__* %407, null
  br i1 %408, label %409, label %416

409:                                              ; preds = %404
  %410 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %410, i32 0, i32 0
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %419, label %416

416:                                              ; preds = %409, %404
  %417 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %418 = call i32 @r_core_anal_type_init(%struct.TYPE_22__* %417)
  br label %419

419:                                              ; preds = %416, %409
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %421 = call i32 @r_core_anal_cc_init(%struct.TYPE_22__* %420)
  store i32 1, i32* %3, align 4
  br label %422

422:                                              ; preds = %419, %119, %98, %90, %39
  %423 = load i32, i32* %3, align 4
  ret i32 %423
}

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @update_asmarch_options(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @rasm2_list(%struct.TYPE_22__*, i32*, i8 signext) #1

declare dso_local i32 @print_node_options(%struct.TYPE_23__*) #1

declare dso_local i32 @r_egg_setup(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @r_asm_use(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @r_config_set(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @r_config_set_i(i32, i8*, i32) #1

declare dso_local i32 @r_debug_set_arch(i32, i8*, i32) #1

declare dso_local i32 @r_syscall_setup(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @__setsegoff(i32, i8*, i32) #1

declare dso_local i32 @r_bin_is_big_endian(i32) #1

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_asm_set_big_endian(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @r_asm_set_cpu(%struct.TYPE_18__*, i8*) #1

declare dso_local %struct.TYPE_23__* @r_config_node_get(i32, i8*) #1

declare dso_local i32 @update_asmcpu_options(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @r_anal_archinfo(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @r_core_anal_type_init(%struct.TYPE_22__*) #1

declare dso_local i32 @r_core_anal_cc_init(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
