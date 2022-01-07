; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_time.c_s_time_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_time.c_s_time_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SSL_CONNECT_NAME = common dso_local global i8* null, align 8
@SECONDS = common dso_local global i32 0, align 4
@s_time_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@verify_args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: verify depth is %d\0A\00", align 1
@fmt_http_get_cmd_size = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: -www option is too long\0A\00", align 1
@SSL3_VERSION = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@TLS1_1_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"SSL_CIPHER\00", align 1
@SSL_MODE_AUTO_RETRY = common dso_local global i32 0, align 4
@SSL_OP_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Collecting connection statistics for %d seconds\0A\00", align 1
@START = common dso_local global i32 0, align 4
@fmt_http_get_cmd = common dso_local global i32 0, align 4
@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"\0A\0A%d connections in %.2fs; %.2f connections/user sec, bytes read %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"%d connections in %ld real seconds, %ld bytes read per connection\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"\0A\0ANow timing with session id reuse.\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Unable to get connection\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"starting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s_time_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %37 = load i8*, i8** @SSL_CONNECT_NAME, align 8
  store i8* %37, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store double 0.000000e+00, double* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %38 = load i32, i32* @SECONDS, align 4
  store i32 %38, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 3, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i32 0, i32* %28, align 4
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %39 = call i32* (...) @TLS_client_method()
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* @s_time_options, align 4
  %43 = call i8* @opt_init(i32 %40, i8** %41, i32 %42)
  store i8* %43, i8** %18, align 8
  br label %44

44:                                               ; preds = %129, %2
  %45 = call i32 (...) @opt_next()
  store i32 %45, i32* %31, align 4
  %46 = icmp ne i32 %45, 145
  br i1 %46, label %47, label %130

47:                                               ; preds = %44
  %48 = load i32, i32* %31, align 4
  switch i32 %48, label %129 [
    i32 145, label %49
    i32 144, label %49
    i32 143, label %54
    i32 146, label %57
    i32 136, label %59
    i32 140, label %60
    i32 129, label %61
    i32 149, label %71
    i32 141, label %73
    i32 142, label %79
    i32 151, label %81
    i32 152, label %83
    i32 138, label %85
    i32 139, label %86
    i32 150, label %87
    i32 137, label %89
    i32 148, label %90
    i32 147, label %92
    i32 153, label %94
    i32 134, label %95
    i32 128, label %101
    i32 135, label %114
    i32 133, label %117
    i32 132, label %120
    i32 131, label %123
    i32 130, label %126
  ]

49:                                               ; preds = %47, %47
  br label %50

50:                                               ; preds = %134, %99, %65, %49
  %51 = load i32, i32* @bio_err, align 4
  %52 = load i8*, i8** %18, align 8
  %53 = call i32 (i32, i8*, ...) @BIO_printf(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %52)
  br label %488

54:                                               ; preds = %47
  %55 = load i32, i32* @s_time_options, align 4
  %56 = call i32 @opt_help(i32 %55)
  store i32 0, i32* %26, align 4
  br label %488

57:                                               ; preds = %47
  %58 = call i8* (...) @opt_arg()
  store i8* %58, i8** %15, align 8
  br label %129

59:                                               ; preds = %47
  store i32 2, i32* %25, align 4
  br label %129

60:                                               ; preds = %47
  store i32 1, i32* %25, align 4
  br label %129

61:                                               ; preds = %47
  %62 = call i8* (...) @opt_arg()
  %63 = call i32 @opt_int(i8* %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %50

66:                                               ; preds = %61
  %67 = load i32, i32* @bio_err, align 4
  %68 = load i8*, i8** %18, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @verify_args, i32 0, i32 0), align 4
  %70 = call i32 (i32, i8*, ...) @BIO_printf(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %68, i32 %69)
  br label %129

71:                                               ; preds = %47
  %72 = call i8* (...) @opt_arg()
  store i8* %72, i8** %16, align 8
  br label %129

