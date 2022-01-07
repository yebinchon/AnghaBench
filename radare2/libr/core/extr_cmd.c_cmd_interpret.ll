; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_interpret.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_interpret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: .. ([file])\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Usage: '-' '.-' '. -' do the same\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Cannot find script '%s'\0A\00", align 1
@help_msg_dot = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"|ERROR| No .[0..9] to avoid infinite loops\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_interpret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_interpret(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %14, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %196 [
    i32 0, label %27
    i32 58, label %30
    i32 46, label %81
    i32 42, label %113
    i32 45, label %136
    i32 32, label %148
    i32 33, label %179
    i32 40, label %184
    i32 63, label %192
  ]

27:                                               ; preds = %2
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %29 = call i32 @r_core_cmd_repeat(%struct.TYPE_18__* %28, i32 0)
  br label %277

30:                                               ; preds = %2
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i8* @strchr(i8* %32, i8 signext 32)
  store i8* %33, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %75

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %6, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i8* @strchr(i8* %40, i8 signext 58)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %12, align 8
  br label %61

50:                                               ; preds = %35
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 58
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %51, i64 %59
  store i8* %60, i8** %12, align 8
  br label %61

61:                                               ; preds = %50, %44
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i8* @r_core_rtr_cmds_query(%struct.TYPE_18__* %62, i8* %63, i8* %64, i8* %65)
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @r_cons_print(i8* %70)
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %69, %61
  br label %80

75:                                               ; preds = %30
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = call i32 @r_core_rtr_cmds(%struct.TYPE_18__* %76, i8* %78)
  br label %80

80:                                               ; preds = %75, %74
  br label %277

81:                                               ; preds = %2
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 46
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %89 = call i32 @r_core_cmd_repeat(%struct.TYPE_18__* %88, i32 1)
  br label %112

90:                                               ; preds = %81
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = call i8* @r_str_trim_ro(i8* %97)
  %99 = call i8* @r_core_cmd_str_pipe(%struct.TYPE_18__* %96, i8* %98)
  store i8* %99, i8** %15, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = call i32 @r_core_cmd(%struct.TYPE_18__* %103, i8* %104, i32 0)
  %106 = load i8*, i8** %15, align 8
  %107 = call i32 @free(i8* %106)
  br label %108

108:                                              ; preds = %102, %95
  br label %111

109:                                              ; preds = %90
  %110 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %108
  br label %112

112:                                              ; preds = %111, %87
  br label %277

113:                                              ; preds = %2
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = call i8* @r_str_trim_ro(i8* %115)
  store i8* %116, i8** %16, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = call i8* @strdup(i8* %117)
  store i8* %118, i8** %17, align 8
  %119 = load i8*, i8** %17, align 8
  %120 = call i8* @strchr(i8* %119, i8 signext 32)
  store i8* %120, i8** %18, align 8
  %121 = load i8*, i8** %18, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i8*, i8** %18, align 8
  store i8 0, i8* %124, align 1
  br label %125

