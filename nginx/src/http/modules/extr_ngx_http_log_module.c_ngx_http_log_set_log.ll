; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_log_module.c_ngx_http_log_set_log.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_log_module.c_ngx_http_log_set_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_39__*, i32, %struct.TYPE_43__* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_43__ = type { i32, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i8*, i64 }
%struct.TYPE_33__ = type { i32, i32* }
%struct.TYPE_45__ = type { i32, i32, %struct.TYPE_38__*, i32*, %struct.TYPE_41__*, i32*, i32*, %struct.TYPE_44__*, %struct.TYPE_36__*, %struct.TYPE_34__*, i64, i32*, i32*, %struct.TYPE_44__* }
%struct.TYPE_38__ = type { %struct.TYPE_35__*, i32 }
%struct.TYPE_35__ = type { i64, i32, %struct.TYPE_42__*, i32*, i32*, i32* }
%struct.TYPE_42__ = type { i32, i32*, i32, %struct.TYPE_38__* }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i64, i32 }
%struct.TYPE_46__ = type { i32, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i64, %struct.TYPE_34__* }

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_log_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"syslog:\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"combined\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown log format \22%V\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"buffer=\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid buffer size \22%V\22\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"flush=\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"invalid flush time \22%V\22\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"nginx was built without zlib support\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"if=\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"no buffer is defined for access_log \22%V\22\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"buffered logs cannot have variables in name\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"logs to syslog cannot be buffered\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"access_log \22%V\22 already defined with conflicting parameters\00", align 1
@ngx_http_log_flush_handler = common dso_local global i32 0, align 4
@ngx_http_log_flush = common dso_local global i32 0, align 4
@Z_BEST_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_36__*, i32*, i8*)* @ngx_http_log_set_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_log_set_log(%struct.TYPE_36__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_44__*, align 8
  %15 = alloca %struct.TYPE_44__, align 8
  %16 = alloca %struct.TYPE_44__, align 8
  %17 = alloca %struct.TYPE_45__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_35__*, align 8
  %20 = alloca %struct.TYPE_34__*, align 8
  %21 = alloca %struct.TYPE_46__*, align 8
  %22 = alloca %struct.TYPE_45__, align 8
  %23 = alloca %struct.TYPE_45__, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %25, %struct.TYPE_33__** %8, align 8
  %26 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_44__*, %struct.TYPE_44__** %29, align 8
  store %struct.TYPE_44__* %30, %struct.TYPE_44__** %14, align 8
  %31 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @ngx_strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %3
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_43__*, %struct.TYPE_43__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %47, i8** %4, align 8
  br label %622

48:                                               ; preds = %37
  %49 = load i32, i32* @NGX_LOG_EMERG, align 4
  %50 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %51 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %51, i64 2
  %53 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ngx_conf_log_error(i32 %49, %struct.TYPE_36__* %50, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_44__* %52)
  %54 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %54, i8** %4, align 8
  br label %622

55:                                               ; preds = %3
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @ngx_array_create(i32 %63, i32 2, i32 104)
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %72, i8** %4, align 8
  br label %622

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %55
  %75 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %76 = load i32, i32* @ngx_http_log_module, align 4
  %77 = call %struct.TYPE_46__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_36__* %75, i32 %76)
  store %struct.TYPE_46__* %77, %struct.TYPE_46__** %21, align 8
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call %struct.TYPE_45__* @ngx_array_push(i32* %80)
  store %struct.TYPE_45__* %81, %struct.TYPE_45__** %17, align 8
  %82 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %83 = icmp eq %struct.TYPE_45__* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %85, i8** %4, align 8
  br label %622