73:                                               ; preds = %47
  %74 = call i8* (...) @opt_arg()
  %75 = call i32 @set_nameopt(i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %488

78:                                               ; preds = %73
  br label %129

79:                                               ; preds = %47
  %80 = call i8* (...) @opt_arg()
  store i8* %80, i8** %17, align 8
  br label %129

81:                                               ; preds = %47
  %82 = call i8* (...) @opt_arg()
  store i8* %82, i8** %9, align 8
  br label %129

83:                                               ; preds = %47
  %84 = call i8* (...) @opt_arg()
  store i8* %84, i8** %10, align 8
  br label %129

85:                                               ; preds = %47
  store i32 1, i32* %20, align 4
  br label %129

86:                                               ; preds = %47
  store i32 1, i32* %21, align 4
  br label %129

87:                                               ; preds = %47
  %88 = call i8* (...) @opt_arg()
  store i8* %88, i8** %11, align 8
  br label %129

89:                                               ; preds = %47
  store i32 1, i32* %22, align 4
  br label %129

90:                                               ; preds = %47
  %91 = call i8* (...) @opt_arg()
  store i8* %91, i8** %12, align 8
  br label %129

92:                                               ; preds = %47
  %93 = call i8* (...) @opt_arg()
  store i8* %93, i8** %13, align 8
  br label %129

94:                                               ; preds = %47
  store i32 1, i32* %28, align 4
  br label %129

95:                                               ; preds = %47
  %96 = call i8* (...) @opt_arg()
  %97 = call i32 @opt_int(i8* %96, i32* %23)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  br label %50

100:                                              ; preds = %95
  br label %129

101:                                              ; preds = %47
  %102 = call i8* (...) @opt_arg()
  store i8* %102, i8** %14, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = call i64 @strlen(i8* %103)
  %105 = load i64, i64* @fmt_http_get_cmd_size, align 8
  %106 = add i64 %104, %105
  store i64 %106, i64* %36, align 8
  %107 = load i64, i64* %36, align 8
  %108 = icmp ugt i64 %107, 8192
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i32, i32* @bio_err, align 4
  %111 = load i8*, i8** %18, align 8
  %112 = call i32 (i32, i8*, ...) @BIO_printf(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  br label %488

113:                                              ; preds = %101
  br label %129

114:                                              ; preds = %47
  %115 = load i32, i32* @SSL3_VERSION, align 4
  store i32 %115, i32* %32, align 4
  %116 = load i32, i32* @SSL3_VERSION, align 4
  store i32 %116, i32* %33, align 4
  br label %129

117:                                              ; preds = %47
  %118 = load i32, i32* @TLS1_VERSION, align 4
  store i32 %118, i32* %32, align 4
  %119 = load i32, i32* @TLS1_VERSION, align 4
  store i32 %119, i32* %33, align 4
  br label %129

120:                                              ; preds = %47
  %121 = load i32, i32* @TLS1_1_VERSION, align 4
  store i32 %121, i32* %32, align 4
  %122 = load i32, i32* @TLS1_1_VERSION, align 4
  store i32 %122, i32* %33, align 4
  br label %129

123:                                              ; preds = %47
  %124 = load i32, i32* @TLS1_2_VERSION, align 4
  store i32 %124, i32* %32, align 4
  %125 = load i32, i32* @TLS1_2_VERSION, align 4
  store i32 %125, i32* %33, align 4
  br label %129

126:                                              ; preds = %47
  %127 = load i32, i32* @TLS1_3_VERSION, align 4
  store i32 %127, i32* %32, align 4
  %128 = load i32, i32* @TLS1_3_VERSION, align 4
  store i32 %128, i32* %33, align 4
  br label %129

129:                                              ; preds = %47, %126, %123, %120, %117, %114, %113, %100, %94, %92, %90, %89, %87, %86, %85, %83, %81, %79, %78, %71, %66, %60, %59, %57
  br label %44

130:                                              ; preds = %44
  %131 = call i32 (...) @opt_num_rest()
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %50

135:                                              ; preds = %130
  %136 = load i8*, i8** %12, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %139, i8** %12, align 8
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32*, i32** %8, align 8
  %142 = call i32* @SSL_CTX_new(i32* %141)
  store i32* %142, i32** %7, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %488

145:                                              ; preds = %140
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* @SSL_MODE_AUTO_RETRY, align 4
  %148 = call i32 @SSL_CTX_set_mode(i32* %146, i32 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @SSL_CTX_set_quiet_shutdown(i32* %149, i32 1)
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %32, align 4
  %153 = call i64 @SSL_CTX_set_min_proto_version(i32* %151, i32 %152)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %488

156:                                              ; preds = %145
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %33, align 4
  %159 = call i64 @SSL_CTX_set_max_proto_version(i32* %157, i32 %158)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %488

162:                                              ; preds = %156
  %163 = load i32, i32* %28, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* @SSL_OP_ALL, align 4
  %168 = call i32 @SSL_CTX_set_options(i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %162
  %170 = load i8*, i8** %12, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load i32*, i32** %7, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = call i32 @SSL_CTX_set_cipher_list(i32* %173, i8* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %172
  br label %488

178:                                              ; preds = %172, %169
  %179 = load i8*, i8** %13, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i32*, i32** %7, align 8
  %183 = load i8*, i8** %13, align 8
  %184 = call i32 @SSL_CTX_set_ciphersuites(i32* %182, i8* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %181
  br label %488

187:                                              ; preds = %181, %178
  %188 = load i32*, i32** %7, align 8
  %189 = load i8*, i8** %16, align 8
  %190 = load i8*, i8** %17, align 8
  %191 = call i32 @set_cert_stuff(i32* %188, i8* %189, i8* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %187
  br label %488

194:                                              ; preds = %187
  %195 = load i32*, i32** %7, align 8
  %196 = load i8*, i8** %10, align 8
  %197 = load i32, i32* %21, align 4
  %198 = load i8*, i8** %9, align 8
  %199 = load i32, i32* %20, align 4
  %200 = load i8*, i8** %11, align 8
  %201 = load i32, i32* %22, align 4
  %202 = call i32 @ctx_set_verify_locations(i32* %195, i8* %196, i32 %197, i8* %198, i32 %199, i8* %200, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %194
  %205 = load i32, i32* @bio_err, align 4
  %206 = call i32 @ERR_print_errors(i32 %205)
  br label %488

207:                                              ; preds = %194
  %208 = load i32, i32* %25, align 4
  %209 = and i32 %208, 1
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  br label %331

212:                                              ; preds = %207
  %213 = load i32, i32* %23, align 4
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %213)
  store i64 0, i64* %29, align 8
  %215 = call i64 @time(i32* null)
  %216 = load i32, i32* %23, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %215, %217
  store i64 %218, i64* %30, align 8
  %219 = load i32, i32* @START, align 4
  %220 = call double @tm_Time_F(i32 %219)
  br label %221

221:                                              ; preds = %291, %212
  %222 = load i64, i64* %30, align 8
  %223 = call i64 @time(i32* null)
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %299

226:                                              ; preds = %221
  %227 = load i8*, i8** %15, align 8
  %228 = load i32*, i32** %7, align 8
  %229 = call i32* @doConnection(i32* null, i8* %227, i32* %228)
  store i32* %229, i32** %6, align 8
  %230 = icmp eq i32* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %488

232:                                              ; preds = %226
  %233 = load i8*, i8** %14, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %261

235:                                              ; preds = %232
  %236 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %237 = load i32, i32* @fmt_http_get_cmd, align 4
  %238 = load i8*, i8** %14, align 8
  %239 = call i32 @BIO_snprintf(i8* %236, i32 8192, i32 %237, i8* %238)
  store i32 %239, i32* %35, align 4
  %240 = load i32, i32* %35, align 4
  %241 = icmp sle i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %235
  %243 = load i32*, i32** %6, align 8
  %244 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %245 = load i32, i32* %35, align 4
  %246 = call i64 @SSL_write(i32* %243, i8* %244, i32 %245)
  %247 = icmp sle i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %242, %235
  br label %488

249:                                              ; preds = %242
  br label %250

250:                                              ; preds = %255, %249
  %251 = load i32*, i32** %6, align 8
  %252 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %253 = call i32 @SSL_read(i32* %251, i8* %252, i32 8192)
  store i32 %253, i32* %27, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i32, i32* %27, align 4
  %257 = sext i32 %256 to i64
  %258 = load i64, i64* %29, align 8
  %259 = add nsw i64 %258, %257
  store i64 %259, i64* %29, align 8
  br label %250

260:                                              ; preds = %250
  br label %261

261:                                              ; preds = %260, %232
  %262 = load i32*, i32** %6, align 8
  %263 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %264 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %265 = or i32 %263, %264
  %266 = call i32 @SSL_set_shutdown(i32* %262, i32 %265)
  %267 = load i32*, i32** %6, align 8
  %268 = call i32 @SSL_get_fd(i32* %267)
  %269 = call i32 @BIO_closesocket(i32 %268)
  %270 = load i32, i32* %24, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %24, align 4
  %272 = load i32*, i32** %6, align 8
  %273 = call i64 @SSL_session_reused(i32* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %261
  store i32 114, i32* %34, align 4
  br label %291

276:                                              ; preds = %261
  %277 = load i32*, i32** %6, align 8
  %278 = call i32 @SSL_version(i32* %277)
  store i32 %278, i32* %34, align 4
  %279 = load i32, i32* %34, align 4
  %280 = load i32, i32* @TLS1_VERSION, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %276
  store i32 116, i32* %34, align 4
  br label %290

283:                                              ; preds = %276
  %284 = load i32, i32* %34, align 4
  %285 = load i32, i32* @SSL3_VERSION, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  store i32 51, i32* %34, align 4
  br label %289

288:                                              ; preds = %283
  store i32 42, i32* %34, align 4
  br label %289

289:                                              ; preds = %288, %287
  br label %290

290:                                              ; preds = %289, %282
  br label %291

291:                                              ; preds = %290, %275
  %292 = load i32, i32* %34, align 4
  %293 = load i32, i32* @stdout, align 4
  %294 = call i32 @fputc(i32 %292, i32 %293)
  %295 = load i32, i32* @stdout, align 4
  %296 = call i32 @fflush(i32 %295)
  %297 = load i32*, i32** %6, align 8
  %298 = call i32 @SSL_free(i32* %297)
  store i32* null, i32** %6, align 8
  br label %221

299:                                              ; preds = %225
  %300 = load i32, i32* @STOP, align 4
  %301 = call double @tm_Time_F(i32 %300)
  %302 = load double, double* %19, align 8
  %303 = fadd double %302, %301
  store double %303, double* %19, align 8
  %304 = call i64 @time(i32* null)
  %305 = load i64, i64* %30, align 8
  %306 = sub nsw i64 %304, %305
  %307 = load i32, i32* %23, align 4
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %306, %308
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %27, align 4
  %311 = load i32, i32* %24, align 4
  %312 = load double, double* %19, align 8
  %313 = load i32, i32* %24, align 4
  %314 = sitofp i32 %313 to double
  %315 = load double, double* %19, align 8
  %316 = fdiv double %314, %315
  %317 = load i64, i64* %29, align 8
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %311, double %312, double %316, i64 %317)
  %319 = load i32, i32* %24, align 4
  %320 = call i64 @time(i32* null)
  %321 = load i64, i64* %30, align 8
  %322 = sub nsw i64 %320, %321
  %323 = load i32, i32* %23, align 4
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %322, %324
  %326 = load i64, i64* %29, align 8
  %327 = load i32, i32* %24, align 4
  %328 = sext i32 %327 to i64
  %329 = sdiv i64 %326, %328
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %319, i64 %325, i64 %329)
  br label %331

331:                                              ; preds = %299, %211
  %332 = load i32, i32* %25, align 4
  %333 = and i32 %332, 2
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %331
  br label %488

336:                                              ; preds = %331
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %338 = load i8*, i8** %15, align 8
  %339 = load i32*, i32** %7, align 8
  %340 = call i32* @doConnection(i32* null, i8* %338, i32* %339)
  store i32* %340, i32** %6, align 8
  %341 = icmp eq i32* %340, null
  br i1 %341, label %342, label %345

342:                                              ; preds = %336
  %343 = load i32, i32* @bio_err, align 4
  %344 = call i32 (i32, i8*, ...) @BIO_printf(i32 %343, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %488

345:                                              ; preds = %336
  %346 = load i8*, i8** %14, align 8
  %347 = icmp ne i8* %346, null
  br i1 %347, label %348, label %370

348:                                              ; preds = %345
  %349 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %350 = load i32, i32* @fmt_http_get_cmd, align 4
  %351 = load i8*, i8** %14, align 8
  %352 = call i32 @BIO_snprintf(i8* %349, i32 8192, i32 %350, i8* %351)
  store i32 %352, i32* %35, align 4
  %353 = load i32, i32* %35, align 4
  %354 = icmp sle i32 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %348
  %356 = load i32*, i32** %6, align 8
  %357 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %358 = load i32, i32* %35, align 4
  %359 = call i64 @SSL_write(i32* %356, i8* %357, i32 %358)
  %360 = icmp sle i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %355, %348
  br label %488

362:                                              ; preds = %355
  br label %363

363:                                              ; preds = %368, %362
  %364 = load i32*, i32** %6, align 8
  %365 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %366 = call i32 @SSL_read(i32* %364, i8* %365, i32 8192)
  store i32 %366, i32* %27, align 4
  %367 = icmp sgt i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  br label %363

369:                                              ; preds = %363
  br label %370

370:                                              ; preds = %369, %345
  %371 = load i32*, i32** %6, align 8
  %372 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %373 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %374 = or i32 %372, %373
  %375 = call i32 @SSL_set_shutdown(i32* %371, i32 %374)
  %376 = load i32*, i32** %6, align 8
  %377 = call i32 @SSL_get_fd(i32* %376)
  %378 = call i32 @BIO_closesocket(i32 %377)
  store i32 0, i32* %24, align 4
  store double 0.000000e+00, double* %19, align 8
  %379 = call i64 @time(i32* null)
  %380 = load i32, i32* %23, align 4
  %381 = sext i32 %380 to i64
  %382 = add nsw i64 %379, %381
  store i64 %382, i64* %30, align 8
  %383 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i64 0, i64* %29, align 8
  %384 = load i32, i32* @START, align 4
  %385 = call double @tm_Time_F(i32 %384)
  br label %386

386:                                              ; preds = %457, %370
  %387 = load i64, i64* %30, align 8
  %388 = call i64 @time(i32* null)
  %389 = icmp slt i64 %387, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %386
  br label %463

391:                                              ; preds = %386
  %392 = load i32*, i32** %6, align 8
  %393 = load i8*, i8** %15, align 8
  %394 = load i32*, i32** %7, align 8
  %395 = call i32* @doConnection(i32* %392, i8* %393, i32* %394)
  %396 = icmp eq i32* %395, null
  br i1 %396, label %397, label %398

397:                                              ; preds = %391
  br label %488

398:                                              ; preds = %391
  %399 = load i8*, i8** %14, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %401, label %427

401:                                              ; preds = %398
  %402 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %403 = load i32, i32* @fmt_http_get_cmd, align 4
  %404 = load i8*, i8** %14, align 8
  %405 = call i32 @BIO_snprintf(i8* %402, i32 8192, i32 %403, i8* %404)
  store i32 %405, i32* %35, align 4
  %406 = load i32, i32* %35, align 4
  %407 = icmp sle i32 %406, 0
  br i1 %407, label %414, label %408

408:                                              ; preds = %401
  %409 = load i32*, i32** %6, align 8
  %410 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %411 = load i32, i32* %35, align 4
  %412 = call i64 @SSL_write(i32* %409, i8* %410, i32 %411)
  %413 = icmp sle i64 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %408, %401
  br label %488

415:                                              ; preds = %408
  br label %416

416:                                              ; preds = %421, %415
  %417 = load i32*, i32** %6, align 8
  %418 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %419 = call i32 @SSL_read(i32* %417, i8* %418, i32 8192)
  store i32 %419, i32* %27, align 4
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %426

421:                                              ; preds = %416
  %422 = load i32, i32* %27, align 4
  %423 = sext i32 %422 to i64
  %424 = load i64, i64* %29, align 8
  %425 = add nsw i64 %424, %423
  store i64 %425, i64* %29, align 8
  br label %416

426:                                              ; preds = %416
  br label %427

427:                                              ; preds = %426, %398
  %428 = load i32*, i32** %6, align 8
  %429 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %430 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %431 = or i32 %429, %430
  %432 = call i32 @SSL_set_shutdown(i32* %428, i32 %431)
  %433 = load i32*, i32** %6, align 8
  %434 = call i32 @SSL_get_fd(i32* %433)
  %435 = call i32 @BIO_closesocket(i32 %434)
  %436 = load i32, i32* %24, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %24, align 4
  %438 = load i32*, i32** %6, align 8
  %439 = call i64 @SSL_session_reused(i32* %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %427
  store i32 114, i32* %34, align 4
  br label %457

442:                                              ; preds = %427
  %443 = load i32*, i32** %6, align 8
  %444 = call i32 @SSL_version(i32* %443)
  store i32 %444, i32* %34, align 4
  %445 = load i32, i32* %34, align 4
  %446 = load i32, i32* @TLS1_VERSION, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %448, label %449

448:                                              ; preds = %442
  store i32 116, i32* %34, align 4
  br label %456

449:                                              ; preds = %442
  %450 = load i32, i32* %34, align 4
  %451 = load i32, i32* @SSL3_VERSION, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %454

453:                                              ; preds = %449
  store i32 51, i32* %34, align 4
  br label %455

454:                                              ; preds = %449
  store i32 42, i32* %34, align 4
  br label %455

455:                                              ; preds = %454, %453
  br label %456

456:                                              ; preds = %455, %448
  br label %457

457:                                              ; preds = %456, %441
  %458 = load i32, i32* %34, align 4
  %459 = load i32, i32* @stdout, align 4
  %460 = call i32 @fputc(i32 %458, i32 %459)
  %461 = load i32, i32* @stdout, align 4
  %462 = call i32 @fflush(i32 %461)
  br label %386

463:                                              ; preds = %390
  %464 = load i32, i32* @STOP, align 4
  %465 = call double @tm_Time_F(i32 %464)
  %466 = load double, double* %19, align 8
  %467 = fadd double %466, %465
  store double %467, double* %19, align 8
  %468 = load i32, i32* %24, align 4
  %469 = load double, double* %19, align 8
  %470 = load i32, i32* %24, align 4
  %471 = sitofp i32 %470 to double
  %472 = load double, double* %19, align 8
  %473 = fdiv double %471, %472
  %474 = load i64, i64* %29, align 8
  %475 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %468, double %469, double %473, i64 %474)
  %476 = load i32, i32* %24, align 4
  %477 = call i64 @time(i32* null)
  %478 = load i64, i64* %30, align 8
  %479 = sub nsw i64 %477, %478
  %480 = load i32, i32* %23, align 4
  %481 = sext i32 %480 to i64
  %482 = add nsw i64 %479, %481
  %483 = load i64, i64* %29, align 8
  %484 = load i32, i32* %24, align 4
  %485 = sext i32 %484 to i64
  %486 = sdiv i64 %483, %485
  %487 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %476, i64 %482, i64 %486)
  store i32 0, i32* %26, align 4
  br label %488

488:                                              ; preds = %463, %414, %397, %361, %342, %335, %248, %231, %204, %193, %186, %177, %161, %155, %144, %109, %77, %54, %50
  %489 = load i32*, i32** %6, align 8
  %490 = call i32 @SSL_free(i32* %489)
  %491 = load i32*, i32** %7, align 8
  %492 = call i32 @SSL_CTX_free(i32* %491)
  %493 = load i32, i32* %26, align 4
  ret i32 %493
}

declare dso_local i32* @TLS_client_method(...) #1

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32 @set_nameopt(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32* @SSL_CTX_new(i32*) #1

declare dso_local i32 @SSL_CTX_set_mode(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_quiet_shutdown(i32*, i32) #1

declare dso_local i64 @SSL_CTX_set_min_proto_version(i32*, i32) #1

declare dso_local i64 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @SSL_CTX_set_ciphersuites(i32*, i8*) #1

declare dso_local i32 @set_cert_stuff(i32*, i8*, i8*) #1

declare dso_local i32 @ctx_set_verify_locations(i32*, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local double @tm_Time_F(i32) #1

declare dso_local i32* @doConnection(i32*, i8*, i32*) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i32, i8*) #1

declare dso_local i64 @SSL_write(i32*, i8*, i32) #1

declare dso_local i32 @SSL_read(i32*, i8*, i32) #1

declare dso_local i32 @SSL_set_shutdown(i32*, i32) #1

declare dso_local i32 @BIO_closesocket(i32) #1

declare dso_local i32 @SSL_get_fd(i32*) #1

declare dso_local i64 @SSL_session_reused(i32*) #1

declare dso_local i32 @SSL_version(i32*) #1

declare dso_local i32 @fputc(i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
