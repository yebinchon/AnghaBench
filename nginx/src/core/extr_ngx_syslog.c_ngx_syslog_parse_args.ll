; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_syslog.c_ngx_syslog_parse_args.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_syslog.c_ngx_syslog_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_19__ = type { i64, i64, i32, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i8*, i64 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i8*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"server=\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"duplicate syslog \22server\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s in syslog server \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"facility=\00", align 1
@NGX_CONF_UNSET_UINT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"duplicate syslog \22facility\22\00", align 1
@facilities = common dso_local global i32** null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"unknown syslog facility \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"severity=\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"duplicate syslog \22severity\22\00", align 1
@severities = common dso_local global i32** null, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"unknown syslog severity \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tag=\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"duplicate syslog \22tag\22\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"syslog tag length exceeds 32\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"syslog \22tag\22 only allows alphanumeric characters and underscore\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"nohostname\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"unknown syslog parameter \22%s\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_21__*, %struct.TYPE_19__*)* @ngx_syslog_parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_syslog_parse_args(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %10, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %296, %2
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @ngx_strchr(i8* %25, i8 signext 44)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  store i64 %35, i64* %9, align 8
  %36 = load i8*, i8** %7, align 8
  store i8 0, i8* %36, align 1
  br label %52

37:                                               ; preds = %24
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  %48 = load i8*, i8** %6, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %37, %30
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @ngx_strncmp(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %105

56:                                               ; preds = %52
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* @NGX_LOG_EMERG, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ngx_conf_log_error(i32 %63, %struct.TYPE_21__* %64, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %66, i8** %3, align 8
  br label %301

67:                                               ; preds = %56
  %68 = call i32 @ngx_memzero(%struct.TYPE_18__* %11, i32 40)
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 7
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* %9, align 8
  %74 = sub i64 %73, 7
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i32 514, i32* %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @ngx_parse_url(i32 %80, %struct.TYPE_18__* %11)
  %82 = load i64, i64* @NGX_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, i32* @NGX_LOG_EMERG, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %94 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ngx_conf_log_error(i32 %89, %struct.TYPE_21__* %90, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %92, %struct.TYPE_15__* %93)
  br label %95

95:                                               ; preds = %88, %84
  %96 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %96, i8** %3, align 8
  br label %301

97:                                               ; preds = %67
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 0
  %103 = bitcast %struct.TYPE_16__* %99 to i8*
  %104 = bitcast %struct.TYPE_16__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 8, i1 false)
  br label %291

105:                                              ; preds = %52
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @ngx_strncmp(i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %151

109:                                              ; preds = %105
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32, i32* @NGX_LOG_EMERG, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ngx_conf_log_error(i32 %116, %struct.TYPE_21__* %117, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %119, i8** %3, align 8
  br label %301

120:                                              ; preds = %109
  store i64 0, i64* %12, align 8
  br label %121

121:                                              ; preds = %141, %120
  %122 = load i32**, i32*** @facilities, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %144

127:                                              ; preds = %121
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 9
  %130 = load i32**, i32*** @facilities, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = call i64 @ngx_strcmp(i8* %129, i32* %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %292

140:                                              ; preds = %127
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %12, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %12, align 8
  br label %121

144:                                              ; preds = %121
  %145 = load i32, i32* @NGX_LOG_EMERG, align 4
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 9
  %149 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ngx_conf_log_error(i32 %145, %struct.TYPE_21__* %146, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %148)
  %150 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %150, i8** %3, align 8
  br label %301

151:                                              ; preds = %105
  %152 = load i8*, i8** %6, align 8
  %153 = call i64 @ngx_strncmp(i8* %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %197

155:                                              ; preds = %151
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i32, i32* @NGX_LOG_EMERG, align 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %164 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ngx_conf_log_error(i32 %162, %struct.TYPE_21__* %163, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %165 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %165, i8** %3, align 8
  br label %301

166:                                              ; preds = %155
  store i64 0, i64* %12, align 8
  br label %167

167:                                              ; preds = %187, %166
  %168 = load i32**, i32*** @severities, align 8
  %169 = load i64, i64* %12, align 8
  %170 = getelementptr inbounds i32*, i32** %168, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %190

173:                                              ; preds = %167
  %174 = load i8*, i8** %6, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 9
  %176 = load i32**, i32*** @severities, align 8
  %177 = load i64, i64* %12, align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = call i64 @ngx_strcmp(i8* %175, i32* %179)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %173
  %183 = load i64, i64* %12, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  br label %292

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %186
  %188 = load i64, i64* %12, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %12, align 8
  br label %167

190:                                              ; preds = %167
  %191 = load i32, i32* @NGX_LOG_EMERG, align 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 9
  %195 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ngx_conf_log_error(i32 %191, %struct.TYPE_21__* %192, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %194)
  %196 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %196, i8** %3, align 8
  br label %301

197:                                              ; preds = %151
  %198 = load i8*, i8** %6, align 8
  %199 = call i64 @ngx_strncmp(i8* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %271

201:                                              ; preds = %197
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %201
  %208 = load i32, i32* @NGX_LOG_EMERG, align 4
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %210 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ngx_conf_log_error(i32 %208, %struct.TYPE_21__* %209, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %211 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %211, i8** %3, align 8
  br label %301

212:                                              ; preds = %201
  %213 = load i64, i64* %9, align 8
  %214 = sub i64 %213, 4
  %215 = icmp ugt i64 %214, 32
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load i32, i32* @NGX_LOG_EMERG, align 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %219 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ngx_conf_log_error(i32 %217, %struct.TYPE_21__* %218, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %220 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %220, i8** %3, align 8
  br label %301

221:                                              ; preds = %212
  store i64 4, i64* %12, align 8
  br label %222

222:                                              ; preds = %257, %221
  %223 = load i64, i64* %12, align 8
  %224 = load i64, i64* %9, align 8
  %225 = icmp ult i64 %223, %224
  br i1 %225, label %226, label %260

226:                                              ; preds = %222
  %227 = load i8*, i8** %6, align 8
  %228 = load i64, i64* %12, align 8
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = call signext i8 @ngx_tolower(i8 signext %230)
  store i8 %231, i8* %8, align 1
  %232 = load i8, i8* %8, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp slt i32 %233, 48
  br i1 %234, label %251, label %235

235:                                              ; preds = %226
  %236 = load i8, i8* %8, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp sgt i32 %237, 57
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = load i8, i8* %8, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp slt i32 %241, 97
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = load i8, i8* %8, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp ne i32 %245, 95
  br i1 %246, label %251, label %247

247:                                              ; preds = %243, %239, %235
  %248 = load i8, i8* %8, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp sgt i32 %249, 122
  br i1 %250, label %251, label %256

251:                                              ; preds = %247, %243, %226
  %252 = load i32, i32* @NGX_LOG_EMERG, align 4
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %254 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ngx_conf_log_error(i32 %252, %struct.TYPE_21__* %253, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0))
  %255 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %255, i8** %3, align 8
  br label %301

256:                                              ; preds = %247
  br label %257

257:                                              ; preds = %256
  %258 = load i64, i64* %12, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %12, align 8
  br label %222

260:                                              ; preds = %222
  %261 = load i8*, i8** %6, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 4
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 0
  store i8* %262, i8** %265, align 8
  %266 = load i64, i64* %9, align 8
  %267 = sub i64 %266, 4
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 1
  store i64 %267, i64* %270, align 8
  br label %288

271:                                              ; preds = %197
  %272 = load i64, i64* %9, align 8
  %273 = icmp eq i64 %272, 10
  br i1 %273, label %274, label %281

274:                                              ; preds = %271
  %275 = load i8*, i8** %6, align 8
  %276 = call i64 @ngx_strncmp(i8* %275, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 10)
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 2
  store i32 1, i32* %280, align 8
  br label %287

281:                                              ; preds = %274, %271
  %282 = load i32, i32* @NGX_LOG_EMERG, align 4
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %284 = load i8*, i8** %6, align 8
  %285 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ngx_conf_log_error(i32 %282, %struct.TYPE_21__* %283, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %284)
  %286 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %286, i8** %3, align 8
  br label %301

287:                                              ; preds = %278
  br label %288

288:                                              ; preds = %287, %260
  br label %289

289:                                              ; preds = %288
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290, %97
  br label %292

292:                                              ; preds = %291, %182, %136
  %293 = load i8*, i8** %7, align 8
  %294 = icmp eq i8* %293, null
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  br label %299

296:                                              ; preds = %292
  %297 = load i8*, i8** %7, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 1
  store i8* %298, i8** %6, align 8
  br label %24

299:                                              ; preds = %295
  %300 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %300, i8** %3, align 8
  br label %301

301:                                              ; preds = %299, %281, %251, %216, %207, %190, %161, %144, %115, %95, %62
  %302 = load i8*, i8** %3, align 8
  ret i8* %302
}

declare dso_local i64 @ngx_strchr(i8*, i8 signext) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strcmp(i8*, i32*) #1

declare dso_local signext i8 @ngx_tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
