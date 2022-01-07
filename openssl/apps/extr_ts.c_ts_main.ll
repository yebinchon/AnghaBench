; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ts.c_ts_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ts.c_ts_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_config_file = common dso_local global i8* null, align 8
@ts_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@opt_helplist = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error getting password.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %37 = load i8*, i8** @default_config_file, align 8
  store i8* %37, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  store i32* null, i32** %26, align 8
  store i32 148, i32* %28, align 4
  store i32 1, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32* null, i32** %34, align 8
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  %38 = call i32* (...) @X509_VERIFY_PARAM_new()
  store i32* %38, i32** %34, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %282

41:                                               ; preds = %2
  %42 = load i32, i32* %3, align 4
  %43 = load i8**, i8*** %4, align 8
  %44 = load i32, i32* @ts_options, align 4
  %45 = call i8* @opt_init(i32 %42, i8** %43, i32 %44)
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %139, %41
  %47 = call i32 (...) @opt_next()
  store i32 %47, i32* %27, align 4
  %48 = icmp ne i32 %47, 149
  br i1 %48, label %49, label %140

49:                                               ; preds = %46
  %50 = load i32, i32* %27, align 4
  switch i32 %50, label %139 [
    i32 149, label %51
    i32 148, label %51
    i32 147, label %56
    i32 153, label %73
    i32 136, label %75
    i32 140, label %77
    i32 138, label %77
    i32 129, label %77
    i32 152, label %83
    i32 151, label %85
    i32 137, label %87
    i32 131, label %93
    i32 143, label %95
    i32 155, label %96
    i32 146, label %97
    i32 133, label %99
    i32 142, label %100
    i32 132, label %102
    i32 134, label %103
    i32 139, label %104
    i32 141, label %106
    i32 145, label %108
    i32 135, label %110
    i32 154, label %112
    i32 157, label %114
    i32 158, label %116
    i32 156, label %118
    i32 130, label %120
    i32 150, label %122
    i32 144, label %124
    i32 128, label %130
  ]

51:                                               ; preds = %49, %49
  br label %52

52:                                               ; preds = %278, %256, %222, %212, %205, %184, %177, %146, %128, %80, %51
  %53 = load i32, i32* @bio_err, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 (i32, i8*, ...) @BIO_printf(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %54)
  br label %282

56:                                               ; preds = %49
  %57 = load i32, i32* @ts_options, align 4
  %58 = call i32 @opt_help(i32 %57)
  %59 = load i8**, i8*** @opt_helplist, align 8
  store i8** %59, i8*** %12, align 8
  br label %60

