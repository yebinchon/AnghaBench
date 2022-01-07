; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c__svcauth_gss.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_svc_auth_gss.c__svcauth_gss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.svc_req = type { i8*, i8*, %struct.TYPE_9__*, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.rpc_msg = type { i32 }
%struct.svc_rpc_gss_data = type { i32, i32, i32, i32, i8*, i64, i64 }
%struct.rpc_gss_cred = type { i64, i64, i64, i32 }
%struct.rpc_gss_init_res = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"in svcauth_gss()\00", align 1
@_null_auth = common dso_local global i32 0, align 4
@svc_auth_none = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"svcauth_gss: out_of_memory\0A\00", align 1
@AUTH_FAILED = common dso_local global i32 0, align 4
@svc_auth_gss_ops = common dso_local global i32 0, align 4
@AUTH_BADCRED = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i32 0, align 4
@RPCSEC_GSS_VERSION = common dso_local global i64 0, align 8
@RPCSEC_GSS_SVC_NONE = common dso_local global i64 0, align 8
@RPCSEC_GSS_SVC_INTEGRITY = common dso_local global i64 0, align 8
@RPCSEC_GSS_SVC_PRIVACY = common dso_local global i64 0, align 8
@MAXSEQ = common dso_local global i64 0, align 8
@RPCSEC_GSS_CTXPROBLEM = common dso_local global i32 0, align 4
@NULLPROC = common dso_local global i32 0, align 4
@_svcauth_gss_name = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@AUTH_REJECTEDCRED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@xdr_rpc_gss_init_res = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@RPCSEC_GSS_CREDPROBLEM = common dso_local global i32 0, align 4
@AUTH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_svcauth_gss(%struct.svc_req* %0, %struct.rpc_msg* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca %struct.rpc_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.svc_rpc_gss_data*, align 8
  %11 = alloca %struct.rpc_gss_cred*, align 8
  %12 = alloca %struct.rpc_gss_init_res, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.svc_req* %0, %struct.svc_req** %5, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = call i32 @log_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @_null_auth, align 4
  %17 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %18 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 8
  %21 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %22 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %29 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp eq %struct.TYPE_8__* %32, @svc_auth_none
  br i1 %33, label %34, label %62

34:                                               ; preds = %27, %3
  %35 = call i8* @calloc(i32 16, i32 1)
  %36 = bitcast i8* %35 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %9, align 8
  %37 = icmp eq %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %41, i32* %4, align 4
  br label %346

42:                                               ; preds = %34
  %43 = call i8* @calloc(i32 40, i32 1)
  %44 = bitcast i8* %43 to %struct.svc_rpc_gss_data*
  store %struct.svc_rpc_gss_data* %44, %struct.svc_rpc_gss_data** %10, align 8
  %45 = icmp eq %struct.svc_rpc_gss_data* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %49, i32* %4, align 4
  br label %346

50:                                               ; preds = %42
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32* @svc_auth_gss_ops, i32** %52, align 8
  %53 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %54 = ptrtoint %struct.svc_rpc_gss_data* %53 to i64
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %59 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %61, align 8
  br label %69

62:                                               ; preds = %27
  %63 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %64 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %63, i32 0, i32 2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call %struct.svc_rpc_gss_data* @SVCAUTH_PRIVATE(%struct.TYPE_8__* %67)
  store %struct.svc_rpc_gss_data* %68, %struct.svc_rpc_gss_data** %10, align 8
  br label %69

69:                                               ; preds = %62, %50
  %70 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %71 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %76, i32* %4, align 4
  br label %346

77:                                               ; preds = %69
  %78 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %79 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.rpc_gss_cred*
  store %struct.rpc_gss_cred* %81, %struct.rpc_gss_cred** %11, align 8
  %82 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %83 = call i32 @memset(%struct.rpc_gss_cred* %82, i32 0, i32 32)
  %84 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %85 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %89 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @XDR_DECODE, align 4
  %93 = call i32 @xdrmem_create(i32* %8, i32 %87, i32 %91, i32 %92)
  %94 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %95 = call i32 @xdr_rpc_gss_cred(i32* %8, %struct.rpc_gss_cred* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %77
  %98 = call i32 @XDR_DESTROY(i32* %8)
  %99 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %99, i32* %4, align 4
  br label %346

100:                                              ; preds = %77
  %101 = call i32 @XDR_DESTROY(i32* %8)
  %102 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %103 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @RPCSEC_GSS_VERSION, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %108, i32* %4, align 4
  br label %346

109:                                              ; preds = %100
  %110 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %111 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @RPCSEC_GSS_SVC_NONE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %117 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @RPCSEC_GSS_SVC_INTEGRITY, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %123 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @RPCSEC_GSS_SVC_PRIVACY, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @AUTH_BADCRED, align 4
  store i32 %128, i32* %4, align 4
  br label %346

129:                                              ; preds = %121, %115, %109
  %130 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %131 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %130, i32 0, i32 4
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %198

134:                                              ; preds = %129
  %135 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %136 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @MAXSEQ, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @RPCSEC_GSS_CTXPROBLEM, align 4
  store i32 %141, i32* %4, align 4
  br label %346

142:                                              ; preds = %134
  %143 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %144 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %148 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %146, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %14, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %142
  %154 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %155 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %159 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %164 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, %162
  store i32 %166, i32* %164, align 4
  store i32 0, i32* %14, align 4
  br label %185

167:                                              ; preds = %142
  %168 = load i32, i32* %14, align 4
  %169 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %170 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp sge i32 %168, %171
  br i1 %172, label %181, label %173

173:                                              ; preds = %167
  %174 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %175 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %14, align 4
  %178 = shl i32 1, %177
  %179 = and i32 %176, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %173, %167
  %182 = load i32*, i32** %7, align 8
  store i32 1, i32* %182, align 4
  %183 = load i32, i32* @RPCSEC_GSS_CTXPROBLEM, align 4
  store i32 %183, i32* %4, align 4
  br label %346

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184, %153
  %186 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %187 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %191 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %14, align 4
  %193 = shl i32 1, %192
  %194 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %195 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %185, %129
  %199 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %200 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %199, i32 0, i32 4
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %216

203:                                              ; preds = %198
  %204 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %205 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %204, i32 0, i32 6
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i8*
  %208 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %209 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %208, i32 0, i32 0
  store i8* %207, i8** %209, align 8
  %210 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %211 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %210, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %215 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  br label %216

216:                                              ; preds = %203, %198
  %217 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %218 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  switch i32 %219, label %342 [
    i32 128, label %220
    i32 131, label %220
    i32 130, label %281
    i32 129, label %300
  ]

220:                                              ; preds = %216, %216
  %221 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %222 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @NULLPROC, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  %227 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %227, i32* %4, align 4
  br label %346

228:                                              ; preds = %220
  %229 = load i32*, i32** @_svcauth_gss_name, align 8
  %230 = icmp eq i32* %229, null
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = call i32 @svcauth_gss_import_name(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %235, i32* %4, align 4
  br label %346

236:                                              ; preds = %231
  br label %237

237:                                              ; preds = %236, %228
  %238 = call i32 (...) @svcauth_gss_acquire_cred()
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %241, i32* %4, align 4
  br label %346

242:                                              ; preds = %237
  %243 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %244 = call i32 @svcauth_gss_accept_sec_context(%struct.svc_req* %243, %struct.rpc_gss_init_res* %12)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %242
  %247 = load i32, i32* @AUTH_REJECTEDCRED, align 4
  store i32 %247, i32* %4, align 4
  br label %346

248:                                              ; preds = %242
  %249 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %250 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %12, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @htonl(i32 %251)
  %253 = call i32 @svcauth_gss_nextverf(%struct.svc_req* %249, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %248
  %256 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %256, i32* %4, align 4
  br label %346

257:                                              ; preds = %248
  %258 = load i8*, i8** @TRUE, align 8
  %259 = ptrtoint i8* %258 to i32
  %260 = load i32*, i32** %7, align 8
  store i32 %259, i32* %260, align 4
  %261 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %262 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %261, i32 0, i32 2
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %262, align 8
  %264 = load i32, i32* @xdr_rpc_gss_init_res, align 4
  %265 = ptrtoint %struct.rpc_gss_init_res* %12 to i64
  %266 = call i32 @svc_sendreply(%struct.TYPE_9__* %263, i32 %264, i64 %265)
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* %13, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %257
  %270 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %270, i32* %4, align 4
  br label %346

271:                                              ; preds = %257
  %272 = getelementptr inbounds %struct.rpc_gss_init_res, %struct.rpc_gss_init_res* %12, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @GSS_S_COMPLETE, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = load i8*, i8** @TRUE, align 8
  %278 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %279 = getelementptr inbounds %struct.svc_rpc_gss_data, %struct.svc_rpc_gss_data* %278, i32 0, i32 4
  store i8* %277, i8** %279, align 8
  br label %280

280:                                              ; preds = %276, %271
  br label %344

281:                                              ; preds = %216
  %282 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %283 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %284 = call i32 @svcauth_gss_validate(%struct.svc_rpc_gss_data* %282, %struct.rpc_msg* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %281
  %287 = load i32, i32* @RPCSEC_GSS_CREDPROBLEM, align 4
  store i32 %287, i32* %4, align 4
  br label %346

288:                                              ; preds = %281
  %289 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %290 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %291 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = trunc i64 %292 to i32
  %294 = call i32 @htonl(i32 %293)
  %295 = call i32 @svcauth_gss_nextverf(%struct.svc_req* %289, i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %288
  %298 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %298, i32* %4, align 4
  br label %346

299:                                              ; preds = %288
  br label %344

300:                                              ; preds = %216
  %301 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %302 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @NULLPROC, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %300
  %307 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %307, i32* %4, align 4
  br label %346

308:                                              ; preds = %300
  %309 = load %struct.svc_rpc_gss_data*, %struct.svc_rpc_gss_data** %10, align 8
  %310 = load %struct.rpc_msg*, %struct.rpc_msg** %6, align 8
  %311 = call i32 @svcauth_gss_validate(%struct.svc_rpc_gss_data* %309, %struct.rpc_msg* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %315, label %313

313:                                              ; preds = %308
  %314 = load i32, i32* @RPCSEC_GSS_CREDPROBLEM, align 4
  store i32 %314, i32* %4, align 4
  br label %346

315:                                              ; preds = %308
  %316 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %317 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %11, align 8
  %318 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = trunc i64 %319 to i32
  %321 = call i32 @htonl(i32 %320)
  %322 = call i32 @svcauth_gss_nextverf(%struct.svc_req* %316, i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %326, label %324

324:                                              ; preds = %315
  %325 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %325, i32* %4, align 4
  br label %346

326:                                              ; preds = %315
  %327 = call i32 (...) @svcauth_gss_release_cred()
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* @AUTH_FAILED, align 4
  store i32 %330, i32* %4, align 4
  br label %346

331:                                              ; preds = %326
  %332 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %333 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %332, i32 0, i32 2
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %335, align 8
  %337 = call i32 @SVCAUTH_DESTROY(%struct.TYPE_8__* %336)
  %338 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %339 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %338, i32 0, i32 2
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 0
  store %struct.TYPE_8__* @svc_auth_none, %struct.TYPE_8__** %341, align 8
  br label %344

342:                                              ; preds = %216
  %343 = load i32, i32* @AUTH_REJECTEDCRED, align 4
  store i32 %343, i32* %4, align 4
  br label %346

344:                                              ; preds = %331, %299, %280
  %345 = load i32, i32* @AUTH_OK, align 4
  store i32 %345, i32* %4, align 4
  br label %346

346:                                              ; preds = %344, %342, %329, %324, %313, %306, %297, %286, %269, %255, %246, %240, %234, %226, %181, %140, %127, %107, %97, %75, %46, %38
  %347 = load i32, i32* %4, align 4
  ret i32 %347
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.svc_rpc_gss_data* @SVCAUTH_PRIVATE(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.rpc_gss_cred*, i32, i32) #1

declare dso_local i32 @xdrmem_create(i32*, i32, i32, i32) #1

declare dso_local i32 @xdr_rpc_gss_cred(i32*, %struct.rpc_gss_cred*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

declare dso_local i32 @svcauth_gss_import_name(i8*) #1

declare dso_local i32 @svcauth_gss_acquire_cred(...) #1

declare dso_local i32 @svcauth_gss_accept_sec_context(%struct.svc_req*, %struct.rpc_gss_init_res*) #1

declare dso_local i32 @svcauth_gss_nextverf(%struct.svc_req*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @svc_sendreply(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @svcauth_gss_validate(%struct.svc_rpc_gss_data*, %struct.rpc_msg*) #1

declare dso_local i32 @svcauth_gss_release_cred(...) #1

declare dso_local i32 @SVCAUTH_DESTROY(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
