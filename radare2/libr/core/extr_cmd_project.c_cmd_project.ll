; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_project.c_cmd_project.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_project.c_cmd_project.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"prj.name\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Usage: Pc [prjname]\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"& Po %s\00", align 1
@R_CORE_PRJ_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Usage: PS [file]\0A\00", align 1
@help_msg_Pn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"No project\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Cannot open %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Deleted %d lines\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"cfg.editor\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"No cfg.editor configured\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Usage: `Pnj` or `Pnj ...`\0A\00", align 1
@help_msg_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_project to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_project(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %6, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @r_config_get(i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %442

42:                                               ; preds = %2
  %43 = load i8*, i8** %9, align 8
  %44 = call i8* @strdup(i8* %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 32)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %68

52:                                               ; preds = %42
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 38
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  br label %66

66:                                               ; preds = %63, %56
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67, %49
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  switch i32 %73, label %435 [
    i32 99, label %74
    i32 111, label %88
    i32 100, label %121
    i32 45, label %121
    i32 115, label %125
    i32 83, label %144
    i32 110, label %159
    i32 105, label %412
    i32 0, label %429
    i32 106, label %429
  ]

74:                                               ; preds = %68
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = call i32 @r_core_project_cat(%struct.TYPE_13__* %81, i8* %83)
  br label %87

85:                                               ; preds = %74
  %86 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %80
  br label %439

88:                                               ; preds = %68
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 38
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @r_core_cmdf(%struct.TYPE_13__* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  br label %120

98:                                               ; preds = %88
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @r_core_project_open(%struct.TYPE_13__* %104, i8* %105, i32 0)
  br label %119

107:                                              ; preds = %98
  %108 = load i8*, i8** %7, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i8*, i8** %7, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @r_cons_println(i8* %116)
  br label %118

118:                                              ; preds = %115, %110, %107
  br label %119

119:                                              ; preds = %118, %103
  br label %120

120:                                              ; preds = %119, %94
  br label %439

121:                                              ; preds = %68, %68
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @r_core_project_delete(%struct.TYPE_13__* %122, i8* %123)
  br label %439

125:                                              ; preds = %68
  %126 = load i8*, i8** %7, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %128, %125
  %134 = load i8*, i8** %10, align 8
  store i8* %134, i8** %7, align 8
  br label %135

135:                                              ; preds = %133, %128
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @r_core_project_save(%struct.TYPE_13__* %136, i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @r_cons_println(i8* %141)
  br label %143

143:                                              ; preds = %140, %135
  br label %439

144:                                              ; preds = %68
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 32
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  %154 = load i32, i32* @R_CORE_PRJ_ALL, align 4
  %155 = call i32 @r_core_project_save_rdb(%struct.TYPE_13__* %151, i8* %153, i32 %154)
  br label %158

156:                                              ; preds = %144
  %157 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %150
  br label %439

159:                                              ; preds = %68
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 63
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %167 = load i32, i32* @help_msg_Pn, align 4
  %168 = call i32 @r_core_cmd_help(%struct.TYPE_13__* %166, i32 %167)
  br label %411

169:                                              ; preds = %159
  %170 = load i8*, i8** %9, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i8*, i8** %9, align 8
  %174 = load i8, i8* %173, align 1
  %175 = icmp ne i8 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172, %169
  %177 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %410

178:                                              ; preds = %172
  %179 = load i8*, i8** %5, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  switch i32 %182, label %409 [
    i32 45, label %183
    i32 32, label %243
    i32 43, label %304
    i32 106, label %325
    i32 120, label %389
    i32 0, label %393
  ]

183:                                              ; preds = %178
  %184 = load i8*, i8** %10, align 8
  %185 = call i32* @r_sandbox_fopen(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %185, i32** %11, align 8
  %186 = load i32*, i32** %11, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = load i8*, i8** %10, align 8
  %190 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %189)
  br label %242

191:                                              ; preds = %183
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = call i8* @r_core_project_notes_file(%struct.TYPE_13__* %192, i8* %193)
  store i8* %194, i8** %12, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = call i8* @r_file_slurp(i8* %195, i32* null)
  store i8* %196, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %197 = load i8*, i8** %13, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %231

199:                                              ; preds = %191
  %200 = load i8*, i8** %13, align 8
  store i8* %200, i8** %15, align 8
  br label %201

201:                                              ; preds = %226, %199
  %202 = load i8*, i8** %15, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %228

204:                                              ; preds = %201
  %205 = load i8*, i8** %15, align 8
  %206 = call i8* @strchr(i8* %205, i8 signext 10)
  store i8* %206, i8** %16, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %225

209:                                              ; preds = %204
  %210 = load i8*, i8** %16, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %16, align 8
  store i8 0, i8* %210, align 1
  %212 = load i8*, i8** %15, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 2
  %215 = call i32 @strstr(i8* %212, i8* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load i32, i32* %14, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %14, align 4
  br label %224

220:                                              ; preds = %209
  %221 = load i32*, i32** %11, align 8
  %222 = load i8*, i8** %15, align 8
  %223 = call i32 @fprintf(i32* %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %222)
  br label %224

224:                                              ; preds = %220, %217
  br label %225

225:                                              ; preds = %224, %204
  br label %226

226:                                              ; preds = %225
  %227 = load i8*, i8** %16, align 8
  store i8* %227, i8** %15, align 8
  br label %201

228:                                              ; preds = %201
  %229 = load i8*, i8** %13, align 8
  %230 = call i32 @free(i8* %229)
  br label %231

231:                                              ; preds = %228, %191
  %232 = load i32, i32* %14, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i32, i32* %14, align 4
  %236 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %234, %231
  %238 = load i8*, i8** %12, align 8
  %239 = call i32 @free(i8* %238)
  %240 = load i32*, i32** %11, align 8
  %241 = call i32 @fclose(i32* %240)
  br label %242

242:                                              ; preds = %237, %188
  br label %409

243:                                              ; preds = %178
  %244 = load i8*, i8** %5, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 2
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 45
  br i1 %248, label %249, label %281

249:                                              ; preds = %243
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %251 = load i8*, i8** %9, align 8
  %252 = call i8* @r_core_project_notes_file(%struct.TYPE_13__* %250, i8* %251)
  store i8* %252, i8** %17, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @r_config_get(i32 %255, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i8* %256, i8** %18, align 8
  %257 = load i8*, i8** %17, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %276

259:                                              ; preds = %249
  %260 = load i8*, i8** %17, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %276

264:                                              ; preds = %259
  %265 = load i8*, i8** %18, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %276

267:                                              ; preds = %264
  %268 = load i8*, i8** %18, align 8
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = load i8*, i8** %18, align 8
  %274 = load i8*, i8** %17, align 8
  %275 = call i32 @r_sys_cmdf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %273, i8* %274)
  br label %278

276:                                              ; preds = %267, %264, %259, %249
  %277 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %272
  %279 = load i8*, i8** %17, align 8
  %280 = call i32 @free(i8* %279)
  br label %303

281:                                              ; preds = %243
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %283 = load i8*, i8** %9, align 8
  %284 = call i8* @r_core_project_notes_file(%struct.TYPE_13__* %282, i8* %283)
  store i8* %284, i8** %19, align 8
  %285 = load i8*, i8** %19, align 8
  %286 = call i8* @r_file_slurp(i8* %285, i32* null)
  store i8* %286, i8** %20, align 8
  %287 = load i8*, i8** %19, align 8
  %288 = call i32* @r_sandbox_fopen(i8* %287, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32* %288, i32** %21, align 8
  %289 = load i32*, i32** %21, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %298

291:                                              ; preds = %281
  %292 = load i32*, i32** %21, align 8
  %293 = load i8*, i8** %5, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 2
  %295 = call i32 @fprintf(i32* %292, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %294)
  %296 = load i32*, i32** %21, align 8
  %297 = call i32 @fclose(i32* %296)
  br label %298

298:                                              ; preds = %291, %281
  %299 = load i8*, i8** %19, align 8
  %300 = call i32 @free(i8* %299)
  %301 = load i8*, i8** %20, align 8
  %302 = call i32 @free(i8* %301)
  br label %303

303:                                              ; preds = %298, %278
  br label %409

304:                                              ; preds = %178
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %306 = load i8*, i8** %9, align 8
  %307 = call i8* @r_core_project_notes_file(%struct.TYPE_13__* %305, i8* %306)
  store i8* %307, i8** %22, align 8
  %308 = load i8*, i8** %22, align 8
  %309 = call i8* @r_file_slurp(i8* %308, i32* null)
  store i8* %309, i8** %23, align 8
  %310 = load i8*, i8** %23, align 8
  %311 = load i8*, i8** %5, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 2
  %313 = call i8* @r_str_append(i8* %310, i8* %312)
  store i8* %313, i8** %23, align 8
  %314 = load i8*, i8** %23, align 8
  %315 = call i8* @r_str_append(i8* %314, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i8* %315, i8** %23, align 8
  %316 = load i8*, i8** %22, align 8
  %317 = load i8*, i8** %23, align 8
  %318 = load i8*, i8** %23, align 8
  %319 = call i32 @strlen(i8* %318)
  %320 = call i32 @r_file_dump(i8* %316, i8* %317, i32 %319, i32 0)
  %321 = load i8*, i8** %23, align 8
  %322 = call i32 @free(i8* %321)
  %323 = load i8*, i8** %22, align 8
  %324 = call i32 @free(i8* %323)
  br label %409

325:                                              ; preds = %178
  %326 = load i8*, i8** %5, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 2
  %328 = load i8, i8* %327, align 1
  %329 = icmp ne i8 %328, 0
  br i1 %329, label %355, label %330

330:                                              ; preds = %325
  store i32 0, i32* %24, align 4
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %332 = load i8*, i8** %9, align 8
  %333 = call i8* @r_core_project_notes_file(%struct.TYPE_13__* %331, i8* %332)
  store i8* %333, i8** %25, align 8
  %334 = load i8*, i8** %25, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %354

336:                                              ; preds = %330
  %337 = load i8*, i8** %25, align 8
  %338 = call i8* @r_file_slurp(i8* %337, i32* %24)
  store i8* %338, i8** %26, align 8
  %339 = load i8*, i8** %26, align 8
  %340 = load i32, i32* %24, align 4
  %341 = call i8* @r_base64_encode_dyn(i8* %339, i32 %340)
  store i8* %341, i8** %27, align 8
  %342 = load i8*, i8** %27, align 8
  %343 = icmp ne i8* %342, null
  br i1 %343, label %344, label %349

344:                                              ; preds = %336
  %345 = load i8*, i8** %27, align 8
  %346 = call i32 @r_cons_println(i8* %345)
  %347 = load i8*, i8** %27, align 8
  %348 = call i32 @free(i8* %347)
  br label %349

349:                                              ; preds = %344, %336
  %350 = load i8*, i8** %26, align 8
  %351 = call i32 @free(i8* %350)
  %352 = load i8*, i8** %25, align 8
  %353 = call i32 @free(i8* %352)
  br label %354

354:                                              ; preds = %349, %330
  br label %388

355:                                              ; preds = %325
  %356 = load i8*, i8** %5, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 2
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp eq i32 %359, 32
  br i1 %360, label %361, label %385

361:                                              ; preds = %355
  %362 = load i8*, i8** %5, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 3
  %364 = call i8* @r_base64_decode_dyn(i8* %363, i32 -1)
  store i8* %364, i8** %28, align 8
  %365 = load i8*, i8** %28, align 8
  %366 = icmp ne i8* %365, null
  br i1 %366, label %367, label %384

367:                                              ; preds = %361
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %369 = load i8*, i8** %9, align 8
  %370 = call i8* @r_core_project_notes_file(%struct.TYPE_13__* %368, i8* %369)
  store i8* %370, i8** %29, align 8
  %371 = load i8*, i8** %29, align 8
  %372 = icmp ne i8* %371, null
  br i1 %372, label %373, label %381

373:                                              ; preds = %367
  %374 = load i8*, i8** %29, align 8
  %375 = load i8*, i8** %28, align 8
  %376 = load i8*, i8** %28, align 8
  %377 = call i32 @strlen(i8* %376)
  %378 = call i32 @r_file_dump(i8* %374, i8* %375, i32 %377, i32 0)
  %379 = load i8*, i8** %29, align 8
  %380 = call i32 @free(i8* %379)
  br label %381

381:                                              ; preds = %373, %367
  %382 = load i8*, i8** %28, align 8
  %383 = call i32 @free(i8* %382)
  br label %384

384:                                              ; preds = %381, %361
  br label %387

385:                                              ; preds = %355
  %386 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %387

387:                                              ; preds = %385, %384
  br label %388

388:                                              ; preds = %387, %354
  br label %409

389:                                              ; preds = %178
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %391 = load i8*, i8** %9, align 8
  %392 = call i32 @r_core_project_execute_cmds(%struct.TYPE_13__* %390, i8* %391)
  br label %409

393:                                              ; preds = %178
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %395 = load i8*, i8** %9, align 8
  %396 = call i8* @r_core_project_notes_file(%struct.TYPE_13__* %394, i8* %395)
  store i8* %396, i8** %30, align 8
  %397 = load i8*, i8** %30, align 8
  %398 = call i8* @r_file_slurp(i8* %397, i32* null)
  store i8* %398, i8** %31, align 8
  %399 = load i8*, i8** %31, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %401, label %406

401:                                              ; preds = %393
  %402 = load i8*, i8** %31, align 8
  %403 = call i32 @r_cons_println(i8* %402)
  %404 = load i8*, i8** %31, align 8
  %405 = call i32 @free(i8* %404)
  br label %406

406:                                              ; preds = %401, %393
  %407 = load i8*, i8** %30, align 8
  %408 = call i32 @free(i8* %407)
  br label %409

409:                                              ; preds = %178, %406, %389, %388, %304, %303, %242
  br label %410

410:                                              ; preds = %409, %176
  br label %411

411:                                              ; preds = %410, %165
  br label %439

412:                                              ; preds = %68
  %413 = load i8*, i8** %7, align 8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %415, label %428

415:                                              ; preds = %412
  %416 = load i8*, i8** %7, align 8
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %428

420:                                              ; preds = %415
  %421 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %422 = load i8*, i8** %7, align 8
  %423 = call i8* @r_core_project_info(%struct.TYPE_13__* %421, i8* %422)
  store i8* %423, i8** %32, align 8
  %424 = load i8*, i8** %32, align 8
  %425 = call i32 @r_cons_println(i8* %424)
  %426 = load i8*, i8** %32, align 8
  %427 = call i32 @free(i8* %426)
  br label %428

428:                                              ; preds = %420, %415, %412
  br label %439

429:                                              ; preds = %68, %68
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %431 = load i8*, i8** %5, align 8
  %432 = getelementptr inbounds i8, i8* %431, i64 0
  %433 = load i8, i8* %432, align 1
  %434 = call i32 @r_core_project_list(%struct.TYPE_13__* %430, i8 signext %433)
  br label %439

435:                                              ; preds = %68
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %437 = load i32, i32* @help_msg_P, align 4
  %438 = call i32 @r_core_cmd_help(%struct.TYPE_13__* %436, i32 %437)
  br label %439

439:                                              ; preds = %435, %429, %428, %411, %158, %143, %121, %120, %87
  %440 = load i8*, i8** %10, align 8
  %441 = call i32 @free(i8* %440)
  store i32 1, i32* %3, align 4
  br label %442

442:                                              ; preds = %439, %41
  %443 = load i32, i32* %3, align 4
  ret i32 %443
}

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_core_project_cat(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_core_cmdf(%struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @r_core_project_open(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @r_cons_println(i8*) #1

declare dso_local i32 @r_core_project_delete(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @r_core_project_save(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @r_core_project_save_rdb(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @r_sandbox_fopen(i8*, i8*) #1

declare dso_local i8* @r_core_project_notes_file(%struct.TYPE_13__*, i8*) #1

declare dso_local i8* @r_file_slurp(i8*, i32*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @r_sys_cmdf(i8*, i8*, i8*) #1

declare dso_local i8* @r_str_append(i8*, i8*) #1

declare dso_local i32 @r_file_dump(i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @r_base64_encode_dyn(i8*, i32) #1

declare dso_local i8* @r_base64_decode_dyn(i8*, i32) #1

declare dso_local i32 @r_core_project_execute_cmds(%struct.TYPE_13__*, i8*) #1

declare dso_local i8* @r_core_project_info(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @r_core_project_list(%struct.TYPE_13__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