125:                                              ; preds = %123, %113
  %126 = load i8*, i8** %17, align 8
  %127 = call i32 @R_STR_ISNOTEMPTY(i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %131 = load i8*, i8** %17, align 8
  %132 = call i32 @r_core_run_script(%struct.TYPE_18__* %130, i8* %131)
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i8*, i8** %17, align 8
  %135 = call i32 @free(i8* %134)
  br label %277

136:                                              ; preds = %2
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 63
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = call i32 @r_cons_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %147

144:                                              ; preds = %136
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %146 = call i32 @r_core_run_script(%struct.TYPE_18__* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %142
  br label %277

148:                                              ; preds = %2
  %149 = load i8*, i8** %4, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = call i8* @r_str_trim_ro(i8* %150)
  store i8* %151, i8** %19, align 8
  %152 = load i8*, i8** %19, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 36
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %158 = load i8*, i8** %19, align 8
  %159 = call i32 @r_core_cmd0(%struct.TYPE_18__* %157, i8* %158)
  br label %178

160:                                              ; preds = %148
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %162 = load i8*, i8** %19, align 8
  %163 = call i32 @r_core_run_script(%struct.TYPE_18__* %161, i8* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %160
  %166 = load i8*, i8** %19, align 8
  %167 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %166)
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 4
  br label %177

172:                                              ; preds = %160
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  store i32 0, i32* %176, align 4
  br label %177

177:                                              ; preds = %172, %165
  br label %178

178:                                              ; preds = %177, %156
  br label %277

179:                                              ; preds = %2
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %181 = load i8*, i8** %4, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = call i32 @r_core_cmd_command(%struct.TYPE_18__* %180, i8* %182)
  br label %277

184:                                              ; preds = %2
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i8*, i8** %4, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = call i32 @r_cmd_macro_call(i32* %188, i8* %190)
  br label %277

192:                                              ; preds = %2
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %194 = load i32, i32* @help_msg_dot, align 4
  %195 = call i32 @r_core_cmd_help(%struct.TYPE_18__* %193, i32 %194)
  br label %277

196:                                              ; preds = %2
  %197 = load i8*, i8** %4, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp sge i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load i8*, i8** %4, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp sle i32 %204, 9
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %277

208:                                              ; preds = %201, %196
  %209 = load i8*, i8** %4, align 8
  %210 = call i8* @strdup(i8* %209)
  store i8* %210, i8** %10, align 8
  %211 = load i8*, i8** %10, align 8
  %212 = call i8* @strchr(i8* %211, i8 signext 126)
  store i8* %212, i8** %9, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = load i8*, i8** %9, align 8
  store i8 0, i8* %216, align 1
  br label %217

217:                                              ; preds = %215, %208
  %218 = call %struct.TYPE_15__* (...) @r_cons_singleton()
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %20, align 4
  %221 = call %struct.TYPE_15__* (...) @r_cons_singleton()
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  store i32 0, i32* %222, align 4
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = call i8* @r_core_cmd_str(%struct.TYPE_18__* %223, i8* %224)
  store i8* %225, i8** %5, align 8
  store i8* %225, i8** %6, align 8
  %226 = load i32, i32* %20, align 4
  %227 = call %struct.TYPE_15__* (...) @r_cons_singleton()
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 4
  %229 = load i8*, i8** %9, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %217
  %232 = load i8*, i8** %9, align 8
  store i8 126, i8* %232, align 1
  br label %233

233:                                              ; preds = %231, %217
  %234 = call i32 @r_cons_break_push(i32* null, i32* null)
  %235 = load i8*, i8** %6, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %271

237:                                              ; preds = %233
  br label %238

238:                                              ; preds = %267, %237
  %239 = call i32 (...) @r_cons_is_breaked()
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  br label %270

242:                                              ; preds = %238
  %243 = load i8*, i8** %6, align 8
  %244 = call i8* @strchr(i8* %243, i8 signext 10)
  store i8* %244, i8** %7, align 8
  %245 = load i8*, i8** %7, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i8*, i8** %7, align 8
  store i8 0, i8* %248, align 1
  br label %249

249:                                              ; preds = %247, %242
  %250 = load i8*, i8** %6, align 8
  %251 = load i8, i8* %250, align 1
  %252 = icmp ne i8 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %249
  %254 = load i8*, i8** %6, align 8
  %255 = call i8* @strdup(i8* %254)
  %256 = load i8*, i8** %9, align 8
  %257 = call i8* @r_str_append(i8* %255, i8* %256)
  store i8* %257, i8** %21, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %259 = load i8*, i8** %21, align 8
  %260 = call i32 @r_core_cmd0(%struct.TYPE_18__* %258, i8* %259)
  %261 = load i8*, i8** %21, align 8
  %262 = call i32 @free(i8* %261)
  br label %263

263:                                              ; preds = %253, %249
  %264 = load i8*, i8** %7, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %263
  br label %270

267:                                              ; preds = %263
  %268 = load i8*, i8** %7, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  store i8* %269, i8** %6, align 8
  br label %238

270:                                              ; preds = %266, %241
  br label %271

271:                                              ; preds = %270, %233
  %272 = call i32 (...) @r_cons_break_pop()
  %273 = load i8*, i8** %5, align 8
  %274 = call i32 @free(i8* %273)
  %275 = load i8*, i8** %10, align 8
  %276 = call i32 @free(i8* %275)
  br label %277

277:                                              ; preds = %271, %206, %192, %184, %179, %178, %147, %133, %112, %80, %27
  ret i32 0
}

declare dso_local i32 @r_core_cmd_repeat(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_core_rtr_cmds_query(%struct.TYPE_18__*, i8*, i8*, i8*) #1

declare dso_local i32 @r_cons_print(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_core_rtr_cmds(%struct.TYPE_18__*, i8*) #1

declare dso_local i8* @r_core_cmd_str_pipe(%struct.TYPE_18__*, i8*) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @r_core_cmd(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @R_STR_ISNOTEMPTY(i8*) #1

declare dso_local i32 @r_core_run_script(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @r_cons_printf(i8*) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @r_core_cmd_command(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @r_cmd_macro_call(i32*, i8*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_15__* @r_cons_singleton(...) #1

declare dso_local i8* @r_core_cmd_str(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @r_cons_break_push(i32*, i32*) #1

declare dso_local i32 @r_cons_is_breaked(...) #1

declare dso_local i8* @r_str_append(i8*, i8*) #1

declare dso_local i32 @r_cons_break_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
