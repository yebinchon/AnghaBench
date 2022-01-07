; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_cmd_prc.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_cmd_prc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i8, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 (i32, i64, i32)* }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c" .,:;!O@#\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"scr.square\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"hex.cols\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"scr.color\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"asm.flags\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"hex.section\00", align 1
@R_PRINT_FLAGS_UNALLOC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%20s \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@colormap = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"rgb:%s rgb:%06x\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"fff\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"000\00", align 1
@Color_RESET = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"%s%c%c\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64*, i32)* @cmd_prc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_prc(%struct.TYPE_10__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @r_config_get_i(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @r_config_get_i(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %33, i32* %14, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @r_config_get_i(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %15, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @r_config_get_i(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %41, i32* %16, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @r_config_get_i(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %45, i32* %17, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %18, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @R_PRINT_FLAGS_UNALLOC, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %63, label %60

60:                                               ; preds = %3
  %61 = load i32, i32* %14, align 4
  %62 = icmp sgt i32 %61, 1048575
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %3
  store i32 32, i32* %14, align 4
  br label %64

64:                                               ; preds = %63, %60
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %297, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %301

69:                                               ; preds = %65
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i8* @r_core_get_section_name(%struct.TYPE_10__* %73, i64 %79)
  store i8* %80, i8** %20, align 8
  %81 = load i8*, i8** %20, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i8*, i8** %20, align 8
  br label %86

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i8* [ %84, %83 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %85 ]
  %88 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %69
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = call i32 @r_print_addr(%struct.TYPE_11__* %92, i64 %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %286, %89
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %289

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %289

112:                                              ; preds = %107
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %159

115:                                              ; preds = %112
  %116 = load i32*, i32** @colormap, align 8
  %117 = load i64*, i64** %5, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %116, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = and i32 %124, 16711680
  %126 = ashr i32 %125, 16
  %127 = load i32, i32* %21, align 4
  %128 = and i32 %127, 65280
  %129 = ashr i32 %128, 8
  %130 = mul nsw i32 2, %129
  %131 = add nsw i32 %126, %130
  %132 = load i32, i32* %21, align 4
  %133 = and i32 %132, 255
  %134 = sdiv i32 %133, 2
  %135 = add nsw i32 %131, %134
  store i32 %135, i32* %22, align 4
  %136 = load i32, i32* %22, align 4
  %137 = icmp sle i32 %136, 381
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %140 = load i32, i32* %21, align 4
  %141 = call i8* @r_str_newf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %139, i32 %140)
  store i8* %141, i8** %23, align 8
  %142 = load i8*, i8** %23, align 8
  %143 = call i8* @r_cons_pal_parse(i8* %142, i32* null)
  store i8* %143, i8** %13, align 8
  %144 = load i8*, i8** %23, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %115
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store i8 95, i8* %11, align 1
  br label %158

157:                                              ; preds = %148, %115
  store i8 32, i8* %11, align 1
  br label %158

158:                                              ; preds = %157, %156
  br label %192

159:                                              ; preds = %112
  %160 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  store i8* %160, i8** %13, align 8
  %161 = load i32, i32* %18, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  store i8 95, i8* %11, align 1
  br label %191

172:                                              ; preds = %163, %159
  %173 = load i64*, i64** %5, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = uitofp i64 %177 to float
  %179 = fdiv float %178, 2.550000e+02
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @strlen(i8* %180)
  %182 = sub nsw i32 %181, 1
  %183 = sitofp i32 %182 to float
  %184 = fmul float %179, %183
  %185 = fptosi float %184 to i32
  store i32 %185, i32* %24, align 4
  %186 = load i8*, i8** %7, align 8
  %187 = load i32, i32* %24, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  store i8 %190, i8* %11, align 1
  br label %191

191:                                              ; preds = %172, %171
  br label %192

192:                                              ; preds = %191, %158
  %193 = load i32, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %236

195:                                              ; preds = %192
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %200, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %210, %212
  %214 = call i32 %201(i32 %207, i64 %213, i32 0)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %236, label %216

216:                                              ; preds = %195
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %216
  %220 = load i8*, i8** %13, align 8
  %221 = call i32 @free(i8* %220)
  %222 = load i8*, i8** @Color_RESET, align 8
  %223 = call i8* @strdup(i8* %222)
  store i8* %223, i8** %13, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 3
  %228 = load i8, i8* %227, align 4
  store i8 %228, i8* %11, align 1
  %229 = load i8, i8* %11, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 32
  br i1 %231, label %232, label %233

232:                                              ; preds = %219
  store i8 46, i8* %11, align 1
  br label %233

233:                                              ; preds = %232, %219
  br label %235

234:                                              ; preds = %216
  store i8 63, i8* %11, align 1
  br label %235

235:                                              ; preds = %234, %233
  br label %236

236:                                              ; preds = %235, %195, %192
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %278

239:                                              ; preds = %236
  %240 = load i32, i32* %16, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %269

242:                                              ; preds = %239
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %248, %250
  %252 = call %struct.TYPE_9__* @r_flag_get_i(i32 %245, i64 %251)
  store %struct.TYPE_9__* %252, %struct.TYPE_9__** %25, align 8
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %254 = icmp ne %struct.TYPE_9__* %253, null
  br i1 %254, label %255, label %266

255:                                              ; preds = %242
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 0
  %260 = load i8, i8* %259, align 1
  store i8 %260, i8* %11, align 1
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  %265 = load i8, i8* %264, align 1
  store i8 %265, i8* %12, align 1
  br label %268

266:                                              ; preds = %242
  %267 = load i8, i8* %11, align 1
  store i8 %267, i8* %12, align 1
  br label %268

268:                                              ; preds = %266, %255
  br label %271

269:                                              ; preds = %239
  %270 = load i8, i8* %11, align 1
  store i8 %270, i8* %12, align 1
  br label %271

271:                                              ; preds = %269, %268
  %272 = load i8*, i8** %13, align 8
  %273 = load i8, i8* %11, align 1
  %274 = sext i8 %273 to i32
  %275 = load i8, i8* %12, align 1
  %276 = sext i8 %275 to i32
  %277 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %272, i32 %274, i32 %276)
  br label %283

278:                                              ; preds = %236
  %279 = load i8*, i8** %13, align 8
  %280 = load i8, i8* %11, align 1
  %281 = sext i8 %280 to i32
  %282 = call i32 (i8*, ...) @r_cons_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %279, i32 %281)
  br label %283

283:                                              ; preds = %278, %271
  %284 = load i8*, i8** %13, align 8
  %285 = call i32 @free(i8* %284)
  br label %286

286:                                              ; preds = %283
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %10, align 4
  br label %101

289:                                              ; preds = %111, %101
  %290 = load i32, i32* %15, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i8*, i8** @Color_RESET, align 8
  %294 = call i32 (i8*, ...) @r_cons_printf(i8* %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = call i32 (...) @r_cons_newline()
  br label %297

297:                                              ; preds = %295
  %298 = load i32, i32* %14, align 4
  %299 = load i32, i32* %9, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %9, align 4
  br label %65

301:                                              ; preds = %65
  ret void
}

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i8* @r_core_get_section_name(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @r_cons_printf(i8*, ...) #1

declare dso_local i32 @r_print_addr(%struct.TYPE_11__*, i64) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i32) #1

declare dso_local i8* @r_cons_pal_parse(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_9__* @r_flag_get_i(i32, i64) #1

declare dso_local i32 @r_cons_newline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
