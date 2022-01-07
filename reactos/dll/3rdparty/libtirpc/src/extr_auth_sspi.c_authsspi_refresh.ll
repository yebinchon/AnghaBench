; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_refresh.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_authsspi_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i8* }
%struct.TYPE_26__ = type { i32 }
%struct.rpc_sspi_data = type { %struct.TYPE_21__, i32, i8*, i8*, %struct.TYPE_25__, i32, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { i64, i32* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.rpc_sspi_init_res = type { i64, %struct.TYPE_22__, i32, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32, i8*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i8*, i8* }

@ISC_REQ_MUTUAL_AUTH = common dso_local global i64 0, align 8
@ISC_REQ_INTEGRITY = common dso_local global i64 0, align 8
@ISC_REQ_ALLOCATE_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"in authgss_refresh()\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"trying to refresh credentials\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@RPCSEC_SSPI_INIT = common dso_local global i64 0, align 8
@SSPI_C_NO_BUFFER = common dso_local global %struct.TYPE_22__* null, align 8
@RPCSEC_SSPI_SVC_PRIVACY = common dso_local global i64 0, align 8
@ISC_REQ_CONFIDENTIALITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"The token we just received (length %d):\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SECBUFFER_VERSION = common dso_local global i8* null, align 8
@SECBUFFER_TOKEN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"calling InitializeSecurityContextA for %s\00", align 1
@SECURITY_NATIVE_DREP = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"InitializeSecurityContext failed with %x\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"The token being sent (length %d):\00", align 1
@NULLPROC = common dso_local global i32 0, align 4
@xdr_rpc_sspi_init_args = common dso_local global i64 0, align 8
@xdr_rpc_sspi_init_res = common dso_local global i64 0, align 8
@AUTH_TIMEOUT = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8
@RPCSEC_SSPI_CONTINUE_INIT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"authgss_refresh: sspi_verify_mic failed with %x\00", align 1
@SEC_E_NO_AUTHENTICATING_AUTHORITY = common dso_local global i64 0, align 8
@RPCSEC_SSPI_DATA = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"authgss_refresh: established GSS context\00", align 1
@RPC_AUTHERROR = common dso_local global i32 0, align 4
@rpc_createerr = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@bufout = common dso_local global i32 0, align 4
@min_stat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @authsspi_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @authsspi_refresh(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rpc_sspi_data*, align 8
  %7 = alloca %struct.rpc_sspi_init_res, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_23__, align 8
  %16 = alloca %struct.TYPE_23__, align 8
  %17 = alloca [1 x %struct.TYPE_24__], align 16
  %18 = alloca [1 x %struct.TYPE_24__], align 16
  %19 = alloca %struct.TYPE_22__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %22 = load i64, i64* @ISC_REQ_MUTUAL_AUTH, align 8
  %23 = load i64, i64* @ISC_REQ_INTEGRITY, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @ISC_REQ_ALLOCATE_MEMORY, align 8
  %26 = or i64 %24, %25
  store i64 %26, i64* %14, align 8
  %27 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = call %struct.rpc_sspi_data* @AUTH_PRIVATE(i32* %28)
  store %struct.rpc_sspi_data* %29, %struct.rpc_sspi_data** %6, align 8
  %30 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %31 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i8*, i8** %5, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %39 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %34
  %43 = load i8*, i8** @TRUE, align 8
  store i8* %43, i8** %3, align 8
  br label %370

44:                                               ; preds = %37
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %81

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %50 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %49, i32 0, i32 5
  %51 = call i32 @DeleteSecurityContext(i32* %50)
  %52 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %53 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  %55 = call i32 @sspi_release_buffer(%struct.TYPE_22__* %54)
  %56 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %57 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %56, i32 0, i32 5
  %58 = call i32 @SecInvalidateHandle(i32* %57)
  %59 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %60 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %64 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @mem_free(i32* %62, i64 %66)
  %68 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %69 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %72 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i8*, i8** @FALSE, align 8
  %75 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %76 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* @RPCSEC_SSPI_INIT, align 8
  %78 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %79 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  br label %81

81:                                               ; preds = %47, %44
  br label %82

82:                                               ; preds = %81
  %83 = call i32 @memset(%struct.rpc_sspi_init_res* %7, i32 0, i32 48)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SSPI_C_NO_BUFFER, align 8
  store %struct.TYPE_22__* %84, %struct.TYPE_22__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i8* null, i8** %86, align 8
  %87 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %88 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %87, i32 0, i32 9
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = call i32 @print_rpc_gss_sec(%struct.TYPE_19__* %89)
  %91 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %92 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %91, i32 0, i32 9
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @RPCSEC_SSPI_SVC_PRIVACY, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %82
  %99 = load i64, i64* @ISC_REQ_CONFIDENTIALITY, align 8
  %100 = load i64, i64* %14, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %14, align 8
  br label %102

102:                                              ; preds = %98, %82
  store i64 0, i64* %13, align 8
  br label %103

103:                                              ; preds = %345, %102
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SSPI_C_NO_BUFFER, align 8
  %106 = icmp ne %struct.TYPE_22__* %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %110)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @log_hexdump(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %114, i64 %117, i32 0)
  br label %119

119:                                              ; preds = %107, %103
  %120 = load i8*, i8** @TRUE, align 8
  %121 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %122 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %17, i64 0, i64 0
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  store %struct.TYPE_24__* %124, %struct.TYPE_24__** %125, align 8
  %126 = load i8*, i8** @SECBUFFER_VERSION, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  store i8* %126, i8** %127, align 8
  %128 = load i8*, i8** @SECBUFFER_TOKEN, align 8
  %129 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %17, i64 0, i64 0
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 16
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %17, i64 0, i64 0
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 16
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %17, i64 0, i64 0
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %140 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  %143 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %144 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %143, i32 0, i32 9
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i64, i64* %13, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %119
  br label %153

150:                                              ; preds = %119
  %151 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %152 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %151, i32 0, i32 5
  br label %153

153:                                              ; preds = %150, %149
  %154 = phi i32* [ null, %149 ], [ %152, %150 ]
  %155 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %156 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 4
  %158 = load i64, i64* %14, align 8
  %159 = load i32, i32* @SECURITY_NATIVE_DREP, align 4
  %160 = load i64, i64* %13, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %164

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163, %162
  %165 = phi %struct.TYPE_23__* [ null, %162 ], [ %16, %163 ]
  %166 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %167 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %166, i32 0, i32 5
  %168 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %169 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %168, i32 0, i32 7
  %170 = call i64 @InitializeSecurityContextA(i32* %146, i32* %154, i32 %157, i64 %158, i32 0, i32 %159, %struct.TYPE_23__* %165, i32 0, i32* %167, %struct.TYPE_23__* %15, i64* %12, i32* %169)
  store i64 %170, i64* %10, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SSPI_C_NO_BUFFER, align 8
  %173 = icmp ne %struct.TYPE_22__* %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %164
  %175 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 1
  %176 = call i32 @sspi_release_buffer(%struct.TYPE_22__* %175)
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SSPI_C_NO_BUFFER, align 8
  store %struct.TYPE_22__* %177, %struct.TYPE_22__** %8, align 8
  br label %178

178:                                              ; preds = %174, %164
  %179 = load i64, i64* %10, align 8
  %180 = load i64, i64* @SEC_E_OK, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i64, i64* %10, align 8
  %188 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %187)
  br label %348

189:                                              ; preds = %182, %178
  %190 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %17, i64 0, i64 0
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 16
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %192, i64* %193, align 8
  %194 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %17, i64 0, i64 0
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i8* %196, i8** %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %290

201:                                              ; preds = %189
  %202 = call i32 @memset(%struct.rpc_sspi_init_res* %7, i32 0, i32 48)
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %204)
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @log_hexdump(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %207, i64 %209, i32 0)
  %211 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %212 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @NULLPROC, align 4
  %215 = load i64, i64* @xdr_rpc_sspi_init_args, align 8
  %216 = trunc i64 %215 to i32
  %217 = load i64, i64* @xdr_rpc_sspi_init_res, align 8
  %218 = trunc i64 %217 to i32
  %219 = ptrtoint %struct.rpc_sspi_init_res* %7 to i32
  %220 = load i32, i32* @AUTH_TIMEOUT, align 4
  %221 = call i64 @clnt_call(i32 %213, i32 %214, i32 %216, %struct.TYPE_22__* %9, i32 %218, i32 %219, i32 %220)
  store i64 %221, i64* %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @FreeContextBuffer(i8* %223)
  %225 = load i64, i64* %11, align 8
  %226 = load i64, i64* @RPC_SUCCESS, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %238, label %228

