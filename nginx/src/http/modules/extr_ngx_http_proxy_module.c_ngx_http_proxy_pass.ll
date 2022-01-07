; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_pass.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_35__, %struct.TYPE_33__, %struct.TYPE_27__, %struct.TYPE_30__, i32, i64 }
%struct.TYPE_33__ = type { i32, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_31__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, %struct.TYPE_29__, i64, i32*, i64*, %struct.TYPE_35__*, %struct.TYPE_26__* }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_25__ = type { i32, i64, i64, i64, %struct.TYPE_33__, i32 }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_proxy_handler = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"https protocol requires SSL support\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid URL prefix\00", align 1
@.str.5 = private unnamed_addr constant [158 x i8] c"\22proxy_pass\22 cannot have URI part in location given by regular expression, or inside named location, or inside \22if\22 statement, or inside \22limit_except\22 block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_26__*, i32*, i8*)* @ngx_http_proxy_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_proxy_pass(%struct.TYPE_26__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca %struct.TYPE_35__*, align 8
  %13 = alloca %struct.TYPE_34__, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_34__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %8, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %212

30:                                               ; preds = %24
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %32 = load i32, i32* @ngx_http_core_module, align 4
  %33 = call %struct.TYPE_25__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_26__* %31, i32 %32)
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %15, align 8
  %34 = load i32, i32* @ngx_http_proxy_handler, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %30
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %46, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %42, %30
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %64, align 8
  store %struct.TYPE_35__* %65, %struct.TYPE_35__** %11, align 8
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i64 1
  store %struct.TYPE_35__* %67, %struct.TYPE_35__** %12, align 8
  %68 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %69 = call i64 @ngx_http_script_variables_count(%struct.TYPE_35__* %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %60
  %73 = call i32 @ngx_memzero(%struct.TYPE_34__* %16, i32 80)
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 10
  store %struct.TYPE_26__* %74, %struct.TYPE_26__** %75, align 8
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 9
  store %struct.TYPE_35__* %76, %struct.TYPE_35__** %77, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 8
  store i64* %79, i64** %80, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 7
  store i32* %82, i32** %83, align 8
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 6
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = call i64 @ngx_http_script_compile(%struct.TYPE_34__* %16)
  %89 = load i64, i64* @NGX_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %72
  %92 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %92, i8** %4, align 8
  br label %212

93:                                               ; preds = %72
  %94 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %94, i8** %4, align 8
  br label %212

95:                                               ; preds = %60
  %96 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @ngx_strncasecmp(i64 %98, i32* bitcast ([8 x i8]* @.str.1 to i32*), i32 7)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i64 7, i64* %9, align 8
  store i32 80, i32* %10, align 4
  br label %118

102:                                              ; preds = %95
  %103 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @ngx_strncasecmp(i64 %105, i32* bitcast ([9 x i8]* @.str.2 to i32*), i32 8)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i32, i32* @NGX_LOG_EMERG, align 4
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %111 = call i32 @ngx_conf_log_error(i32 %109, %struct.TYPE_26__* %110, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %112, i8** %4, align 8
  br label %212

113:                                              ; preds = %102
  %114 = load i32, i32* @NGX_LOG_EMERG, align 4
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %116 = call i32 @ngx_conf_log_error(i32 %114, %struct.TYPE_26__* %115, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %117, i8** %4, align 8
  br label %212

118:                                              ; preds = %101
  %119 = call i32 @ngx_memzero(%struct.TYPE_34__* %13, i32 80)
  %120 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %9, align 8
  %124 = sub i64 %122, %123
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %129, %130
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load i32, i32* %10, align 4
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 2
  store i32 %134, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 3
  store i32 1, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 4
  store i32 1, i32* %137, align 8
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %139 = call i32* @ngx_http_upstream_add(%struct.TYPE_26__* %138, %struct.TYPE_34__* %13, i32 0)
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  store i32* %139, i32** %142, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %118
  %149 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %149, i8** %4, align 8
  br label %212

150:                                              ; preds = %118
  %151 = load i64, i64* %9, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 0
  store i64 %151, i64* %155, align 8
  %156 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 1
  store i64 %158, i64* %162, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 1
  %169 = bitcast %struct.TYPE_31__* %165 to i8*
  %170 = bitcast %struct.TYPE_31__* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 %170, i64 16, i1 false)
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 3
  %173 = call i32 @ngx_http_proxy_set_vars(%struct.TYPE_34__* %13, %struct.TYPE_27__* %172)
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 4
  %178 = bitcast %struct.TYPE_33__* %175 to i8*
  %179 = bitcast %struct.TYPE_33__* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 16, i1 false)
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %150
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %184, %150
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = load i32, i32* @NGX_LOG_EMERG, align 4
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %199 = call i32 @ngx_conf_log_error(i32 %197, %struct.TYPE_26__* %198, i32 0, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.5, i64 0, i64 0))
  %200 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %200, i8** %4, align 8
  br label %212

201:                                              ; preds = %189
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 0
  store i32 0, i32* %204, align 8
  br label %205

205:                                              ; preds = %201, %184
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %209 = bitcast %struct.TYPE_35__* %207 to i8*
  %210 = bitcast %struct.TYPE_35__* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %209, i8* align 8 %210, i64 16, i1 false)
  %211 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %211, i8** %4, align 8
  br label %212

212:                                              ; preds = %205, %196, %148, %113, %108, %93, %91, %29
  %213 = load i8*, i8** %4, align 8
  ret i8* %213
}

declare dso_local %struct.TYPE_25__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @ngx_http_script_variables_count(%struct.TYPE_35__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_34__*) #1

declare dso_local i64 @ngx_strncasecmp(i64, i32*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32* @ngx_http_upstream_add(%struct.TYPE_26__*, %struct.TYPE_34__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_http_proxy_set_vars(%struct.TYPE_34__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
