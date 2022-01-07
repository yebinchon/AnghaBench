; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_multi_process.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_multi_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { i32, i32, %struct.TYPE_6__**, %struct.TYPE_5__, %struct.tls_session*, %struct.link_socket_actual }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tls_session = type { %struct.key_state*, i32 }
%struct.key_state = type { i64, i32, i32 }
%struct.link_socket_actual = type { i32 }
%struct.buffer = type { i32 }
%struct.link_socket_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.gc_arena = type { i32 }

@TLSMP_INACTIVE = common dso_local global i32 0, align 4
@PERF_TLS_MULTI_PROCESS = common dso_local global i32 0, align 4
@TM_SIZE = common dso_local global i32 0, align 4
@KS_PRIMARY = common dso_local global i64 0, align 8
@KS_LAME_DUCK = common dso_local global i64 0, align 8
@TM_ACTIVE = common dso_local global i32 0, align 4
@S_INITIAL = common dso_local global i64 0, align 8
@D_TLS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"TLS: tls_multi_process: i=%d state=%s, mysid=%s, stored-sid=%s, stored-ip=%s\00", align 1
@TLSMP_ACTIVE = common dso_local global i32 0, align 4
@S_ERROR = common dso_local global i64 0, align 8
@S_ACTIVE = common dso_local global i64 0, align 8
@TM_LAME_DUCK = common dso_local global i64 0, align 8
@TLS_MULTI_AUTH_STATUS_INTERVAL = common dso_local global i32 0, align 4
@D_TLS_DEBUG_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"TLS: tls_multi_process: killed expiring key\00", align 1
@TM_UNTRUSTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"TLS: tls_multi_process: untrusted session promoted to %strusted\00", align 1
@TLS_AUTHENTICATION_SUCCEEDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"semi-\00", align 1
@TLS_AUTHENTICATION_FAILED = common dso_local global i32 0, align 4
@TLSMP_KILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_multi_process(%struct.tls_multi* %0, %struct.buffer* %1, %struct.link_socket_actual** %2, %struct.link_socket_info* %3, i32* %4) #0 {
  %6 = alloca %struct.tls_multi*, align 8
  %7 = alloca %struct.buffer*, align 8
  %8 = alloca %struct.link_socket_actual**, align 8
  %9 = alloca %struct.link_socket_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.gc_arena, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tls_session*, align 8
  %17 = alloca %struct.key_state*, align 8
  %18 = alloca %struct.key_state*, align 8
  %19 = alloca %struct.link_socket_actual*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %6, align 8
  store %struct.buffer* %1, %struct.buffer** %7, align 8
  store %struct.link_socket_actual** %2, %struct.link_socket_actual*** %8, align 8
  store %struct.link_socket_info* %3, %struct.link_socket_info** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = call i32 (...) @gc_new()
  %21 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %11, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @TLSMP_INACTIVE, align 4
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* @PERF_TLS_MULTI_PROCESS, align 4
  %24 = call i32 @perf_push(i32 %23)
  %25 = call i32 (...) @tls_clear_error()
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %166, %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @TM_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %169