228:                                              ; preds = %201
  %229 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @SEC_E_OK, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %233, %201
  br label %348

239:                                              ; preds = %233, %228
  %240 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %239
  %245 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %246 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 2
  %248 = call i32 @sspi_release_buffer(%struct.TYPE_22__* %247)
  %249 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %250 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 3
  %253 = bitcast %struct.TYPE_22__* %251 to i8*
  %254 = bitcast %struct.TYPE_22__* %252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 8 %254, i64 16, i1 false)
  br label %255

255:                                              ; preds = %244, %239
  %256 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %285

260:                                              ; preds = %255
  %261 = load i64, i64* %10, align 8
  %262 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  br label %348

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 1
  store %struct.TYPE_22__* %266, %struct.TYPE_22__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  store i32 1, i32* %267, align 8
  %268 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %18, i64 0, i64 0
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  store %struct.TYPE_24__* %268, %struct.TYPE_24__** %269, align 8
  %270 = load i8*, i8** @SECBUFFER_VERSION, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  store i8* %270, i8** %271, align 8
  %272 = load i8*, i8** @SECBUFFER_TOKEN, align 8
  %273 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %18, i64 0, i64 0
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 2
  store i8* %272, i8** %274, align 16
  %275 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %18, i64 0, i64 0
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 16
  %280 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 1
  %282 = load i8*, i8** %281, align 8
  %283 = getelementptr inbounds [1 x %struct.TYPE_24__], [1 x %struct.TYPE_24__]* %18, i64 0, i64 0
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 1
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %265, %255
  %286 = load i64, i64* @RPCSEC_SSPI_CONTINUE_INIT, align 8
  %287 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %288 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 0
  store i64 %286, i64* %289, align 8
  br label %290

