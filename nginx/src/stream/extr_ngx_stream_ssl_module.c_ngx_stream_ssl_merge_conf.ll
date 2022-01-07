; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_ssl_module.c_ngx_stream_ssl_merge_conf.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_ssl_module.c_ngx_stream_ssl_merge_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32, i32, %struct.TYPE_43__*, %struct.TYPE_47__, i32, i32, i32*, i32, %struct.TYPE_43__*, %struct.TYPE_48__, %struct.TYPE_48__, %struct.TYPE_48__, %struct.TYPE_48__, %struct.TYPE_48__, i32, %struct.TYPE_48__, %struct.TYPE_43__*, %struct.TYPE_43__*, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_48__ = type { i64 }
%struct.TYPE_43__ = type { i64, i64 }
%struct.TYPE_45__ = type { %struct.TYPE_47__*, i32 (%struct.TYPE_47__*)* }

@NGX_CONF_BITMASK_SET = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_1 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NGX_DEFAULT_ECDH_CURVE = common dso_local global i8* null, align 8
@NGX_DEFAULT_CIPHERS = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"no \22ssl_certificate\22 is defined for the \22listen ... ssl\22 directive in %s:%ui\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [81 x i8] c"no \22ssl_certificate_key\22 is defined for the \22listen ... ssl\22 directive in %s:%ui\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"no \22ssl_certificate_key\22 is defined for certificate \22%V\22 and the \22listen ... ssl\22 directive in %s:%ui\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [103 x i8] c"variables in \22ssl_certificate\22 and \22ssl_certificate_key\22 directives are not supported on this platform\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"no ssl_client_certificate for ssl_verify_client\00", align 1
@NGX_SSL_NONE_SCACHE = common dso_local global i32 0, align 4
@ngx_stream_ssl_sess_id_ctx = common dso_local global i32 0, align 4
@SSL_OP_NO_TICKET = common dso_local global i32 0, align 4
@ngx_stream_ssl_certificate = common dso_local global i32 0, align 4
@ngx_stream_ssl_servername = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_46__*, i8*, i8*)* @ngx_stream_ssl_merge_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_ssl_merge_conf(%struct.TYPE_46__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_46__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_44__*, align 8
  %9 = alloca %struct.TYPE_44__*, align 8
  %10 = alloca %struct.TYPE_45__*, align 8
  store %struct.TYPE_46__* %0, %struct.TYPE_46__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %12, %struct.TYPE_44__** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %14, %struct.TYPE_44__** %9, align 8
  %15 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %15, i32 0, i32 23
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %18, i32 0, i32 23
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ngx_conf_merge_msec_value(i32 %17, i32 %20, i32 60000)
  %22 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ngx_conf_merge_value(i32 %24, i32 %27, i32 300)
  %29 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %32, i32 0, i32 14
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ngx_conf_merge_value(i32 %31, i32 %34, i32 0)
  %36 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %36, i32 0, i32 19
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %39, i32 0, i32 19
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NGX_CONF_BITMASK_SET, align 4
  %43 = load i32, i32* @NGX_SSL_TLSv1, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @NGX_SSL_TLSv1_1, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @NGX_SSL_TLSv1_2, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @ngx_conf_merge_bitmask_value(i32 %38, i32 %41, i32 %48)
  %50 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ngx_conf_merge_uint_value(i32 %52, i32 %55, i32 0)
  %57 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ngx_conf_merge_uint_value(i32 %59, i32 %62, i32 1)
  %64 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %64, i32 0, i32 8
  %66 = load %struct.TYPE_43__*, %struct.TYPE_43__** %65, align 8
  %67 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %67, i32 0, i32 8
  %69 = load %struct.TYPE_43__*, %struct.TYPE_43__** %68, align 8
  %70 = call i32 @ngx_conf_merge_ptr_value(%struct.TYPE_43__* %66, %struct.TYPE_43__* %69, i32* null)
  %71 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %71, i32 0, i32 17
  %73 = load %struct.TYPE_43__*, %struct.TYPE_43__** %72, align 8
  %74 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %74, i32 0, i32 17
  %76 = load %struct.TYPE_43__*, %struct.TYPE_43__** %75, align 8
  %77 = call i32 @ngx_conf_merge_ptr_value(%struct.TYPE_43__* %73, %struct.TYPE_43__* %76, i32* null)
  %78 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %78, i32 0, i32 16
  %80 = load %struct.TYPE_43__*, %struct.TYPE_43__** %79, align 8
  %81 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %81, i32 0, i32 16
  %83 = load %struct.TYPE_43__*, %struct.TYPE_43__** %82, align 8
  %84 = call i32 @ngx_conf_merge_ptr_value(%struct.TYPE_43__* %80, %struct.TYPE_43__* %83, i32* null)
  %85 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %85, i32 0, i32 10
  %87 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %87, i32 0, i32 10
  %89 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %86, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %88, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @ngx_conf_merge_str_value(i64 %90, i64 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %94, i32 0, i32 13
  %96 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %96, i32 0, i32 13
  %98 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %95, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %97, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ngx_conf_merge_str_value(i64 %99, i64 %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %103, i32 0, i32 12
  %105 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %105, i32 0, i32 12
  %107 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %104, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %106, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @ngx_conf_merge_str_value(i64 %108, i64 %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %112 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %112, i32 0, i32 11
  %114 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %113, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %115, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ngx_conf_merge_str_value(i64 %117, i64 %119, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %121 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %121, i32 0, i32 9
  %123 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %123, i32 0, i32 9
  %125 = load i8*, i8** @NGX_DEFAULT_ECDH_CURVE, align 8
  %126 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %122, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %124, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @ngx_conf_merge_str_value(i64 %127, i64 %129, i8* %125)
  %131 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %131, i32 0, i32 15
  %133 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %133, i32 0, i32 15
  %135 = load i8*, i8** @NGX_DEFAULT_CIPHERS, align 8
  %136 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %132, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %134, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @ngx_conf_merge_str_value(i64 %137, i64 %139, i8* %135)
  %141 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %147, i32 0, i32 22
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %3
  %152 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %152, i8** %4, align 8
  br label %461

153:                                              ; preds = %3
  %154 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %154, i32 0, i32 8
  %156 = load %struct.TYPE_43__*, %struct.TYPE_43__** %155, align 8
  %157 = icmp eq %struct.TYPE_43__* %156, null
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load i32, i32* @NGX_LOG_EMERG, align 4
  %160 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %163, i32 0, i32 21
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %166, i32 0, i32 20
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %159, i32 %162, i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %165, i32 %168)
  %170 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %170, i8** %4, align 8
  br label %461

171:                                              ; preds = %153
  %172 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %172, i32 0, i32 17
  %174 = load %struct.TYPE_43__*, %struct.TYPE_43__** %173, align 8
  %175 = icmp eq %struct.TYPE_43__* %174, null
  br i1 %175, label %176, label %189

176:                                              ; preds = %171
  %177 = load i32, i32* @NGX_LOG_EMERG, align 4
  %178 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %181, i32 0, i32 21
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %184, i32 0, i32 20
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %177, i32 %180, i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %183, i32 %186)
  %188 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %188, i8** %4, align 8
  br label %461

189:                                              ; preds = %171
  %190 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %190, i32 0, i32 17
  %192 = load %struct.TYPE_43__*, %struct.TYPE_43__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %195, i32 0, i32 8
  %197 = load %struct.TYPE_43__*, %struct.TYPE_43__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %194, %199
  br i1 %200, label %201, label %227

201:                                              ; preds = %189
  %202 = load i32, i32* @NGX_LOG_EMERG, align 4
  %203 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %206, i32 0, i32 8
  %208 = load %struct.TYPE_43__*, %struct.TYPE_43__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to i32*
  %212 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %212, i32 0, i32 8
  %214 = load %struct.TYPE_43__*, %struct.TYPE_43__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32, i32* %211, i64 %216
  %218 = getelementptr inbounds i32, i32* %217, i64 -1
  %219 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %219, i32 0, i32 21
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %222, i32 0, i32 20
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %202, i32 %205, i32 0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32* %218, i32 %221, i32 %224)
  %226 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %226, i8** %4, align 8
  br label %461

227:                                              ; preds = %189
  %228 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %230, i32 0, i32 19
  %232 = load i32, i32* %231, align 8
  %233 = call i64 @ngx_ssl_create(%struct.TYPE_47__* %229, i32 %232, i32* null)
  %234 = load i64, i64* @NGX_OK, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %237, i8** %4, align 8
  br label %461

238:                                              ; preds = %227
  %239 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call %struct.TYPE_45__* @ngx_pool_cleanup_add(i32 %241, i32 0)
  store %struct.TYPE_45__* %242, %struct.TYPE_45__** %10, align 8
  %243 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %244 = icmp eq %struct.TYPE_45__* %243, null
  br i1 %244, label %245, label %250

245:                                              ; preds = %238
  %246 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %246, i32 0, i32 3
  %248 = call i32 @ngx_ssl_cleanup_ctx(%struct.TYPE_47__* %247)
  %249 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %249, i8** %4, align 8
  br label %461

250:                                              ; preds = %238
  %251 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %251, i32 0, i32 1
  store i32 (%struct.TYPE_47__*)* @ngx_ssl_cleanup_ctx, i32 (%struct.TYPE_47__*)** %252, align 8
  %253 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %253, i32 0, i32 3
  %255 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %255, i32 0, i32 0
  store %struct.TYPE_47__* %254, %struct.TYPE_47__** %256, align 8
  %257 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %258 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %259 = call i64 @ngx_stream_ssl_compile_certificates(%struct.TYPE_46__* %257, %struct.TYPE_44__* %258)
  %260 = load i64, i64* @NGX_OK, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %250
  %263 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %263, i8** %4, align 8
  br label %461

264:                                              ; preds = %250
  %265 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %265, i32 0, i32 18
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %264
  %270 = load i32, i32* @NGX_LOG_EMERG, align 4
  %271 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %270, i32 %273, i32 0, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0))
  %275 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %275, i8** %4, align 8
  br label %461

