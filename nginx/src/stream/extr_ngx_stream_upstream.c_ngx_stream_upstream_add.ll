; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream_add.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, %struct.TYPE_24__*, i64, i32*, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i64, %struct.TYPE_28__** }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32, i64, i32, i32*, i64, %struct.TYPE_22__, i32, %struct.TYPE_22__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_24__ }

@NGX_STREAM_UPSTREAM_CREATE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s in upstream \22%V\22\00", align 1
@ngx_stream_upstream_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"duplicate upstream \22%V\22\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"upstream \22%V\22 may not have port %d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"upstream \22%V\22 may not have port %d in %s:%ui\00", align 1
@AF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_28__* @ngx_stream_upstream_add(%struct.TYPE_31__* %0, %struct.TYPE_27__* %1, i64 %2) #0 {
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
  %14 = load i64, i64* @NGX_STREAM_UPSTREAM_CREATE, align 8
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
  br label %306

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %43 = load i32, i32* @ngx_stream_upstream_module, align 4
  %44 = call %struct.TYPE_30__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_31__* %42, i32 %43)
  store %struct.TYPE_30__* %44, %struct.TYPE_30__** %12, align 8
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %47, align 8
  store %struct.TYPE_28__** %48, %struct.TYPE_28__*** %11, align 8
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %201, %41
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %204

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
  br label %201

88:                                               ; preds = %69
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @NGX_STREAM_UPSTREAM_CREATE, align 8
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
  %100 = load i64, i64* @NGX_STREAM_UPSTREAM_CREATE, align 8
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
  br label %306

109:                                              ; preds = %93, %88
  %110 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %110, i64 %111
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NGX_STREAM_UPSTREAM_CREATE, align 8
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
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 (i32, %struct.TYPE_31__*, i32, i8*, %struct.TYPE_22__*, ...) @ngx_conf_log_error(i32 %125, %struct.TYPE_31__* %126, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_22__* %128, i32* %131)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %306

133:                                              ; preds = %119, %109
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* @NGX_STREAM_UPSTREAM_CREATE, align 8
  %136 = and i64 %134, %135
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %172

138:                                              ; preds = %133
  %139 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %139, i64 %140
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 2
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
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
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
  %171 = call i32 @ngx_log_error(i32 %147, i32 %150, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_22__* %152, i32* %158, i32 %164, i32 %170)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %306

172:                                              ; preds = %138, %133
  %173 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %174 = load i64, i64* %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %173, i64 %174
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %178, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %201

184:                                              ; preds = %172
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @NGX_STREAM_UPSTREAM_CREATE, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load i64, i64* %7, align 8
  %191 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %192 = load i64, i64* %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %191, i64 %192
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 0
  store i64 %190, i64* %195, align 8
  br label %196

196:                                              ; preds = %189, %184
  %197 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %198 = load i64, i64* %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %197, i64 %198
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %199, align 8
  store %struct.TYPE_28__* %200, %struct.TYPE_28__** %4, align 8
  br label %306

201:                                              ; preds = %183, %87
  %202 = load i64, i64* %8, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %8, align 8
  br label %49

204:                                              ; preds = %49
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call %struct.TYPE_28__* @ngx_pcalloc(i32 %207, i32 48)
  store %struct.TYPE_28__* %208, %struct.TYPE_28__** %10, align 8
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %210 = icmp eq %struct.TYPE_28__* %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %306

212:                                              ; preds = %204
  %213 = load i64, i64* %7, align 8
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 0
  store i64 %213, i64* %215, align 8
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 6
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 5
  %220 = bitcast %struct.TYPE_22__* %217 to i8*
  %221 = bitcast %struct.TYPE_22__* %219 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %220, i8* align 8 %221, i64 8, i1 false)
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 3
  store i32* %240, i32** %242, align 8
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 2
  store i64 %245, i64* %247, align 8
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %294

252:                                              ; preds = %212
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %263, label %257

257:                                              ; preds = %252
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @AF_UNIX, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %294

263:                                              ; preds = %257, %252
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call %struct.TYPE_24__* @ngx_array_create(i32 %266, i32 1, i32 8)
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 1
  store %struct.TYPE_24__* %267, %struct.TYPE_24__** %269, align 8
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %271, align 8
  %273 = icmp eq %struct.TYPE_24__* %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %263
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %306

275:                                              ; preds = %263
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %277, align 8
  %279 = call i8* @ngx_array_push(%struct.TYPE_24__* %278)
  %280 = bitcast i8* %279 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %280, %struct.TYPE_29__** %9, align 8
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %282 = icmp eq %struct.TYPE_29__* %281, null
  br i1 %282, label %283, label %284

283:                                              ; preds = %275
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %306

284:                                              ; preds = %275
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %286 = call i32 @ngx_memzero(%struct.TYPE_29__* %285, i32 8)
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 0
  store i32 1, i32* %293, align 4
  br label %294

294:                                              ; preds = %284, %257, %212
  %295 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %295, i32 0, i32 0
  %297 = call i8* @ngx_array_push(%struct.TYPE_24__* %296)
  %298 = bitcast i8* %297 to %struct.TYPE_28__**
  store %struct.TYPE_28__** %298, %struct.TYPE_28__*** %11, align 8
  %299 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  %300 = icmp eq %struct.TYPE_28__** %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %294
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %306

302:                                              ; preds = %294
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %304 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  store %struct.TYPE_28__* %303, %struct.TYPE_28__** %304, align 8
  %305 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__* %305, %struct.TYPE_28__** %4, align 8
  br label %306

306:                                              ; preds = %302, %301, %283, %274, %211, %196, %146, %124, %103, %39
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  ret %struct.TYPE_28__* %307
}

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_31__*, i32, i8*, %struct.TYPE_22__*, ...) #1

declare dso_local %struct.TYPE_30__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_22__*, i32*, i32, i32) #1

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