290:                                              ; preds = %285, %189
  %291 = load i64, i64* %10, align 8
  %292 = load i64, i64* @SEC_E_OK, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %344

294:                                              ; preds = %290
  store i32 0, i32* %21, align 4
  %295 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %296 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %295, i32 0, i32 5
  %297 = call i32 @print_negotiated_attrs(i32* %296)
  %298 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @htonl(i32 %299)
  store i32 %300, i32* %20, align 4
  %301 = bitcast i32* %20 to i8*
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  store i8* %301, i8** %302, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  store i64 4, i64* %303, align 8
  %304 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %305 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %304, i32 0, i32 5
  %306 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %307 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %306, i32 0, i32 4
  %308 = call i64 @sspi_verify_mic(i32* %305, i32 0, %struct.TYPE_22__* %19, %struct.TYPE_25__* %307, i32* %21)
  store i64 %308, i64* %10, align 8
  %309 = load i64, i64* %10, align 8
  %310 = load i64, i64* @SEC_E_OK, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %325

312:                                              ; preds = %294
  %313 = load i64, i64* %10, align 8
  %314 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i64 %313)
  %315 = load i64, i64* %10, align 8
  %316 = load i64, i64* @SEC_E_NO_AUTHENTICATING_AUTHORITY, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %312
  %319 = load i8*, i8** @FALSE, align 8
  %320 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %321 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %320, i32 0, i32 3
  store i8* %319, i8** %321, align 8
  %322 = load i32*, i32** %4, align 8
  %323 = call i32 @authsspi_destroy_context(i32* %322)
  br label %324