276:                                              ; preds = %264
  %277 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %278 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %278, i32 0, i32 3
  %280 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %280, i32 0, i32 8
  %282 = load %struct.TYPE_43__*, %struct.TYPE_43__** %281, align 8
  %283 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %283, i32 0, i32 17
  %285 = load %struct.TYPE_43__*, %struct.TYPE_43__** %284, align 8
  %286 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %286, i32 0, i32 16
  %288 = load %struct.TYPE_43__*, %struct.TYPE_43__** %287, align 8
  %289 = call i64 @ngx_ssl_certificates(%struct.TYPE_46__* %277, %struct.TYPE_47__* %279, %struct.TYPE_43__* %282, %struct.TYPE_43__* %285, %struct.TYPE_43__* %288)
  %290 = load i64, i64* @NGX_OK, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %276
  %293 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %293, i8** %4, align 8
  br label %461

294:                                              ; preds = %276
  br label %295

295:                                              ; preds = %294
  %296 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %297 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %299, i32 0, i32 15
  %301 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %301, i32 0, i32 14
  %303 = load i32, i32* %302, align 8
  %304 = call i64 @ngx_ssl_ciphers(%struct.TYPE_46__* %296, %struct.TYPE_47__* %298, %struct.TYPE_48__* %300, i32 %303)
  %305 = load i64, i64* @NGX_OK, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %295
  %308 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %308, i8** %4, align 8
  br label %461

