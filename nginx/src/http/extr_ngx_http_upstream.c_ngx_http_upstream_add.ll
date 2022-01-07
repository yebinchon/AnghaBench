; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_add.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_24__*, i64, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i64, %struct.TYPE_28__** }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32, i64, i32, i64, %struct.TYPE_22__, i32, %struct.TYPE_22__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_24__ }

@NGX_HTTP_UPSTREAM_CREATE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s in upstream \22%V\22\00", align 1
@ngx_http_upstream_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"duplicate upstream \22%V\22\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"upstream \22%V\22 may not have port %d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"upstream \22%V\22 may not have port %d in %s:%ui\00", align 1
@AF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_28__* @ngx_http_upstream_add(%struct.TYPE_31__* %0, %struct.TYPE_27__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__**, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @NGX_HTTP_UPSTREAM_CREATE, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %22 = call i64 @ngx_parse_url(i32 %20, %struct.TYPE_27__* %21)
  %23 = load i64, i64* @NGX_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %29 = icmp ne %struct.TYPE_22__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* @NGX_LOG_EMERG, align 4
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 6
  %38 = call i32 (i32, %struct.TYPE_31__*, i32, i8*, %struct.TYPE_22__*, ...) @ngx_conf_log_error(i32 %31, %struct.TYPE_31__* %32, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %35, i32* %37)
  br label %39

39:                                               ; preds = %30, %25
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %324

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %43 = load i32, i32* @ngx_http_upstream_module, align 4
  %44 = call %struct.TYPE_30__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_31__* %42, i32 %43)
  store %struct.TYPE_30__* %44, %struct.TYPE_30__** %12, align 8
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %47, align 8
  store %struct.TYPE_28__** %48, %struct.TYPE_28__*** %11, align 8
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %219, %41
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %222

56:                                               ; preds = %49
  %57 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %57, i64 %58
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %63, %67
  br i1 %68, label %87, label %69

69:                                               ; preds = %56
  %70 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %70, i64 %71
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @ngx_strncasecmp(i32 %76, i32 %80, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %69, %56
  br label %219

88:                                               ; preds = %69
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @NGX_HTTP_UPSTREAM_CREATE, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %88
  %94 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %94, i64 %95
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NGX_HTTP_UPSTREAM_CREATE, align 8
  %101 = and i64 %99, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %93
  %104 = load i32, i32* @NGX_LOG_EMERG, align 4
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 5
  %108 = call i32 (i32, %struct.TYPE_31__*, i32, i8*, %struct.TYPE_22__*, ...) @ngx_conf_log_error(i32 %104, %struct.TYPE_31__* %105, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_22__* %107)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %324

109:                                              ; preds = %93, %88
  %110 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %110, i64 %111
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NGX_HTTP_UPSTREAM_CREATE, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %109
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @NGX_LOG_EMERG, align 4
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i32, %struct.TYPE_31__*, i32, i8*, %struct.TYPE_22__*, ...) @ngx_conf_log_error(i32 %125, %struct.TYPE_31__* %126, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_22__* %128, i64 %131)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %324

133:                                              ; preds = %119, %109
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* @NGX_HTTP_UPSTREAM_CREATE, align 8
  %136 = and i64 %134, %135
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %172

138:                                              ; preds = %133
  %139 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %139, i64 %140
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %172, label %146

146:                                              ; preds = %138
  %147 = load i32, i32* @NGX_LOG_EMERG, align 4
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %154 = load i64, i64* %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %153, i64 %154
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %160 = load i64, i64* %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %159, i64 %160
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %165, i64 %166
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @ngx_log_error(i32 %147, i32 %150, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_22__* %152, i64 %158, i32 %164, i32 %170)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %324

172:                                              ; preds = %138, %133
  %173 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %174 = load i64, i64* %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %173, i64 %174
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %172
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %180
  %186 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %187 = load i64, i64* %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %186, i64 %187
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %191, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %185
  br label %219

