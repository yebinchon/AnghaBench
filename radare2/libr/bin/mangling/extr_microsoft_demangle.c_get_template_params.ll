; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_microsoft_demangle.c_get_template_params.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_microsoft_demangle.c_get_template_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@eDemanglerErrOK = common dso_local global i32 0, align 4
@__const.get_template_params.template_param = private unnamed_addr constant [20 x i8] c"template-parameter-\00", align 16
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@eDemanglerErrUncorrectMangledSymbol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%sE%d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"{%d, %d}\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"{%d, %d, %d}\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"{%s, %s}\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"{%s, %s, %s}\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"non-type-%s%s\00", align 1
@eDemanglerErrUnsupportedMangling = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_template_params(i8* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca [20 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** %2, i8*** %6, align 8
  %31 = load i32, i32* @eDemanglerErrOK, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @init_state_struct(%struct.TYPE_4__* %8, i8* %32)
  %34 = bitcast [20 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.get_template_params.template_param, i32 0, i32 0), i64 20, i1 false)
  store i8* null, i8** %11, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %50 = load i8*, i8** %11, align 8
  %51 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %10, align 8
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %48, %38
  br label %264

56:                                               ; preds = %3
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @strncmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @eDemanglerErrUncorrectMangledSymbol, align 4
  store i32 %61, i32* %7, align 4
  br label %275

62:                                               ; preds = %56
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %65, align 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %68, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = call i64 @strncmp(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %62
  %75 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @atoi(i8* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %78, %74
  br label %263

86:                                               ; preds = %62
  %87 = load i8*, i8** %4, align 8
  %88 = call i64 @strncmp(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %86
  %91 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %91, i8** %13, align 8
  %92 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %92, i8** %14, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i8*, i8** %14, align 8
  %100 = call i32 @atoi(i8* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %101, i32 %102)
  store i8* %103, i8** %11, align 8
  br label %104

104:                                              ; preds = %98, %95, %90
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @free(i8* %107)
  br label %262

109:                                              ; preds = %86
  %110 = load i8*, i8** %4, align 8
  %111 = call i64 @strncmp(i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %109
  %114 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %114, i8** %11, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %119 = load i8*, i8** %11, align 8
  %120 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %118, i8* %119)
  store i8* %120, i8** %10, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i8*, i8** %10, align 8
  store i8* %123, i8** %11, align 8
  br label %124

124:                                              ; preds = %117, %113
  br label %261

125:                                              ; preds = %109
  %126 = load i8*, i8** %4, align 8
  %127 = call i64 @strncmp(i8* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %150, label %129

129:                                              ; preds = %125
  %130 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %130, i8** %16, align 8
  %131 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %131, i8** %17, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load i8*, i8** %17, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i8*, i8** %16, align 8
  %139 = call i32 @atoi(i8* %138)
  store i32 %139, i32* %18, align 4
  %140 = load i8*, i8** %17, align 8
  %141 = call i32 @atoi(i8* %140)
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %19, align 4
  %144 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %142, i32 %143)
  store i8* %144, i8** %11, align 8
  br label %145

145:                                              ; preds = %137, %134, %129
  %146 = load i8*, i8** %16, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i8*, i8** %17, align 8
  %149 = call i32 @free(i8* %148)
  br label %260

150:                                              ; preds = %125
  %151 = load i8*, i8** %4, align 8
  %152 = call i64 @strncmp(i8* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %184, label %154

154:                                              ; preds = %150
  %155 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %155, i8** %20, align 8
  %156 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %156, i8** %21, align 8
  %157 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %157, i8** %22, align 8
  %158 = load i8*, i8** %20, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %177

160:                                              ; preds = %154
  %161 = load i8*, i8** %21, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load i8*, i8** %22, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load i8*, i8** %20, align 8
  %168 = call i32 @atoi(i8* %167)
  store i32 %168, i32* %23, align 4
  %169 = load i8*, i8** %21, align 8
  %170 = call i32 @atoi(i8* %169)
  store i32 %170, i32* %24, align 4
  %171 = load i8*, i8** %22, align 8
  %172 = call i32 @atoi(i8* %171)
  store i32 %172, i32* %25, align 4
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* %25, align 4
  %176 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %173, i32 %174, i32 %175)
  store i8* %176, i8** %11, align 8
  br label %177

177:                                              ; preds = %166, %163, %160, %154
  %178 = load i8*, i8** %20, align 8
  %179 = call i32 @free(i8* %178)
  %180 = load i8*, i8** %21, align 8
  %181 = call i32 @free(i8* %180)
  %182 = load i8*, i8** %22, align 8
  %183 = call i32 @free(i8* %182)
  br label %259

184:                                              ; preds = %150
  %185 = load i8*, i8** %4, align 8
  %186 = call i64 @strncmp(i8* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %189, i8** %11, align 8
  br label %258

190:                                              ; preds = %184
  %191 = load i8*, i8** %4, align 8
  %192 = call i64 @strncmp(i8* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %211, label %194

194:                                              ; preds = %190
  %195 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %195, i8** %26, align 8
  %196 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %196, i8** %27, align 8
  %197 = load i8*, i8** %26, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load i8*, i8** %27, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load i8*, i8** %26, align 8
  %204 = load i8*, i8** %27, align 8
  %205 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %203, i8* %204)
  store i8* %205, i8** %11, align 8
  br label %206

206:                                              ; preds = %202, %199, %194
  %207 = load i8*, i8** %26, align 8
  %208 = call i32 @free(i8* %207)
  %209 = load i8*, i8** %27, align 8
  %210 = call i32 @free(i8* %209)
  br label %257

211:                                              ; preds = %190
  %212 = load i8*, i8** %4, align 8
  %213 = call i64 @strncmp(i8* %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 1)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %239, label %215

215:                                              ; preds = %211
  %216 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %216, i8** %28, align 8
  %217 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %217, i8** %29, align 8
  %218 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %218, i8** %30, align 8
  %219 = load i8*, i8** %28, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %232

221:                                              ; preds = %215
  %222 = load i8*, i8** %29, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %232

224:                                              ; preds = %221
  %225 = load i8*, i8** %30, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load i8*, i8** %28, align 8
  %229 = load i8*, i8** %29, align 8
  %230 = load i8*, i8** %30, align 8
  %231 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %228, i8* %229, i8* %230)
  store i8* %231, i8** %11, align 8
  br label %232

232:                                              ; preds = %227, %224, %221, %215
  %233 = load i8*, i8** %28, align 8
  %234 = call i32 @free(i8* %233)
  %235 = load i8*, i8** %29, align 8
  %236 = call i32 @free(i8* %235)
  %237 = load i8*, i8** %30, align 8
  %238 = call i32 @free(i8* %237)
  br label %256

239:                                              ; preds = %211
  %240 = load i8*, i8** %4, align 8
  %241 = call i64 @strncmp(i8* %240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 1)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %255, label %243

243:                                              ; preds = %239
  %244 = call i8* @get_num(%struct.TYPE_4__* %8)
  store i8* %244, i8** %11, align 8
  %245 = load i8*, i8** %11, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %249 = load i8*, i8** %11, align 8
  %250 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %248, i8* %249)
  store i8* %250, i8** %10, align 8
  %251 = load i8*, i8** %11, align 8
  %252 = call i32 @free(i8* %251)
  %253 = load i8*, i8** %10, align 8
  store i8* %253, i8** %11, align 8
  br label %254

254:                                              ; preds = %247, %243
  br label %255

255:                                              ; preds = %254, %239
  br label %256

256:                                              ; preds = %255, %232
  br label %257

257:                                              ; preds = %256, %206
  br label %258

258:                                              ; preds = %257, %188
  br label %259

259:                                              ; preds = %258, %177
  br label %260

260:                                              ; preds = %259, %145
  br label %261

261:                                              ; preds = %260, %124
  br label %262

262:                                              ; preds = %261, %104
  br label %263

263:                                              ; preds = %262, %85
  br label %264

264:                                              ; preds = %263, %55
  %265 = load i8*, i8** %11, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %264
  %268 = load i32, i32* @eDemanglerErrUnsupportedMangling, align 4
  store i32 %268, i32* %7, align 4
  br label %275

269:                                              ; preds = %264
  %270 = load i8*, i8** %11, align 8
  %271 = load i8**, i8*** %6, align 8
  store i8* %270, i8** %271, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %5, align 8
  store i32 %273, i32* %274, align 4
  br label %275

275:                                              ; preds = %269, %267, %60
  %276 = load i32, i32* %7, align 4
  ret i32 %276
}

declare dso_local i32 @init_state_struct(%struct.TYPE_4__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @get_num(%struct.TYPE_4__*) #1

declare dso_local i8* @r_str_newf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