309:                                              ; preds = %295
  %310 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %372

314:                                              ; preds = %309
  %315 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %315, i32 0, i32 13
  %317 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %332

320:                                              ; preds = %314
  %321 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %322 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp ne i32 %323, 3
  br i1 %324, label %325, label %332

325:                                              ; preds = %320
  %326 = load i32, i32* @NGX_LOG_EMERG, align 4
  %327 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %326, i32 %329, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %331 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %331, i8** %4, align 8
  br label %461

332:                                              ; preds = %320, %314
  %333 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %334 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %334, i32 0, i32 3
  %336 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %337 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %336, i32 0, i32 13
  %338 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i64 @ngx_ssl_client_certificate(%struct.TYPE_46__* %333, %struct.TYPE_47__* %335, %struct.TYPE_48__* %337, i32 %340)
  %342 = load i64, i64* @NGX_OK, align 8
  %343 = icmp ne i64 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %332
  %345 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %345, i8** %4, align 8
  br label %461

346:                                              ; preds = %332
  %347 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %348 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %348, i32 0, i32 3
  %350 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %350, i32 0, i32 12
  %352 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %353 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i64 @ngx_ssl_trusted_certificate(%struct.TYPE_46__* %347, %struct.TYPE_47__* %349, %struct.TYPE_48__* %351, i32 %354)
  %356 = load i64, i64* @NGX_OK, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %360