60:                                               ; preds = %69, %56
  %61 = load i8**, i8*** %12, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32, i32* @bio_err, align 4
  %66 = load i8**, i8*** %12, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i32, i8*, ...) @BIO_printf(i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %64
  %70 = load i8**, i8*** %12, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %12, align 8
  br label %60

72:                                               ; preds = %60
  store i32 0, i32* %29, align 4
  br label %282

73:                                               ; preds = %49
  %74 = call i8* (...) @opt_arg()
  store i8* %74, i8** %9, align 8
  br label %139

75:                                               ; preds = %49
  %76 = call i8* (...) @opt_arg()
  store i8* %76, i8** %11, align 8
  br label %139

77:                                               ; preds = %49, %49, %49
  %78 = load i32, i32* %28, align 4
  %79 = icmp ne i32 %78, 148
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %52

81:                                               ; preds = %77
  %82 = load i32, i32* %27, align 4
  store i32 %82, i32* %28, align 4
  br label %139

83:                                               ; preds = %49
  %84 = call i8* (...) @opt_arg()
  store i8* %84, i8** %14, align 8
  br label %139

85:                                               ; preds = %49
  %86 = call i8* (...) @opt_arg()
  store i8* %86, i8** %15, align 8
  br label %139

87:                                               ; preds = %49
  %88 = load i32, i32* %27, align 4
  %89 = call i32 @opt_rand(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  br label %282

92:                                               ; preds = %87
  br label %139

93:                                               ; preds = %49
  %94 = call i8* (...) @opt_arg()
  store i8* %94, i8** %16, align 8
  br label %139

95:                                               ; preds = %49
  store i32 1, i32* %30, align 4
  br label %139

96:                                               ; preds = %49
  store i32 1, i32* %31, align 4
  br label %139

97:                                               ; preds = %49
  %98 = call i8* (...) @opt_arg()
  store i8* %98, i8** %17, align 8
  br label %139

99:                                               ; preds = %49
  store i32 1, i32* %35, align 4
  br label %139

100:                                              ; preds = %49
  %101 = call i8* (...) @opt_arg()
  store i8* %101, i8** %18, align 8
  br label %139

102:                                              ; preds = %49
  store i32 1, i32* %36, align 4
  br label %139

103:                                              ; preds = %49
  store i32 1, i32* %32, align 4
  br label %139

104:                                              ; preds = %49
  %105 = call i8* (...) @opt_arg()
  store i8* %105, i8** %19, align 8
  br label %139

106:                                              ; preds = %49
  %107 = call i8* (...) @opt_arg()
  store i8* %107, i8** %20, align 8
  br label %139

108:                                              ; preds = %49
  %109 = call i8* (...) @opt_arg()
  store i8* %109, i8** %21, align 8
  br label %139

110:                                              ; preds = %49
  %111 = call i8* (...) @opt_arg()
  store i8* %111, i8** %22, align 8
  br label %139

112:                                              ; preds = %49
  %113 = call i8* (...) @opt_arg()
  store i8* %113, i8** %23, align 8
  br label %139

114:                                              ; preds = %49
  %115 = call i8* (...) @opt_arg()
  store i8* %115, i8** %24, align 8
  br label %139

116:                                              ; preds = %49
  %117 = call i8* (...) @opt_arg()
  store i8* %117, i8** %6, align 8
  br label %139

118:                                              ; preds = %49
  %119 = call i8* (...) @opt_arg()
  store i8* %119, i8** %25, align 8
  br label %139

120:                                              ; preds = %49
  %121 = call i8* (...) @opt_arg()
  store i8* %121, i8** %7, align 8
  br label %139

122:                                              ; preds = %49
  %123 = call i8* (...) @opt_arg()
  store i8* %123, i8** %10, align 8
  br label %139

124:                                              ; preds = %49
  %125 = call i32 (...) @opt_unknown()
  %126 = call i32 @opt_md(i32 %125, i32** %26)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  br label %52

129:                                              ; preds = %124
  br label %139

130:                                              ; preds = %49
  %131 = load i32, i32* %27, align 4
  %132 = load i32*, i32** %34, align 8
  %133 = call i32 @opt_verify(i32 %131, i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  br label %282

136:                                              ; preds = %130
  %137 = load i32, i32* %33, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %33, align 4
  br label %139

139:                                              ; preds = %49, %136, %129, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %103, %102, %100, %99, %97, %96, %95, %93, %92, %85, %83, %81, %75, %73
  br label %46

140:                                              ; preds = %46
  %141 = load i32, i32* %28, align 4
  %142 = icmp eq i32 %141, 148
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = call i64 (...) @opt_num_rest()
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %140
  br label %52

147:                                              ; preds = %143
  %148 = load i32, i32* %28, align 4
  %149 = icmp eq i32 %148, 138
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load i8*, i8** %20, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i8*, i8** %20, align 8
  %155 = call i32 @app_passwd(i8* %154, i32* null, i8** %13, i32* null)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* @bio_err, align 4
  %159 = call i32 (i32, i8*, ...) @BIO_printf(i32 %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %282

160:                                              ; preds = %153, %150, %147
  %161 = load i8*, i8** %9, align 8
  %162 = call i32* @load_config_file(i8* %161)
  store i32* %162, i32** %5, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = load i8*, i8** @default_config_file, align 8
  %165 = icmp ne i8* %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @app_load_modules(i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  br label %282

171:                                              ; preds = %166, %160
  %172 = load i32, i32* %28, align 4
  %173 = icmp eq i32 %172, 140
  br i1 %173, label %174, label %199

174:                                              ; preds = %171
  %175 = load i32, i32* %33, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %52

178:                                              ; preds = %174
  %179 = load i8*, i8** %14, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i8*, i8** %15, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %52

185:                                              ; preds = %181, %178
  %186 = load i8*, i8** %14, align 8
  %187 = load i8*, i8** %15, align 8
  %188 = load i32*, i32** %26, align 8
  %189 = load i8*, i8** %16, align 8
  %190 = load i32, i32* %30, align 4
  %191 = load i32, i32* %31, align 4
  %192 = load i8*, i8** %17, align 8
  %193 = load i8*, i8** %18, align 8
  %194 = load i32, i32* %32, align 4
  %195 = call i32 @query_command(i8* %186, i8* %187, i32* %188, i8* %189, i32 %190, i32 %191, i8* %192, i8* %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %29, align 4
  br label %281

199:                                              ; preds = %171
  %200 = load i32, i32* %28, align 4
  %201 = icmp eq i32 %200, 138
  br i1 %201, label %202, label %244

202:                                              ; preds = %199
  %203 = load i32, i32* %33, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %52

206:                                              ; preds = %202
  %207 = load i8*, i8** %17, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load i8*, i8** %19, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  br label %52

213:                                              ; preds = %209, %206
  %214 = load i8*, i8** %17, align 8
  %215 = icmp eq i8* %214, null
  br i1 %215, label %216, label %224

216:                                              ; preds = %213
  %217 = load i32*, i32** %5, align 8
  %218 = icmp eq i32* %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %35, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219, %216
  br label %52

223:                                              ; preds = %219
  br label %224

224:                                              ; preds = %223, %213
  %225 = load i32*, i32** %5, align 8
  %226 = load i8*, i8** %11, align 8
  %227 = load i8*, i8** %10, align 8
  %228 = load i8*, i8** %19, align 8
  %229 = load i8*, i8** %13, align 8
  %230 = load i8*, i8** %21, align 8
  %231 = load i32*, i32** %26, align 8
  %232 = load i8*, i8** %22, align 8
  %233 = load i8*, i8** %23, align 8
  %234 = load i8*, i8** %16, align 8
  %235 = load i8*, i8** %17, align 8
  %236 = load i32, i32* %35, align 4
  %237 = load i8*, i8** %18, align 8
  %238 = load i32, i32* %36, align 4
  %239 = load i32, i32* %32, align 4
  %240 = call i32 @reply_command(i32* %225, i8* %226, i8* %227, i8* %228, i8* %229, i8* %230, i32* %231, i8* %232, i8* %233, i8* %234, i8* %235, i32 %236, i8* %237, i32 %238, i32 %239)
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i32
  store i32 %243, i32* %29, align 4
  br label %280

244:                                              ; preds = %199
  %245 = load i32, i32* %28, align 4
  %246 = icmp eq i32 %245, 129
  br i1 %246, label %247, label %278

247:                                              ; preds = %244
  %248 = load i8*, i8** %17, align 8
  %249 = icmp eq i8* %248, null
  br i1 %249, label %256, label %250

250:                                              ; preds = %247
  %251 = load i8*, i8** %19, align 8
  %252 = load i8*, i8** %14, align 8
  %253 = load i8*, i8** %15, align 8
  %254 = call i32 @EXACTLY_ONE(i8* %251, i8* %252, i8* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %250, %247
  br label %52

257:                                              ; preds = %250
  %258 = load i8*, i8** %14, align 8
  %259 = load i8*, i8** %15, align 8
  %260 = load i8*, i8** %19, align 8
  %261 = load i8*, i8** %17, align 8
  %262 = load i32, i32* %35, align 4
  %263 = load i8*, i8** %24, align 8
  %264 = load i8*, i8** %6, align 8
  %265 = load i8*, i8** %25, align 8
  %266 = load i8*, i8** %7, align 8
  %267 = load i32, i32* %33, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %257
  %270 = load i32*, i32** %34, align 8
  br label %272

271:                                              ; preds = %257
  br label %272

272:                                              ; preds = %271, %269
  %273 = phi i32* [ %270, %269 ], [ null, %271 ]
  %274 = call i32 @verify_command(i8* %258, i8* %259, i8* %260, i8* %261, i32 %262, i8* %263, i8* %264, i8* %265, i8* %266, i32* %273)
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  store i32 %277, i32* %29, align 4
  br label %279

278:                                              ; preds = %244
  br label %52

279:                                              ; preds = %272
  br label %280

280:                                              ; preds = %279, %224
  br label %281

281:                                              ; preds = %280, %185
  br label %282

282:                                              ; preds = %281, %170, %157, %135, %91, %72, %52, %40
  %283 = load i32*, i32** %34, align 8
  %284 = call i32 @X509_VERIFY_PARAM_free(i32* %283)
  %285 = load i32*, i32** %5, align 8
  %286 = call i32 @NCONF_free(i32* %285)
  %287 = load i8*, i8** %13, align 8
  %288 = call i32 @OPENSSL_free(i8* %287)
  %289 = load i32, i32* %29, align 4
  ret i32 %289
}

declare dso_local i32* @X509_VERIFY_PARAM_new(...) #1

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_md(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_verify(i32, i32*) #1

declare dso_local i64 @opt_num_rest(...) #1

declare dso_local i32 @app_passwd(i8*, i32*, i8**, i32*) #1

declare dso_local i32* @load_config_file(i8*) #1

declare dso_local i32 @app_load_modules(i32*) #1

declare dso_local i32 @query_command(i8*, i8*, i32*, i8*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @reply_command(i32*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @EXACTLY_ONE(i8*, i8*, i8*) #1

declare dso_local i32 @verify_command(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @X509_VERIFY_PARAM_free(i32*) #1

declare dso_local i32 @NCONF_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