30:                                               ; preds = %26
  %31 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %32 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %31, i32 0, i32 4
  %33 = load %struct.tls_session*, %struct.tls_session** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %33, i64 %35
  store %struct.tls_session* %36, %struct.tls_session** %16, align 8
  %37 = load %struct.tls_session*, %struct.tls_session** %16, align 8
  %38 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %37, i32 0, i32 0
  %39 = load %struct.key_state*, %struct.key_state** %38, align 8
  %40 = load i64, i64* @KS_PRIMARY, align 8
  %41 = getelementptr inbounds %struct.key_state, %struct.key_state* %39, i64 %40
  store %struct.key_state* %41, %struct.key_state** %17, align 8
  %42 = load %struct.tls_session*, %struct.tls_session** %16, align 8
  %43 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %42, i32 0, i32 0
  %44 = load %struct.key_state*, %struct.key_state** %43, align 8
  %45 = load i64, i64* @KS_LAME_DUCK, align 8
  %46 = getelementptr inbounds %struct.key_state, %struct.key_state* %44, i64 %45
  store %struct.key_state* %46, %struct.key_state** %18, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @TM_ACTIVE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %30
  %51 = load %struct.key_state*, %struct.key_state** %17, align 8
  %52 = getelementptr inbounds %struct.key_state, %struct.key_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @S_INITIAL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.link_socket_info*, %struct.link_socket_info** %9, align 8
  %58 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i64 @link_socket_actual_defined(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.link_socket_info*, %struct.link_socket_info** %9, align 8
  %65 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.key_state*, %struct.key_state** %17, align 8
  %70 = getelementptr inbounds %struct.key_state, %struct.key_state* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %63, %56, %50, %30
  %72 = load i32, i32* @D_TLS_DEBUG, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.key_state*, %struct.key_state** %17, align 8
  %75 = getelementptr inbounds %struct.key_state, %struct.key_state* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @state_name(i64 %76)
  %78 = load %struct.tls_session*, %struct.tls_session** %16, align 8
  %79 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %78, i32 0, i32 1
  %80 = call i32 @session_id_print(i32* %79, %struct.gc_arena* %11)
  %81 = load %struct.key_state*, %struct.key_state** %17, align 8
  %82 = getelementptr inbounds %struct.key_state, %struct.key_state* %81, i32 0, i32 2
  %83 = call i32 @session_id_print(i32* %82, %struct.gc_arena* %11)
  %84 = load %struct.key_state*, %struct.key_state** %17, align 8
  %85 = getelementptr inbounds %struct.key_state, %struct.key_state* %84, i32 0, i32 1
  %86 = call i32 @print_link_socket_actual(i32* %85, %struct.gc_arena* %11)
  %87 = call i32 @dmsg(i32 %72, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %77, i32 %80, i32 %83, i32 %86)
  %88 = load %struct.key_state*, %struct.key_state** %17, align 8
  %89 = getelementptr inbounds %struct.key_state, %struct.key_state* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @S_INITIAL, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %165

93:                                               ; preds = %71
  %94 = load %struct.key_state*, %struct.key_state** %17, align 8
  %95 = getelementptr inbounds %struct.key_state, %struct.key_state* %94, i32 0, i32 1
  %96 = call i64 @link_socket_actual_defined(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %165

98:                                               ; preds = %93
  store %struct.link_socket_actual* null, %struct.link_socket_actual** %19, align 8
  %99 = call i32 (...) @update_time()
  %100 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %101 = load %struct.tls_session*, %struct.tls_session** %16, align 8
  %102 = load %struct.buffer*, %struct.buffer** %7, align 8
  %103 = load %struct.link_socket_info*, %struct.link_socket_info** %9, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = call i64 @tls_process(%struct.tls_multi* %100, %struct.tls_session* %101, %struct.buffer* %102, %struct.link_socket_actual** %19, %struct.link_socket_info* %103, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* @TLSMP_ACTIVE, align 4
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %107, %98
  %110 = load %struct.link_socket_actual*, %struct.link_socket_actual** %19, align 8
  %111 = icmp ne %struct.link_socket_actual* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %114 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %113, i32 0, i32 5
  %115 = load %struct.link_socket_actual*, %struct.link_socket_actual** %19, align 8
  %116 = bitcast %struct.link_socket_actual* %114 to i8*
  %117 = bitcast %struct.link_socket_actual* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 4 %117, i64 4, i1 false)
  %118 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %119 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %118, i32 0, i32 5
  %120 = load %struct.link_socket_actual**, %struct.link_socket_actual*** %8, align 8
  store %struct.link_socket_actual* %119, %struct.link_socket_actual** %120, align 8
  br label %121

121:                                              ; preds = %112, %109
  %122 = load %struct.key_state*, %struct.key_state** %17, align 8
  %123 = getelementptr inbounds %struct.key_state, %struct.key_state* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @S_ERROR, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %164

127:                                              ; preds = %121
  %128 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %129 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @TM_ACTIVE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 1, i32* %14, align 4
  br label %136

136:                                              ; preds = %135, %127
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @TM_ACTIVE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %159

140:                                              ; preds = %136
  %141 = load %struct.key_state*, %struct.key_state** %18, align 8
  %142 = getelementptr inbounds %struct.key_state, %struct.key_state* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @S_ACTIVE, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %148 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %146
  %153 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %154 = load i64, i64* @TM_LAME_DUCK, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* @TM_ACTIVE, align 4
  %157 = sext i32 %156 to i64
  %158 = call i32 @move_session(%struct.tls_multi* %153, i32 %155, i64 %157, i32 1)
  br label %163

159:                                              ; preds = %146, %140, %136
  %160 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %161 = load %struct.tls_session*, %struct.tls_session** %16, align 8
  %162 = call i32 @reset_session(%struct.tls_multi* %160, %struct.tls_session* %161)
  br label %163

163:                                              ; preds = %159, %152
  br label %164

164:                                              ; preds = %163, %121
  br label %165

165:                                              ; preds = %164, %93, %71
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %26

169:                                              ; preds = %26
  %170 = call i32 (...) @update_time()
  %171 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %172 = load i32, i32* @TLS_MULTI_AUTH_STATUS_INTERVAL, align 4
  %173 = call i32 @tls_authentication_status(%struct.tls_multi* %171, i32 %172)
  store i32 %173, i32* %15, align 4
  %174 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %175 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %174, i32 0, i32 4
  %176 = load %struct.tls_session*, %struct.tls_session** %175, align 8
  %177 = load i64, i64* @TM_LAME_DUCK, align 8
  %178 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %176, i64 %177
  %179 = load i32*, i32** %10, align 8
  %180 = call i64 @lame_duck_must_die(%struct.tls_session* %178, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %169
  %183 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %184 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %183, i32 0, i32 4
  %185 = load %struct.tls_session*, %struct.tls_session** %184, align 8
  %186 = load i64, i64* @TM_LAME_DUCK, align 8
  %187 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %185, i64 %186
  %188 = call i32 @tls_session_free(%struct.tls_session* %187, i32 1)
  %189 = load i32, i32* @D_TLS_DEBUG_LOW, align 4
  %190 = call i32 (i32, i8*, ...) @msg(i32 %189, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %191

191:                                              ; preds = %182, %169
  %192 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %193 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %194 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %193, i32 0, i32 4
  %195 = load %struct.tls_session*, %struct.tls_session** %194, align 8
  %196 = load i64, i64* @TM_UNTRUSTED, align 8
  %197 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %195, i64 %196
  %198 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %197, i32 0, i32 0
  %199 = load %struct.key_state*, %struct.key_state** %198, align 8
  %200 = load i64, i64* @KS_PRIMARY, align 8
  %201 = getelementptr inbounds %struct.key_state, %struct.key_state* %199, i64 %200
  %202 = call i64 @DECRYPT_KEY_ENABLED(%struct.tls_multi* %192, %struct.key_state* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %191
  %205 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %206 = load i32, i32* @TM_ACTIVE, align 4
  %207 = load i64, i64* @TM_UNTRUSTED, align 8
  %208 = call i32 @move_session(%struct.tls_multi* %205, i32 %206, i64 %207, i32 1)
  %209 = load i32, i32* @D_TLS_DEBUG_LOW, align 4
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* @TLS_AUTHENTICATION_SUCCEEDED, align 4
  %212 = icmp eq i32 %210, %211
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %215 = call i32 (i32, i8*, ...) @msg(i32 %209, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %214)
  br label %216

216:                                              ; preds = %204, %191
  %217 = load i32, i32* %14, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %250

219:                                              ; preds = %216
  store i32 0, i32* %12, align 4
  br label %220

220:                                              ; preds = %242, %219
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %223 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %222, i32 0, i32 2
  %224 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %223, align 8
  %225 = call i64 @SIZE(%struct.TYPE_6__** %224)
  %226 = trunc i64 %225 to i32
  %227 = icmp slt i32 %221, %226
  br i1 %227, label %228, label %245

228:                                              ; preds = %220
  %229 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %230 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %229, i32 0, i32 2
  %231 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %231, i64 %233
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @S_ACTIVE, align 8
  %239 = icmp sge i64 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %228
  br label %251

241:                                              ; preds = %228
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %220

245:                                              ; preds = %220
  %246 = load %struct.tls_multi*, %struct.tls_multi** %6, align 8
  %247 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %245, %216
  br label %251

251:                                              ; preds = %250, %240
  %252 = call i32 (...) @perf_pop()
  %253 = call i32 @gc_free(%struct.gc_arena* %11)
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* @TLS_AUTHENTICATION_FAILED, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %251
  %258 = load i32, i32* @TLSMP_KILL, align 4
  br label %261

259:                                              ; preds = %251
  %260 = load i32, i32* %13, align 4
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i32 [ %258, %257 ], [ %260, %259 ]
  ret i32 %262
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @perf_push(i32) #1

declare dso_local i32 @tls_clear_error(...) #1

declare dso_local i64 @link_socket_actual_defined(i32*) #1

declare dso_local i32 @dmsg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @state_name(i64) #1

declare dso_local i32 @session_id_print(i32*, %struct.gc_arena*) #1

declare dso_local i32 @print_link_socket_actual(i32*, %struct.gc_arena*) #1

declare dso_local i32 @update_time(...) #1

declare dso_local i64 @tls_process(%struct.tls_multi*, %struct.tls_session*, %struct.buffer*, %struct.link_socket_actual**, %struct.link_socket_info*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @move_session(%struct.tls_multi*, i32, i64, i32) #1

declare dso_local i32 @reset_session(%struct.tls_multi*, %struct.tls_session*) #1

declare dso_local i32 @tls_authentication_status(%struct.tls_multi*, i32) #1

declare dso_local i64 @lame_duck_must_die(%struct.tls_session*, i32*) #1

declare dso_local i32 @tls_session_free(%struct.tls_session*, i32) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i64 @DECRYPT_KEY_ENABLED(%struct.tls_multi*, %struct.key_state*) #1

declare dso_local i64 @SIZE(%struct.TYPE_6__**) #1

declare dso_local i32 @perf_pop(...) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
