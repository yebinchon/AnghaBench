; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_refresh.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_gss.c_authgss_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i8* }
%struct.TYPE_16__ = type { i32 }
%struct.rpc_gss_data = type { %struct.TYPE_14__, i32, i8*, %struct.TYPE_17__, i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.rpc_gss_init_res = type { i64, %struct.TYPE_15__, i32, %struct.TYPE_15__ }

@.str = private unnamed_addr constant [21 x i8] c"in authgss_refresh()\00", align 1
@TRUE = common dso_local global i8* null, align 8
@GSS_C_NO_BUFFER = common dso_local global %struct.TYPE_15__* null, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@GSS_S_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"gss_init_sec_context\00", align 1
@NULLPROC = common dso_local global i32 0, align 4
@xdr_rpc_gss_init_args = common dso_local global i64 0, align 8
@xdr_rpc_gss_init_res = common dso_local global i64 0, align 8
@AUTH_TIMEOUT = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@RPCSEC_GSS_CONTINUE_INIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"gss_verify_mic\00", align 1
@GSS_S_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@RPCSEC_GSS_DATA = common dso_local global i64 0, align 8
@RPC_AUTHERROR = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @authgss_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @authgss_refresh(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rpc_gss_data*, align 8
  %5 = alloca %struct.rpc_gss_init_res, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %16 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %17)
  store %struct.rpc_gss_data* %18, %struct.rpc_gss_data** %4, align 8
  %19 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i8*, i8** @TRUE, align 8
  store i8* %24, i8** %2, align 8
  br label %231

25:                                               ; preds = %1
  %26 = call i32 @memset(%struct.rpc_gss_init_res* %5, i32 0, i32 48)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** @GSS_C_NO_BUFFER, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %6, align 8
  br label %28

28:                                               ; preds = %208, %25
  %29 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %30 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %33, i32 0, i32 4
  %35 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %36 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %39 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %43 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = call i64 @gss_init_sec_context(i64* %9, i32 %32, i32* %34, i32 %37, i32 %41, i32 %45, i32 0, i32* null, %struct.TYPE_15__* %46, i32* null, %struct.TYPE_15__* %7, i64* %11, i32* null)
  store i64 %47, i64* %8, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** @GSS_C_NO_BUFFER, align 8
  %50 = icmp ne %struct.TYPE_15__* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %28
  %52 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 1
  %53 = call i32 @gss_release_buffer(i64* %9, %struct.TYPE_15__* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** @GSS_C_NO_BUFFER, align 8
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %6, align 8
  br label %55

55:                                               ; preds = %51, %28
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @GSS_S_COMPLETE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @GSS_S_CONTINUE_NEEDED, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @log_status(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %65)
  br label %209

67:                                               ; preds = %59, %55
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %141

71:                                               ; preds = %67
  %72 = call i32 @memset(%struct.rpc_gss_init_res* %5, i32 0, i32 48)
  %73 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %74 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NULLPROC, align 4
  %77 = load i64, i64* @xdr_rpc_gss_init_args, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i64, i64* @xdr_rpc_gss_init_res, align 8
  %80 = trunc i64 %79 to i32
  %81 = ptrtoint %struct.rpc_gss_init_res* %5 to i32
  %82 = load i32, i32* @AUTH_TIMEOUT, align 4
  %83 = call i64 @clnt_call(i32 %75, i32 %76, i32 %78, %struct.TYPE_15__* %7, i32 %80, i32 %81, i32 %82)
  store i64 %83, i64* %10, align 8
  %84 = call i32 @gss_release_buffer(i64* %9, %struct.TYPE_15__* %7)
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @RPC_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %71
  %89 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @GSS_S_COMPLETE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @GSS_S_CONTINUE_NEEDED, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %93, %71
  %99 = load i8*, i8** @FALSE, align 8
  store i8* %99, i8** %2, align 8
  br label %231

100:                                              ; preds = %93, %88
  %101 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %100
  %106 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %107 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %114 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = call i32 @gss_release_buffer(i64* %9, %struct.TYPE_15__* %115)
  br label %117

117:                                              ; preds = %112, %105
  %118 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %119 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 3
  %122 = bitcast %struct.TYPE_15__* %120 to i8*
  %123 = bitcast %struct.TYPE_15__* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 16, i1 false)
  br label %124

124:                                              ; preds = %117, %100
  %125 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @GSS_S_CONTINUE_NEEDED, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %209

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 1
  store %struct.TYPE_15__* %135, %struct.TYPE_15__** %6, align 8
  br label %136

136:                                              ; preds = %134, %124
  %137 = load i64, i64* @RPCSEC_GSS_CONTINUE_INIT, align 8
  %138 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %139 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  store i64 %137, i64* %140, align 8
  br label %141

141:                                              ; preds = %136, %67
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @GSS_S_COMPLETE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %208

145:                                              ; preds = %141
  store i64 0, i64* %15, align 8
  %146 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @htonl(i32 %147)
  store i64 %148, i64* %14, align 8
  %149 = bitcast i64* %14 to i8*
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i8* %149, i8** %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i64 8, i64* %151, align 8
  %152 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %153 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i8* %156, i8** %157, align 8
  %158 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %159 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i64 %162, i64* %163, align 8
  %164 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %165 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @gss_verify_mic(i64* %9, i32 %166, %struct.TYPE_15__* %12, %struct.TYPE_15__* %13, i64* %15)
  store i64 %167, i64* %8, align 8
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @GSS_S_COMPLETE, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %178, label %171

171:                                              ; preds = %145
  %172 = load i64, i64* %15, align 8
  %173 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %174 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %172, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %171, %145
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* %9, align 8
  %181 = call i32 @log_status(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %179, i64 %180)
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* @GSS_S_CONTEXT_EXPIRED, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load i8*, i8** @FALSE, align 8
  %187 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %188 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @authgss_destroy_context(i32* %189)
  br label %191

191:                                              ; preds = %185, %178
  %192 = load i8*, i8** @FALSE, align 8
  store i8* %192, i8** %2, align 8
  br label %231

193:                                              ; preds = %171
  %194 = load i8*, i8** @TRUE, align 8
  %195 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %196 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load i64, i64* @RPCSEC_GSS_DATA, align 8
  %198 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %199 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  store i64 %197, i64* %200, align 8
  %201 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %202 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  %204 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %207 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 8
  br label %209

208:                                              ; preds = %141
  br label %28

209:                                              ; preds = %193, %133, %63
  %210 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %4, align 8
  %211 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @RPCSEC_GSS_DATA, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %5, i32 0, i32 1
  %223 = call i32 @gss_release_buffer(i64* %9, %struct.TYPE_15__* %222)
  br label %224

224:                                              ; preds = %221, %216
  %225 = load i32*, i32** %3, align 8
  %226 = call i32 @authgss_destroy(i32* %225)
  store i32* null, i32** %3, align 8
  %227 = load i32, i32* @RPC_AUTHERROR, align 4
  store i32 %227, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @rpc_createerr, i32 0, i32 0), align 4
  %228 = load i8*, i8** @FALSE, align 8
  store i8* %228, i8** %2, align 8
  br label %231

229:                                              ; preds = %209
  %230 = load i8*, i8** @TRUE, align 8
  store i8* %230, i8** %2, align 8
  br label %231

231:                                              ; preds = %229, %224, %191, %98, %23
  %232 = load i8*, i8** %2, align 8
  ret i8* %232
}

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @memset(%struct.rpc_gss_init_res*, i32, i32) #1

declare dso_local i64 @gss_init_sec_context(i64*, i32, i32*, i32, i32, i32, i32, i32*, %struct.TYPE_15__*, i32*, %struct.TYPE_15__*, i64*, i32*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_15__*) #1

declare dso_local i32 @log_status(i8*, i64, i64) #1

declare dso_local i64 @clnt_call(i32, i32, i32, %struct.TYPE_15__*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @gss_verify_mic(i64*, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @authgss_destroy_context(i32*) #1

declare dso_local i32 @authgss_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