324:                                              ; preds = %318, %312
  br label %348

325:                                              ; preds = %294
  %326 = load i8*, i8** @TRUE, align 8
  %327 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %328 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %327, i32 0, i32 3
  store i8* %326, i8** %328, align 8
  %329 = load i8*, i8** @FALSE, align 8
  %330 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %331 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %330, i32 0, i32 2
  store i8* %329, i8** %331, align 8
  %332 = load i64, i64* @RPCSEC_SSPI_DATA, align 8
  %333 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %334 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 0
  store i64 %332, i64* %335, align 8
  %336 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %337 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 1
  store i64 0, i64* %338, align 8
  %339 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %342 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %341, i32 0, i32 1
  store i32 %340, i32* %342, align 8
  %343 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %348

344:                                              ; preds = %290
  br label %345

345:                                              ; preds = %344
  %346 = load i64, i64* %13, align 8
  %347 = add nsw i64 %346, 1
  store i64 %347, i64* %13, align 8
  br label %103

348:                                              ; preds = %325, %324, %264, %238, %186
  %349 = load %struct.rpc_sspi_data*, %struct.rpc_sspi_data** %6, align 8
  %350 = getelementptr inbounds %struct.rpc_sspi_data, %struct.rpc_sspi_data* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @RPCSEC_SSPI_DATA, align 8
  %354 = icmp ne i64 %352, %353
  br i1 %354, label %355, label %368

355:                                              ; preds = %348
  %356 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.rpc_sspi_init_res, %struct.rpc_sspi_init_res* %7, i32 0, i32 1
  %362 = call i32 @sspi_release_buffer(%struct.TYPE_22__* %361)
  br label %363

363:                                              ; preds = %360, %355
  %364 = load i32*, i32** %4, align 8
  %365 = call i32 @authsspi_destroy(i32* %364)
  store i32* null, i32** %4, align 8
  %366 = load i32, i32* @RPC_AUTHERROR, align 4
  store i32 %366, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @rpc_createerr, i32 0, i32 0), align 4
  %367 = load i8*, i8** @FALSE, align 8
  store i8* %367, i8** %3, align 8
  br label %370

368:                                              ; preds = %348
  %369 = load i8*, i8** @TRUE, align 8
  store i8* %369, i8** %3, align 8
  br label %370

370:                                              ; preds = %368, %363, %42
  %371 = load i8*, i8** %3, align 8
  ret i8* %371
}

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local %struct.rpc_sspi_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @DeleteSecurityContext(i32*) #1

declare dso_local i32 @sspi_release_buffer(%struct.TYPE_22__*) #1

declare dso_local i32 @SecInvalidateHandle(i32*) #1

declare dso_local i32 @mem_free(i32*, i64) #1

declare dso_local i32 @memset(%struct.rpc_sspi_init_res*, i32, i32) #1

declare dso_local i32 @print_rpc_gss_sec(%struct.TYPE_19__*) #1

declare dso_local i32 @log_hexdump(i32, i8*, i8*, i64, i32) #1

declare dso_local i64 @InitializeSecurityContextA(i32*, i32*, i32, i64, i32, i32, %struct.TYPE_23__*, i32, i32*, %struct.TYPE_23__*, i64*, i32*) #1

declare dso_local i64 @clnt_call(i32, i32, i32, %struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @FreeContextBuffer(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @print_negotiated_attrs(i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @sspi_verify_mic(i32*, i32, %struct.TYPE_22__*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @authsspi_destroy_context(i32*) #1

declare dso_local i32 @authsspi_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
