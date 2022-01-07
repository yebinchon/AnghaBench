; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_server.c_rev_body.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_server.c_rev_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@bufsize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"server rev buffer\00", align 1
@ctx = common dso_local global i32 0, align 4
@s_tlsextdebug = common dso_local global i64 0, align 8
@tlsext_cb = common dso_local global i32 0, align 4
@bio_s_out = common dso_local global i64 0, align 8
@bio_err = common dso_local global i64 0, align 8
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@BIO_CLOSE = common dso_local global i32 0, align 4
@s_debug = common dso_local global i64 0, align 8
@bio_dump_callback = common dso_local global i32 0, align 4
@s_msg = common dso_local global i32 0, align 4
@SSL_trace = common dso_local global i32 0, align 4
@msg_cb = common dso_local global i32 0, align 4
@bio_s_msg = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"CONNECTION FAILURE\0A\00", align 1
@BIO_RR_SSL_X509_LOOKUP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"LOOKUP renego during accept\0A\00", align 1
@srp_callback_parm = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"LOOKUP done %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"LOOKUP not successful\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"CONNECTION ESTABLISHED\0A\00", align 1
@s_quiet = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"read R BLOCK\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"LOOKUP renego during read\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"CONNECTION CLOSED\0A\00", align 1
@s_ign_eof = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*)* @rev_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rev_body(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 1, i32* %11, align 4
  %17 = load i64, i64* @bufsize, align 8
  %18 = call i8* @app_malloc(i64 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %9, align 8
  %19 = call i32 (...) @BIO_f_buffer()
  %20 = call i32* @BIO_new(i32 %19)
  store i32* %20, i32** %13, align 8
  %21 = call i32 (...) @BIO_f_ssl()
  %22 = call i32* @BIO_new(i32 %21)
  store i32* %22, i32** %14, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32*, i32** %14, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %4
  br label %305

29:                                               ; preds = %25
  %30 = load i32*, i32** %13, align 8
  %31 = load i64, i64* @bufsize, align 8
  %32 = call i32 @BIO_set_write_buffer_size(i32* %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %305

35:                                               ; preds = %29
  %36 = load i32, i32* @ctx, align 4
  %37 = call i32* @SSL_new(i32 %36)
  store i32* %37, i32** %12, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %305

40:                                               ; preds = %35
  %41 = load i64, i64* @s_tlsextdebug, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* @tlsext_cb, align 4
  %46 = call i32 @SSL_set_tlsext_debug_callback(i32* %44, i32 %45)
  %47 = load i32*, i32** %12, align 8
  %48 = load i64, i64* @bio_s_out, align 8
  %49 = call i32 @SSL_set_tlsext_debug_arg(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32*, i32** %12, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @SSL_set_session_id_context(i32* %54, i8* %55, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @SSL_free(i32* %61)
  %63 = load i64, i64* @bio_err, align 8
  %64 = call i32 @ERR_print_errors(i64 %63)
  br label %305

65:                                               ; preds = %53, %50
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @BIO_NOCLOSE, align 4
  %68 = call i32* @BIO_new_socket(i32 %66, i32 %67)
  store i32* %68, i32** %15, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @SSL_set_bio(i32* %69, i32* %70, i32* %71)
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @SSL_set_accept_state(i32* %73)
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* @BIO_CLOSE, align 4
  %78 = call i32 @BIO_set_ssl(i32* %75, i32* %76, i32 %77)
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i32* @BIO_push(i32* %79, i32* %80)
  %82 = load i64, i64* @s_debug, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %65
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @SSL_get_rbio(i32* %85)
  %87 = load i32, i32* @bio_dump_callback, align 4
  %88 = call i32 @BIO_set_callback(i32 %86, i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @SSL_get_rbio(i32* %89)
  %91 = load i64, i64* @bio_s_out, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @BIO_set_callback_arg(i32 %90, i8* %92)
  br label %94

94:                                               ; preds = %84, %65
  %95 = load i32, i32* @s_msg, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = load i32, i32* @s_msg, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* @SSL_trace, align 4
  %103 = call i32 @SSL_set_msg_callback(i32* %101, i32 %102)
  br label %108

104:                                              ; preds = %97
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* @msg_cb, align 4
  %107 = call i32 @SSL_set_msg_callback(i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i32*, i32** %12, align 8
  %110 = load i64, i64* @bio_s_msg, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i64, i64* @bio_s_msg, align 8
  br label %116

114:                                              ; preds = %108
  %115 = load i64, i64* @bio_s_out, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i64 [ %113, %112 ], [ %115, %114 ]
  %118 = call i32 @SSL_set_msg_callback_arg(i32* %109, i64 %117)
  br label %119

119:                                              ; preds = %116, %94
  br label %120

120:                                              ; preds = %165, %164, %119
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @BIO_do_handshake(i32* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %166

126:                                              ; preds = %120
  %127 = load i32*, i32** %13, align 8
  %128 = call i32 @BIO_should_retry(i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = load i64, i64* @bio_err, align 8
  %132 = call i32 @BIO_puts(i64 %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i64, i64* @bio_err, align 8
  %134 = call i32 @ERR_print_errors(i64 %133)
  br label %299

135:                                              ; preds = %126
  %136 = load i32*, i32** %13, align 8
  %137 = call i64 @BIO_should_io_special(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %135
  %140 = load i32*, i32** %13, align 8
  %141 = call i64 @BIO_get_retry_reason(i32* %140)
  %142 = load i64, i64* @BIO_RR_SSL_X509_LOOKUP, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = load i64, i64* @bio_s_out, align 8
  %146 = call i32 (i64, i8*, ...) @BIO_printf(i64 %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %148 = call i32 @SRP_user_pwd_free(%struct.TYPE_4__* %147)
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 2), align 4
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 1), align 8
  %151 = call i8* @SRP_VBASE_get1_by_user(i32 %149, i32 %150)
  %152 = bitcast i8* %151 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %152, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %154 = icmp ne %struct.TYPE_4__* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %144
  %156 = load i64, i64* @bio_s_out, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i64, i8*, ...) @BIO_printf(i64 %156, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  br label %164

161:                                              ; preds = %144
  %162 = load i64, i64* @bio_s_out, align 8
  %163 = call i32 (i64, i8*, ...) @BIO_printf(i64 %162, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %155
  br label %120

165:                                              ; preds = %139, %135
  br label %120

166:                                              ; preds = %125
  %167 = load i64, i64* @bio_err, align 8
  %168 = call i32 (i64, i8*, ...) @BIO_printf(i64 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %169 = load i32*, i32** %12, align 8
  %170 = call i32 @print_ssl_summary(i32* %169)
  br label %171

171:                                              ; preds = %298, %222, %221, %166
  %172 = load i32*, i32** %13, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = load i64, i64* @bufsize, align 8
  %175 = sub nsw i64 %174, 1
  %176 = call i32 @BIO_gets(i32* %172, i8* %173, i64 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %224

179:                                              ; preds = %171
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @BIO_should_retry(i32* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* @s_quiet, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i64, i64* @bio_err, align 8
  %188 = call i32 @ERR_print_errors(i64 %187)
  br label %189

189:                                              ; preds = %186, %183
  br label %305

190:                                              ; preds = %179
  %191 = load i64, i64* @bio_s_out, align 8
  %192 = call i32 (i64, i8*, ...) @BIO_printf(i64 %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %193 = load i32*, i32** %13, align 8
  %194 = call i64 @BIO_should_io_special(i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %222

196:                                              ; preds = %190
  %197 = load i32*, i32** %13, align 8
  %198 = call i64 @BIO_get_retry_reason(i32* %197)
  %199 = load i64, i64* @BIO_RR_SSL_X509_LOOKUP, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %222

201:                                              ; preds = %196
  %202 = load i64, i64* @bio_s_out, align 8
  %203 = call i32 (i64, i8*, ...) @BIO_printf(i64 %202, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %205 = call i32 @SRP_user_pwd_free(%struct.TYPE_4__* %204)
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 2), align 4
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 1), align 8
  %208 = call i8* @SRP_VBASE_get1_by_user(i32 %206, i32 %207)
  %209 = bitcast i8* %208 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %209, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %211 = icmp ne %struct.TYPE_4__* %210, null
  br i1 %211, label %212, label %218

212:                                              ; preds = %201
  %213 = load i64, i64* @bio_s_out, align 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @srp_callback_parm, i32 0, i32 0), align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i64, i8*, ...) @BIO_printf(i64 %213, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %216)
  br label %221

218:                                              ; preds = %201
  %219 = load i64, i64* @bio_s_out, align 8
  %220 = call i32 (i64, i8*, ...) @BIO_printf(i64 %219, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %212
  br label %171

222:                                              ; preds = %196, %190
  %223 = call i32 @sleep(i32 1)
  br label %171

224:                                              ; preds = %171
  %225 = load i32, i32* %10, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  store i32 1, i32* %11, align 4
  %228 = load i64, i64* @bio_err, align 8
  %229 = call i32 (i64, i8*, ...) @BIO_printf(i64 %228, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %299

230:                                              ; preds = %224
  %231 = load i8*, i8** %9, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = getelementptr inbounds i8, i8* %234, i64 -1
  store i8* %235, i8** %16, align 8
  br label %236

236:                                              ; preds = %253, %230
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %236
  %240 = load i8*, i8** %16, align 8
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 10
  br i1 %243, label %249, label %244

244:                                              ; preds = %239
  %245 = load i8*, i8** %16, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 13
  br label %249

249:                                              ; preds = %244, %239
  %250 = phi i1 [ true, %239 ], [ %248, %244 ]
  br label %251

251:                                              ; preds = %249, %236
  %252 = phi i1 [ false, %236 ], [ %250, %249 ]
  br i1 %252, label %253, label %258

253:                                              ; preds = %251
  %254 = load i8*, i8** %16, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 -1
  store i8* %255, i8** %16, align 8
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %10, align 4
  br label %236

258:                                              ; preds = %251
  %259 = load i32, i32* @s_ign_eof, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %271, label %261

261:                                              ; preds = %258
  %262 = load i32, i32* %10, align 4
  %263 = icmp eq i32 %262, 5
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load i8*, i8** %9, align 8
  %266 = call i64 @strncmp(i8* %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  store i32 1, i32* %11, align 4
  %269 = load i64, i64* @bio_err, align 8
  %270 = call i32 (i64, i8*, ...) @BIO_printf(i64 %269, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %299

271:                                              ; preds = %264, %261, %258
  %272 = load i8*, i8** %9, align 8
  %273 = load i32, i32* %10, align 4
  %274 = call i32 @BUF_reverse(i8* %272, i32* null, i32 %273)
  %275 = load i8*, i8** %9, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  store i8 10, i8* %278, align 1
  %279 = load i32*, i32** %13, align 8
  %280 = load i8*, i8** %9, align 8
  %281 = load i32, i32* %10, align 4
  %282 = add nsw i32 %281, 1
  %283 = call i32 @BIO_write(i32* %279, i8* %280, i32 %282)
  br label %284

284:                                              ; preds = %295, %271
  %285 = load i32*, i32** %13, align 8
  %286 = call i32 @BIO_flush(i32* %285)
  store i32 %286, i32* %10, align 4
  %287 = load i32, i32* %10, align 4
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  br label %296

290:                                              ; preds = %284
  %291 = load i32*, i32** %13, align 8
  %292 = call i32 @BIO_should_retry(i32* %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %290
  br label %299

295:                                              ; preds = %290
  br label %284

296:                                              ; preds = %289
  br label %297

297:                                              ; preds = %296
  br label %298

298:                                              ; preds = %297
  br label %171

299:                                              ; preds = %294, %268, %227, %130
  %300 = load i32*, i32** %12, align 8
  %301 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %302 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %303 = or i32 %301, %302
  %304 = call i32 @SSL_set_shutdown(i32* %300, i32 %303)
  br label %305

305:                                              ; preds = %299, %189, %60, %39, %34, %28
  %306 = load i8*, i8** %9, align 8
  %307 = call i32 @OPENSSL_free(i8* %306)
  %308 = load i32*, i32** %13, align 8
  %309 = call i32 @BIO_free_all(i32* %308)
  %310 = load i32, i32* %11, align 4
  ret i32 %310
}

declare dso_local i8* @app_malloc(i64, i8*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_buffer(...) #1

declare dso_local i32 @BIO_f_ssl(...) #1

declare dso_local i32 @BIO_set_write_buffer_size(i32*, i64) #1

declare dso_local i32* @SSL_new(i32) #1

declare dso_local i32 @SSL_set_tlsext_debug_callback(i32*, i32) #1

declare dso_local i32 @SSL_set_tlsext_debug_arg(i32*, i64) #1

declare dso_local i32 @SSL_set_session_id_context(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @ERR_print_errors(i64) #1

declare dso_local i32* @BIO_new_socket(i32, i32) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local i32 @SSL_set_accept_state(i32*) #1

declare dso_local i32 @BIO_set_ssl(i32*, i32*, i32) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i32 @BIO_set_callback(i32, i32) #1

declare dso_local i32 @SSL_get_rbio(i32*) #1

declare dso_local i32 @BIO_set_callback_arg(i32, i8*) #1

declare dso_local i32 @SSL_set_msg_callback(i32*, i32) #1

declare dso_local i32 @SSL_set_msg_callback_arg(i32*, i64) #1

declare dso_local i32 @BIO_do_handshake(i32*) #1

declare dso_local i32 @BIO_should_retry(i32*) #1

declare dso_local i32 @BIO_puts(i64, i8*) #1

declare dso_local i64 @BIO_should_io_special(i32*) #1

declare dso_local i64 @BIO_get_retry_reason(i32*) #1

declare dso_local i32 @BIO_printf(i64, i8*, ...) #1

declare dso_local i32 @SRP_user_pwd_free(%struct.TYPE_4__*) #1

declare dso_local i8* @SRP_VBASE_get1_by_user(i32, i32) #1

declare dso_local i32 @print_ssl_summary(i32*) #1

declare dso_local i32 @BIO_gets(i32*, i8*, i64) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @BUF_reverse(i8*, i32*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @BIO_flush(i32*) #1

declare dso_local i32 @SSL_set_shutdown(i32*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