358:                                              ; preds = %346
  %359 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %359, i8** %4, align 8
  br label %461

360:                                              ; preds = %346
  %361 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %362 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %362, i32 0, i32 3
  %364 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %364, i32 0, i32 11
  %366 = call i64 @ngx_ssl_crl(%struct.TYPE_46__* %361, %struct.TYPE_47__* %363, %struct.TYPE_48__* %365)
  %367 = load i64, i64* @NGX_OK, align 8
  %368 = icmp ne i64 %366, %367
  br i1 %368, label %369, label %371

369:                                              ; preds = %360
  %370 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %370, i8** %4, align 8
  br label %461

371:                                              ; preds = %360
  br label %372

372:                                              ; preds = %371, %309
  %373 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %374 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %374, i32 0, i32 3
  %376 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %376, i32 0, i32 10
  %378 = call i64 @ngx_ssl_dhparam(%struct.TYPE_46__* %373, %struct.TYPE_47__* %375, %struct.TYPE_48__* %377)
  %379 = load i64, i64* @NGX_OK, align 8
  %380 = icmp ne i64 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %372
  %382 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %382, i8** %4, align 8
  br label %461

383:                                              ; preds = %372
  %384 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %385 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %386 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %385, i32 0, i32 3
  %387 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %387, i32 0, i32 9
  %389 = call i64 @ngx_ssl_ecdh_curve(%struct.TYPE_46__* %384, %struct.TYPE_47__* %386, %struct.TYPE_48__* %388)
  %390 = load i64, i64* @NGX_OK, align 8
  %391 = icmp ne i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %383
  %393 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %393, i8** %4, align 8
  br label %461

394:                                              ; preds = %383
  %395 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %395, i32 0, i32 7
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @NGX_SSL_NONE_SCACHE, align 4
  %402 = call i32 @ngx_conf_merge_value(i32 %397, i32 %400, i32 %401)
  %403 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %403, i32 0, i32 6
  %405 = load i32*, i32** %404, align 8
  %406 = icmp eq i32* %405, null
  br i1 %406, label %407, label %413

407:                                              ; preds = %394
  %408 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %408, i32 0, i32 6
  %410 = load i32*, i32** %409, align 8
  %411 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %412 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %411, i32 0, i32 6
  store i32* %410, i32** %412, align 8
  br label %413

413:                                              ; preds = %407, %394
  %414 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %415 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %414, i32 0, i32 3
  %416 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %417 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %416, i32 0, i32 8
  %418 = load %struct.TYPE_43__*, %struct.TYPE_43__** %417, align 8
  %419 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %419, i32 0, i32 7
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %423 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %422, i32 0, i32 6
  %424 = load i32*, i32** %423, align 8
  %425 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %425, i32 0, i32 5
  %427 = load i32, i32* %426, align 4
  %428 = call i64 @ngx_ssl_session_cache(%struct.TYPE_47__* %415, i32* @ngx_stream_ssl_sess_id_ctx, %struct.TYPE_43__* %418, i32 %421, i32* %424, i32 %427)
  %429 = load i64, i64* @NGX_OK, align 8
  %430 = icmp ne i64 %428, %429
  br i1 %430, label %431, label %433