197:                                              ; preds = %185, %180, %172
  %198 = load i64, i64* %7, align 8
  %199 = load i64, i64* @NGX_HTTP_UPSTREAM_CREATE, align 8
  %200 = and i64 %198, %199
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %197
  %203 = load i64, i64* %7, align 8
  %204 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %205 = load i64, i64* %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %204, i64 %205
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 0
  store i64 %203, i64* %208, align 8
  %209 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %210 = load i64, i64* %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %209, i64 %210
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %202, %197
  %215 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %216 = load i64, i64* %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %215, i64 %216
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %217, align 8
  store %struct.TYPE_28__* %218, %struct.TYPE_28__** %4, align 8
  br label %324

219:                                              ; preds = %196, %87
  %220 = load i64, i64* %8, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %8, align 8
  br label %49

222:                                              ; preds = %49
  %223 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call %struct.TYPE_28__* @ngx_pcalloc(i32 %225, i32 48)
  store %struct.TYPE_28__* %226, %struct.TYPE_28__** %10, align 8
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %228 = icmp eq %struct.TYPE_28__* %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %324

230:                                              ; preds = %222
  %231 = load i64, i64* %7, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 6
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 5
  %238 = bitcast %struct.TYPE_22__* %235 to i8*
  %239 = bitcast %struct.TYPE_22__* %237 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %238, i8* align 8 %239, i64 8, i1 false)
  %240 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 5
  store i32 %246, i32* %248, align 4
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 4
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 1
  store i64 %258, i64* %260, align 8
  %261 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 3
  store i64 %263, i64* %265, align 8
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %312

270:                                              ; preds = %230
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %270
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @AF_UNIX, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %312

281:                                              ; preds = %275, %270
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call %struct.TYPE_24__* @ngx_array_create(i32 %284, i32 1, i32 8)
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 2
  store %struct.TYPE_24__* %285, %struct.TYPE_24__** %287, align 8
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %289, align 8
  %291 = icmp eq %struct.TYPE_24__* %290, null
  br i1 %291, label %292, label %293

292:                                              ; preds = %281
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %324

293:                                              ; preds = %281
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %295, align 8
  %297 = call i8* @ngx_array_push(%struct.TYPE_24__* %296)
  %298 = bitcast i8* %297 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %298, %struct.TYPE_29__** %9, align 8
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %300 = icmp eq %struct.TYPE_29__* %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %324

302:                                              ; preds = %293
  %303 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %304 = call i32 @ngx_memzero(%struct.TYPE_29__* %303, i32 8)
  %305 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %308, i32 0, i32 1
  store i32 %307, i32* %309, align 4
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 0
  store i32 1, i32* %311, align 4
  br label %312

312:                                              ; preds = %302, %275, %230
  %313 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %313, i32 0, i32 0
  %315 = call i8* @ngx_array_push(%struct.TYPE_24__* %314)
  %316 = bitcast i8* %315 to %struct.TYPE_28__**
  store %struct.TYPE_28__** %316, %struct.TYPE_28__*** %11, align 8
  %317 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %318 = icmp eq %struct.TYPE_28__** %317, null
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %324

320:                                              ; preds = %312
  %321 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %322 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  store %struct.TYPE_28__* %321, %struct.TYPE_28__** %322, align 8
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__* %323, %struct.TYPE_28__** %4, align 8
  br label %324

324:                                              ; preds = %320, %319, %301, %292, %229, %214, %146, %124, %103, %39
  %325 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  ret %struct.TYPE_28__* %325
}

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_31__*, i32, i8*, %struct.TYPE_22__*, ...) #1

declare dso_local %struct.TYPE_30__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_22__*, i64, i32, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_24__* @ngx_array_create(i32, i32, i32) #1

declare dso_local i8* @ngx_array_push(%struct.TYPE_24__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_29__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