86:                                               ; preds = %74
  %87 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %88 = call i32 @ngx_memzero(%struct.TYPE_45__* %87, i32 104)
  %89 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @ngx_strncmp(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %86
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @ngx_pcalloc(i32 %98, i32 4)
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %18, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %104, i8** %4, align 8
  br label %622

105:                                              ; preds = %95
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %107 = load i32*, i32** %18, align 8
  %108 = call i8* @ngx_syslog_process_conf(%struct.TYPE_36__* %106, i32* %107)
  %109 = load i8*, i8** @NGX_CONF_OK, align 8
  %110 = icmp ne i8* %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %112, i8** %4, align 8
  br label %622

113:                                              ; preds = %105
  %114 = load i32*, i32** %18, align 8
  %115 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %115, i32 0, i32 3
  store i32* %114, i32** %116, align 8
  br label %192

117:                                              ; preds = %86
  %118 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %118, i64 1
  %120 = call i64 @ngx_http_script_variables_count(%struct.TYPE_44__* %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %117
  %124 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_39__*, %struct.TYPE_39__** %125, align 8
  %127 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %127, i64 1
  %129 = call %struct.TYPE_38__* @ngx_conf_open_file(%struct.TYPE_39__* %126, %struct.TYPE_44__* %128)
  %130 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %130, i32 0, i32 2
  store %struct.TYPE_38__* %129, %struct.TYPE_38__** %131, align 8
  %132 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %133, align 8
  %135 = icmp eq %struct.TYPE_38__* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %137, i8** %4, align 8
  br label %622

138:                                              ; preds = %123
  br label %191

139:                                              ; preds = %117
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_39__*, %struct.TYPE_39__** %141, align 8
  %143 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %143, i64 1
  %145 = call i64 @ngx_conf_full_name(%struct.TYPE_39__* %142, %struct.TYPE_44__* %144, i32 0)
  %146 = load i64, i64* @NGX_OK, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %149, i8** %4, align 8
  br label %622

150:                                              ; preds = %139
  %151 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @ngx_pcalloc(i32 %153, i32 4)
  %155 = bitcast i8* %154 to %struct.TYPE_41__*
  %156 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %156, i32 0, i32 4
  store %struct.TYPE_41__* %155, %struct.TYPE_41__** %157, align 8
  %158 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %158, i32 0, i32 4
  %160 = load %struct.TYPE_41__*, %struct.TYPE_41__** %159, align 8
  %161 = icmp eq %struct.TYPE_41__* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %150
  %163 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %163, i8** %4, align 8
  br label %622

164:                                              ; preds = %150
  %165 = call i32 @ngx_memzero(%struct.TYPE_45__* %22, i32 104)
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 8
  store %struct.TYPE_36__* %166, %struct.TYPE_36__** %167, align 8
  %168 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 13
  store %struct.TYPE_44__* %169, %struct.TYPE_44__** %170, align 8
  %171 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_41__*, %struct.TYPE_41__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 12
  store i32* %174, i32** %175, align 8
  %176 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_41__*, %struct.TYPE_41__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 11
  store i32* %179, i32** %180, align 8
  %181 = load i64, i64* %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 10
  store i64 %181, i64* %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 0
  store i32 1, i32* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 1
  store i32 1, i32* %184, align 4
  %185 = call i64 @ngx_http_script_compile(%struct.TYPE_45__* %22)
  %186 = load i64, i64* @NGX_OK, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %164
  %189 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %189, i8** %4, align 8
  br label %622

190:                                              ; preds = %164
  br label %191

191:                                              ; preds = %190, %138
  br label %192

192:                                              ; preds = %191, %113
  %193 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_43__*, %struct.TYPE_43__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp sge i32 %197, 3
  br i1 %198, label %199, label %212

199:                                              ; preds = %192
  %200 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %200, i64 2
  %202 = bitcast %struct.TYPE_44__* %15 to i8*
  %203 = bitcast %struct.TYPE_44__* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 %203, i64 16, i1 false)
  %204 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %15, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @ngx_strcmp(i8* %205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %199
  %209 = load %struct.TYPE_46__*, %struct.TYPE_46__** %21, align 8
  %210 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %209, i32 0, i32 0
  store i32 1, i32* %210, align 8
  br label %211

211:                                              ; preds = %208, %199
  br label %216

212:                                              ; preds = %192
  %213 = call i32 @ngx_str_set(%struct.TYPE_44__* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %214 = load %struct.TYPE_46__*, %struct.TYPE_46__** %21, align 8
  %215 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %214, i32 0, i32 0
  store i32 1, i32* %215, align 8
  br label %216

216:                                              ; preds = %212, %211
  %217 = load %struct.TYPE_46__*, %struct.TYPE_46__** %21, align 8
  %218 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_34__*, %struct.TYPE_34__** %219, align 8
  store %struct.TYPE_34__* %220, %struct.TYPE_34__** %20, align 8
  store i64 0, i64* %11, align 8
  br label %221

221:                                              ; preds = %256, %216
  %222 = load i64, i64* %11, align 8
  %223 = load %struct.TYPE_46__*, %struct.TYPE_46__** %21, align 8
  %224 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp slt i64 %222, %226
  br i1 %227, label %228, label %259

228:                                              ; preds = %221
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %230 = load i64, i64* %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %15, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %234, %236
  br i1 %237, label %238, label %255

238:                                              ; preds = %228
  %239 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %240 = load i64, i64* %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %15, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = call i64 @ngx_strcasecmp(i32 %244, i8* %246)
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %238
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %251 = load i64, i64* %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i64 %251
  %253 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %253, i32 0, i32 9
  store %struct.TYPE_34__* %252, %struct.TYPE_34__** %254, align 8
  br label %259

255:                                              ; preds = %238, %228
  br label %256

256:                                              ; preds = %255
  %257 = load i64, i64* %11, align 8
  %258 = add nsw i64 %257, 1
  store i64 %258, i64* %11, align 8
  br label %221

259:                                              ; preds = %249, %221
  %260 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %261 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %260, i32 0, i32 9
  %262 = load %struct.TYPE_34__*, %struct.TYPE_34__** %261, align 8
  %263 = icmp eq %struct.TYPE_34__* %262, null
  br i1 %263, label %264, label %269

264:                                              ; preds = %259
  %265 = load i32, i32* @NGX_LOG_EMERG, align 4
  %266 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %267 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ngx_conf_log_error(i32 %265, %struct.TYPE_36__* %266, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_44__* %15)
  %268 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %268, i8** %4, align 8
  br label %622

269:                                              ; preds = %259
  store i32 0, i32* %9, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %10, align 4
  store i64 3, i64* %11, align 8
  br label %270

270:                                              ; preds = %438, %269
  %271 = load i64, i64* %11, align 8
  %272 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_43__*, %struct.TYPE_43__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = icmp slt i64 %271, %277
  br i1 %278, label %279, label %441

279:                                              ; preds = %270
  %280 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %281 = load i64, i64* %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = call i64 @ngx_strncmp(i8* %284, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %315

287:                                              ; preds = %279
  %288 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %289 = load i64, i64* %11, align 8
  %290 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = sub nsw i64 %292, 7
  %294 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %16, i32 0, i32 1
  store i64 %293, i64* %294, align 8
  %295 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %296 = load i64, i64* %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 7
  %301 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %16, i32 0, i32 0
  store i8* %300, i8** %301, align 8
  %302 = call i32 @ngx_parse_size(%struct.TYPE_44__* %16)
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @NGX_ERROR, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %309, label %306

306:                                              ; preds = %287
  %307 = load i32, i32* %9, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %306, %287
  %310 = load i32, i32* @NGX_LOG_EMERG, align 4
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %312 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ngx_conf_log_error(i32 %310, %struct.TYPE_36__* %311, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_44__* %16)
  %313 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %313, i8** %4, align 8
  br label %622

314:                                              ; preds = %306
  br label %438

315:                                              ; preds = %279
  %316 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %317 = load i64, i64* %11, align 8
  %318 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %316, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %318, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = call i64 @ngx_strncmp(i8* %320, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %352

323:                                              ; preds = %315
  %324 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %325 = load i64, i64* %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %324, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = sub nsw i64 %328, 6
  %330 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %16, i32 0, i32 1
  store i64 %329, i64* %330, align 8
  %331 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %332 = load i64, i64* %11, align 8
  %333 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 6
  %337 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %16, i32 0, i32 0
  store i8* %336, i8** %337, align 8
  %338 = call i64 @ngx_parse_time(%struct.TYPE_44__* %16, i32 0)
  store i64 %338, i64* %13, align 8
  %339 = load i64, i64* %13, align 8
  %340 = load i32, i32* @NGX_ERROR, align 4
  %341 = sext i32 %340 to i64
  %342 = icmp eq i64 %339, %341
  br i1 %342, label %346, label %343

343:                                              ; preds = %323
  %344 = load i64, i64* %13, align 8
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %343, %323
  %347 = load i32, i32* @NGX_LOG_EMERG, align 4
  %348 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %349 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ngx_conf_log_error(i32 %347, %struct.TYPE_36__* %348, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_44__* %16)
  %350 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %350, i8** %4, align 8
  br label %622

351:                                              ; preds = %343
  br label %438

352:                                              ; preds = %315
  %353 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %354 = load i64, i64* %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %353, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = call i64 @ngx_strncmp(i8* %357, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %382

360:                                              ; preds = %352
  %361 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %362 = load i64, i64* %11, align 8
  %363 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %361, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp eq i64 %365, 4
  br i1 %366, label %377, label %367

367:                                              ; preds = %360
  %368 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %369 = load i64, i64* %11, align 8
  %370 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %368, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 4
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp eq i32 %375, 61
  br i1 %376, label %377, label %382

377:                                              ; preds = %367, %360
  %378 = load i32, i32* @NGX_LOG_EMERG, align 4
  %379 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %380 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ngx_conf_log_error(i32 %378, %struct.TYPE_36__* %379, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %381 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %381, i8** %4, align 8
  br label %622

382:                                              ; preds = %367, %352
  %383 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %384 = load i64, i64* %11, align 8
  %385 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %385, i32 0, i32 0
  %387 = load i8*, i8** %386, align 8
  %388 = call i64 @ngx_strncmp(i8* %387, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %390, label %430

390:                                              ; preds = %382
  %391 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %392 = load i64, i64* %11, align 8
  %393 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %391, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = sub nsw i64 %395, 3
  %397 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %16, i32 0, i32 1
  store i64 %396, i64* %397, align 8
  %398 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %399 = load i64, i64* %11, align 8
  %400 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %398, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %400, i32 0, i32 0
  %402 = load i8*, i8** %401, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 3
  %404 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %16, i32 0, i32 0
  store i8* %403, i8** %404, align 8
  %405 = call i32 @ngx_memzero(%struct.TYPE_45__* %23, i32 104)
  %406 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %23, i32 0, i32 8
  store %struct.TYPE_36__* %406, %struct.TYPE_36__** %407, align 8
  %408 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %23, i32 0, i32 7
  store %struct.TYPE_44__* %16, %struct.TYPE_44__** %408, align 8
  %409 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = call i32* @ngx_palloc(i32 %411, i32 4)
  %413 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %23, i32 0, i32 5
  store i32* %412, i32** %413, align 8
  %414 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %23, i32 0, i32 5
  %415 = load i32*, i32** %414, align 8
  %416 = icmp eq i32* %415, null
  br i1 %416, label %417, label %419

417:                                              ; preds = %390
  %418 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %418, i8** %4, align 8
  br label %622

419:                                              ; preds = %390
  %420 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_45__* %23)
  %421 = load i64, i64* @NGX_OK, align 8
  %422 = icmp ne i64 %420, %421
  br i1 %422, label %423, label %425

423:                                              ; preds = %419
  %424 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %424, i8** %4, align 8
  br label %622

425:                                              ; preds = %419
  %426 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %23, i32 0, i32 5
  %427 = load i32*, i32** %426, align 8
  %428 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %429 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %428, i32 0, i32 6
  store i32* %427, i32** %429, align 8
  br label %438

430:                                              ; preds = %382
  %431 = load i32, i32* @NGX_LOG_EMERG, align 4
  %432 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %433 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %434 = load i64, i64* %11, align 8
  %435 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %433, i64 %434
  %436 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ngx_conf_log_error(i32 %431, %struct.TYPE_36__* %432, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_44__* %435)
  %437 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %437, i8** %4, align 8
  br label %622

438:                                              ; preds = %425, %351, %314
  %439 = load i64, i64* %11, align 8
  %440 = add nsw i64 %439, 1
  store i64 %440, i64* %11, align 8
  br label %270

441:                                              ; preds = %270
  %442 = load i64, i64* %13, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %454

444:                                              ; preds = %441
  %445 = load i32, i32* %9, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %444
  %448 = load i32, i32* @NGX_LOG_EMERG, align 4
  %449 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %450 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %451 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %450, i64 1
  %452 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ngx_conf_log_error(i32 %448, %struct.TYPE_36__* %449, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_44__* %451)
  %453 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %453, i8** %4, align 8
  br label %622

454:                                              ; preds = %444, %441
  %455 = load i32, i32* %9, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %620

457:                                              ; preds = %454
  %458 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %459 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %458, i32 0, i32 4
  %460 = load %struct.TYPE_41__*, %struct.TYPE_41__** %459, align 8
  %461 = icmp ne %struct.TYPE_41__* %460, null
  br i1 %461, label %462, label %467

462:                                              ; preds = %457
  %463 = load i32, i32* @NGX_LOG_EMERG, align 4
  %464 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %465 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ngx_conf_log_error(i32 %463, %struct.TYPE_36__* %464, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %466 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %466, i8** %4, align 8
  br label %622

467:                                              ; preds = %457
  %468 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %469 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %468, i32 0, i32 3
  %470 = load i32*, i32** %469, align 8
  %471 = icmp ne i32* %470, null
  br i1 %471, label %472, label %477

472:                                              ; preds = %467
  %473 = load i32, i32* @NGX_LOG_EMERG, align 4
  %474 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %475 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ngx_conf_log_error(i32 %473, %struct.TYPE_36__* %474, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %476 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %476, i8** %4, align 8
  br label %622

477:                                              ; preds = %467
  %478 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %479 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %478, i32 0, i32 2
  %480 = load %struct.TYPE_38__*, %struct.TYPE_38__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %480, i32 0, i32 0
  %482 = load %struct.TYPE_35__*, %struct.TYPE_35__** %481, align 8
  %483 = icmp ne %struct.TYPE_35__* %482, null
  br i1 %483, label %484, label %524

484:                                              ; preds = %477
  %485 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %486 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %485, i32 0, i32 2
  %487 = load %struct.TYPE_38__*, %struct.TYPE_38__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %487, i32 0, i32 0
  %489 = load %struct.TYPE_35__*, %struct.TYPE_35__** %488, align 8
  store %struct.TYPE_35__* %489, %struct.TYPE_35__** %19, align 8
  %490 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %491 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %490, i32 0, i32 4
  %492 = load i32*, i32** %491, align 8
  %493 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %494 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %493, i32 0, i32 3
  %495 = load i32*, i32** %494, align 8
  %496 = ptrtoint i32* %492 to i64
  %497 = ptrtoint i32* %495 to i64
  %498 = sub i64 %496, %497
  %499 = sdiv exact i64 %498, 4
  %500 = load i32, i32* %9, align 4
  %501 = sext i32 %500 to i64
  %502 = icmp ne i64 %499, %501
  br i1 %502, label %515, label %503

503:                                              ; preds = %484
  %504 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %505 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* %13, align 8
  %508 = icmp ne i64 %506, %507
  br i1 %508, label %515, label %509

509:                                              ; preds = %503
  %510 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %511 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 8
  %513 = load i32, i32* %10, align 4
  %514 = icmp ne i32 %512, %513
  br i1 %514, label %515, label %522

515:                                              ; preds = %509, %503, %484
  %516 = load i32, i32* @NGX_LOG_EMERG, align 4
  %517 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %518 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %519 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %518, i64 1
  %520 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ngx_conf_log_error(i32 %516, %struct.TYPE_36__* %517, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_44__* %519)
  %521 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %521, i8** %4, align 8
  br label %622

522:                                              ; preds = %509
  %523 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %523, i8** %4, align 8
  br label %622

524:                                              ; preds = %477
  %525 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %526 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 8
  %528 = call i8* @ngx_pcalloc(i32 %527, i32 48)
  %529 = bitcast i8* %528 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %529, %struct.TYPE_35__** %19, align 8
  %530 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %531 = icmp eq %struct.TYPE_35__* %530, null
  br i1 %531, label %532, label %534

532:                                              ; preds = %524
  %533 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %533, i8** %4, align 8
  br label %622

534:                                              ; preds = %524
  %535 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %536 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 8
  %538 = load i32, i32* %9, align 4
  %539 = call i32* @ngx_pnalloc(i32 %537, i32 %538)
  %540 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %541 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %540, i32 0, i32 3
  store i32* %539, i32** %541, align 8
  %542 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %543 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %542, i32 0, i32 3
  %544 = load i32*, i32** %543, align 8
  %545 = icmp eq i32* %544, null
  br i1 %545, label %546, label %548

546:                                              ; preds = %534
  %547 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %547, i8** %4, align 8
  br label %622

548:                                              ; preds = %534
  %549 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %550 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %549, i32 0, i32 3
  %551 = load i32*, i32** %550, align 8
  %552 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %553 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %552, i32 0, i32 5
  store i32* %551, i32** %553, align 8
  %554 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %555 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %554, i32 0, i32 3
  %556 = load i32*, i32** %555, align 8
  %557 = load i32, i32* %9, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  %560 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %561 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %560, i32 0, i32 4
  store i32* %559, i32** %561, align 8
  %562 = load i64, i64* %13, align 8
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %606

564:                                              ; preds = %548
  %565 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %566 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 8
  %568 = call i8* @ngx_pcalloc(i32 %567, i32 4)
  %569 = bitcast i8* %568 to %struct.TYPE_42__*
  %570 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %571 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %570, i32 0, i32 2
  store %struct.TYPE_42__* %569, %struct.TYPE_42__** %571, align 8
  %572 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %573 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %572, i32 0, i32 2
  %574 = load %struct.TYPE_42__*, %struct.TYPE_42__** %573, align 8
  %575 = icmp eq %struct.TYPE_42__* %574, null
  br i1 %575, label %576, label %578

576:                                              ; preds = %564
  %577 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %577, i8** %4, align 8
  br label %622

578:                                              ; preds = %564
  %579 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %580 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %579, i32 0, i32 2
  %581 = load %struct.TYPE_38__*, %struct.TYPE_38__** %580, align 8
  %582 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %583 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %582, i32 0, i32 2
  %584 = load %struct.TYPE_42__*, %struct.TYPE_42__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %584, i32 0, i32 3
  store %struct.TYPE_38__* %581, %struct.TYPE_38__** %585, align 8
  %586 = load i32, i32* @ngx_http_log_flush_handler, align 4
  %587 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %588 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %587, i32 0, i32 2
  %589 = load %struct.TYPE_42__*, %struct.TYPE_42__** %588, align 8
  %590 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %589, i32 0, i32 2
  store i32 %586, i32* %590, align 8
  %591 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %592 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %591, i32 0, i32 0
  %593 = load %struct.TYPE_39__*, %struct.TYPE_39__** %592, align 8
  %594 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %593, i32 0, i32 0
  %595 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %596 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %595, i32 0, i32 2
  %597 = load %struct.TYPE_42__*, %struct.TYPE_42__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %597, i32 0, i32 1
  store i32* %594, i32** %598, align 8
  %599 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %600 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %599, i32 0, i32 2
  %601 = load %struct.TYPE_42__*, %struct.TYPE_42__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %601, i32 0, i32 0
  store i32 1, i32* %602, align 8
  %603 = load i64, i64* %13, align 8
  %604 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %605 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %604, i32 0, i32 0
  store i64 %603, i64* %605, align 8
  br label %606

606:                                              ; preds = %578, %548
  %607 = load i32, i32* %10, align 4
  %608 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %609 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %608, i32 0, i32 1
  store i32 %607, i32* %609, align 8
  %610 = load i32, i32* @ngx_http_log_flush, align 4
  %611 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %612 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %611, i32 0, i32 2
  %613 = load %struct.TYPE_38__*, %struct.TYPE_38__** %612, align 8
  %614 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %613, i32 0, i32 1
  store i32 %610, i32* %614, align 8
  %615 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %616 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %617 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %616, i32 0, i32 2
  %618 = load %struct.TYPE_38__*, %struct.TYPE_38__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %618, i32 0, i32 0
  store %struct.TYPE_35__* %615, %struct.TYPE_35__** %619, align 8
  br label %620

620:                                              ; preds = %606, %454
  %621 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %621, i8** %4, align 8
  br label %622

622:                                              ; preds = %620, %576, %546, %532, %522, %515, %472, %462, %447, %430, %423, %417, %377, %346, %309, %264, %188, %162, %148, %136, %111, %103, %84, %71, %48, %46
  %623 = load i8*, i8** %4, align 8
  ret i8* %623
}

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_36__*, i32, i8*, ...) #1

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_46__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_36__*, i32) #1

declare dso_local %struct.TYPE_45__* @ngx_array_push(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_45__*, i32) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i8* @ngx_syslog_process_conf(%struct.TYPE_36__*, i32*) #1

declare dso_local i64 @ngx_http_script_variables_count(%struct.TYPE_44__*) #1

declare dso_local %struct.TYPE_38__* @ngx_conf_open_file(%struct.TYPE_39__*, %struct.TYPE_44__*) #1

declare dso_local i64 @ngx_conf_full_name(%struct.TYPE_39__*, %struct.TYPE_44__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_45__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_str_set(%struct.TYPE_44__*, i8*) #1

declare dso_local i64 @ngx_strcasecmp(i32, i8*) #1

declare dso_local i32 @ngx_parse_size(%struct.TYPE_44__*) #1

declare dso_local i64 @ngx_parse_time(%struct.TYPE_44__*, i32) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_45__*) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