431:                                              ; preds = %413
  %432 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %432, i8** %4, align 8
  br label %461

433:                                              ; preds = %413
  %434 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %435 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @ngx_conf_merge_value(i32 %436, i32 %439, i32 1)
  %441 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %442 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %441, i32 0, i32 2
  %443 = load %struct.TYPE_43__*, %struct.TYPE_43__** %442, align 8
  %444 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %444, i32 0, i32 2
  %446 = load %struct.TYPE_43__*, %struct.TYPE_43__** %445, align 8
  %447 = call i32 @ngx_conf_merge_ptr_value(%struct.TYPE_43__* %443, %struct.TYPE_43__* %446, i32* null)
  %448 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %449 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %450 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %449, i32 0, i32 3
  %451 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %452 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %451, i32 0, i32 2
  %453 = load %struct.TYPE_43__*, %struct.TYPE_43__** %452, align 8
  %454 = call i64 @ngx_ssl_session_ticket_keys(%struct.TYPE_46__* %448, %struct.TYPE_47__* %450, %struct.TYPE_43__* %453)
  %455 = load i64, i64* @NGX_OK, align 8
  %456 = icmp ne i64 %454, %455
  br i1 %456, label %457, label %459

457:                                              ; preds = %433
  %458 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %458, i8** %4, align 8
  br label %461

459:                                              ; preds = %433
  %460 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %460, i8** %4, align 8
  br label %461

461:                                              ; preds = %459, %457, %431, %392, %381, %369, %358, %344, %325, %307, %292, %269, %262, %245, %236, %201, %176, %158, %151
  %462 = load i8*, i8** %4, align 8
  ret i8* %462
}

declare dso_local i32 @ngx_conf_merge_msec_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_bitmask_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_uint_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_ptr_value(%struct.TYPE_43__*, %struct.TYPE_43__*, i32*) #1

declare dso_local i32 @ngx_conf_merge_str_value(i64, i64, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @ngx_ssl_create(%struct.TYPE_47__*, i32, i32*) #1

declare dso_local %struct.TYPE_45__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @ngx_ssl_cleanup_ctx(%struct.TYPE_47__*) #1

declare dso_local i64 @ngx_stream_ssl_compile_certificates(%struct.TYPE_46__*, %struct.TYPE_44__*) #1

declare dso_local i64 @ngx_ssl_certificates(%struct.TYPE_46__*, %struct.TYPE_47__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*) #1

declare dso_local i64 @ngx_ssl_ciphers(%struct.TYPE_46__*, %struct.TYPE_47__*, %struct.TYPE_48__*, i32) #1

declare dso_local i64 @ngx_ssl_client_certificate(%struct.TYPE_46__*, %struct.TYPE_47__*, %struct.TYPE_48__*, i32) #1

declare dso_local i64 @ngx_ssl_trusted_certificate(%struct.TYPE_46__*, %struct.TYPE_47__*, %struct.TYPE_48__*, i32) #1

declare dso_local i64 @ngx_ssl_crl(%struct.TYPE_46__*, %struct.TYPE_47__*, %struct.TYPE_48__*) #1

declare dso_local i64 @ngx_ssl_dhparam(%struct.TYPE_46__*, %struct.TYPE_47__*, %struct.TYPE_48__*) #1

declare dso_local i64 @ngx_ssl_ecdh_curve(%struct.TYPE_46__*, %struct.TYPE_47__*, %struct.TYPE_48__*) #1

declare dso_local i64 @ngx_ssl_session_cache(%struct.TYPE_47__*, i32*, %struct.TYPE_43__*, i32, i32*, i32) #1

declare dso_local i64 @ngx_ssl_session_ticket_keys(%struct.TYPE_46__*, %struct.TYPE_47__*, %struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
