; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_headers.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { i64, i32, i32, i32, i64, %struct.TYPE_56__, i32 }
%struct.TYPE_56__ = type { i32, i32, i32, %struct.TYPE_55__*, %struct.TYPE_53__* }
%struct.TYPE_55__ = type { i64, %struct.TYPE_54__ }
%struct.TYPE_54__ = type { i32* }
%struct.TYPE_53__ = type { i64, %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i32* }
%struct.TYPE_45__ = type { i32, %struct.TYPE_41__*, i32, %struct.TYPE_57__ }
%struct.TYPE_41__ = type { i32, i64, i32 }
%struct.TYPE_57__ = type { i32, i32, i32, %struct.TYPE_50__, %struct.TYPE_49__* }
%struct.TYPE_50__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i64, %struct.TYPE_42__*, %struct.TYPE_44__* }
%struct.TYPE_42__ = type { %struct.TYPE_51__, i32, i32 }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_49__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i8* }
%struct.TYPE_47__ = type { i64 (%struct.TYPE_48__*, %struct.TYPE_42__*, i32)*, i32, i64 }
%struct.TYPE_46__ = type { i32 }

@ngx_http_upstream_module = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_IGN_XA_REDIRECT = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_LOG_UNSAFE = common dso_local global i64 0, align 8
@NGX_HTTP_NOT_FOUND = common dso_local global i64 0, align 8
@NGX_HTTP_HEAD = common dso_local global i64 0, align 8
@NGX_HTTP_GET = common dso_local global i64 0, align 8
@ngx_http_core_get_method = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_48__*, %struct.TYPE_45__*)* @ngx_http_upstream_process_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_process_headers(%struct.TYPE_48__* %0, %struct.TYPE_45__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_48__*, align 8
  %5 = alloca %struct.TYPE_45__*, align 8
  %6 = alloca %struct.TYPE_43__, align 8
  %7 = alloca %struct.TYPE_43__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca %struct.TYPE_42__*, align 8
  %12 = alloca %struct.TYPE_47__*, align 8
  %13 = alloca %struct.TYPE_46__*, align 8
  store %struct.TYPE_48__* %0, %struct.TYPE_48__** %4, align 8
  store %struct.TYPE_45__* %1, %struct.TYPE_45__** %5, align 8
  %14 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %15 = load i32, i32* @ngx_http_upstream_module, align 4
  %16 = call %struct.TYPE_46__* @ngx_http_get_module_main_conf(%struct.TYPE_48__* %14, i32 %15)
  store %struct.TYPE_46__* %16, %struct.TYPE_46__** %13, align 8
  %17 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_49__*, %struct.TYPE_49__** %19, align 8
  %21 = icmp ne %struct.TYPE_49__* %20, null
  br i1 %21, label %22, label %163

22:                                               ; preds = %2
  %23 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NGX_HTTP_UPSTREAM_IGN_XA_REDIRECT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %163, label %31

31:                                               ; preds = %22
  %32 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %33 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %34 = load i64, i64* @NGX_DECLINED, align 8
  %35 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_48__* %32, %struct.TYPE_45__* %33, i64 %34)
  %36 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %38, i32 0, i32 0
  store %struct.TYPE_44__* %39, %struct.TYPE_44__** %10, align 8
  %40 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_42__*, %struct.TYPE_42__** %41, align 8
  store %struct.TYPE_42__* %42, %struct.TYPE_42__** %11, align 8
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %110, %31
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_44__*, %struct.TYPE_44__** %51, align 8
  %53 = icmp eq %struct.TYPE_44__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %113

55:                                               ; preds = %49
  %56 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_44__*, %struct.TYPE_44__** %57, align 8
  store %struct.TYPE_44__* %58, %struct.TYPE_44__** %10, align 8
  %59 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_42__*, %struct.TYPE_42__** %60, align 8
  store %struct.TYPE_42__* %61, %struct.TYPE_42__** %11, align 8
  store i64 0, i64* %8, align 8
  br label %62

62:                                               ; preds = %55, %43
  %63 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_47__* @ngx_hash_find(i32* %64, i32 %69, i32 %74, i32 %80)
  store %struct.TYPE_47__* %81, %struct.TYPE_47__** %12, align 8
  %82 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %83 = icmp ne %struct.TYPE_47__* %82, null
  br i1 %83, label %84, label %109

84:                                               ; preds = %62
  %85 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  %90 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %90, i32 0, i32 0
  %92 = load i64 (%struct.TYPE_48__*, %struct.TYPE_42__*, i32)*, i64 (%struct.TYPE_48__*, %struct.TYPE_42__*, i32)** %91, align 8
  %93 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %94 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %94, i64 %95
  %97 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 %92(%struct.TYPE_48__* %93, %struct.TYPE_42__* %96, i32 %99)
  %101 = load i64, i64* @NGX_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %105 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %106 = call i32 @ngx_http_finalize_request(%struct.TYPE_48__* %104, i64 %105)
  %107 = load i64, i64* @NGX_DONE, align 8
  store i64 %107, i64* %3, align 8
  br label %362

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %108, %84, %62
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %8, align 8
  br label %43

113:                                              ; preds = %54
  %114 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_49__*, %struct.TYPE_49__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %117, i32 0, i32 0
  %119 = bitcast %struct.TYPE_43__* %6 to i8*
  %120 = bitcast %struct.TYPE_43__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 8, i1 false)
  %121 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %6, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 64
  br i1 %126, label %127, label %130

127:                                              ; preds = %113
  %128 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %129 = call i32 @ngx_http_named_location(%struct.TYPE_48__* %128, %struct.TYPE_43__* %6)
  br label %158

130:                                              ; preds = %113
  %131 = call i32 @ngx_str_null(%struct.TYPE_43__* %7)
  %132 = load i64, i64* @NGX_HTTP_LOG_UNSAFE, align 8
  store i64 %132, i64* %9, align 8
  %133 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %134 = call i64 @ngx_http_parse_unsafe_uri(%struct.TYPE_48__* %133, %struct.TYPE_43__* %6, %struct.TYPE_43__* %7, i64* %9)
  %135 = load i64, i64* @NGX_OK, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %139 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  %140 = call i32 @ngx_http_finalize_request(%struct.TYPE_48__* %138, i64 %139)
  %141 = load i64, i64* @NGX_DONE, align 8
  store i64 %141, i64* %3, align 8
  br label %362

142:                                              ; preds = %130
  %143 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @NGX_HTTP_HEAD, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load i64, i64* @NGX_HTTP_GET, align 8
  %150 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @ngx_http_core_get_method, align 4
  %153 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %148, %142
  %156 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %157 = call i32 @ngx_http_internal_redirect(%struct.TYPE_48__* %156, %struct.TYPE_43__* %6, %struct.TYPE_43__* %7)
  br label %158

158:                                              ; preds = %155, %127
  %159 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %160 = load i64, i64* @NGX_DONE, align 8
  %161 = call i32 @ngx_http_finalize_request(%struct.TYPE_48__* %159, i64 %160)
  %162 = load i64, i64* @NGX_DONE, align 8
  store i64 %162, i64* %3, align 8
  br label %362

163:                                              ; preds = %22, %2
  %164 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %166, i32 0, i32 0
  store %struct.TYPE_44__* %167, %struct.TYPE_44__** %10, align 8
  %168 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_42__*, %struct.TYPE_42__** %169, align 8
  store %struct.TYPE_42__* %170, %struct.TYPE_42__** %11, align 8
  store i64 0, i64* %8, align 8
  br label %171

171:                                              ; preds = %272, %163
  %172 = load i64, i64* %8, align 8
  %173 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp uge i64 %172, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %171
  %178 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_44__*, %struct.TYPE_44__** %179, align 8
  %181 = icmp eq %struct.TYPE_44__* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %275

183:                                              ; preds = %177
  %184 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_44__*, %struct.TYPE_44__** %185, align 8
  store %struct.TYPE_44__* %186, %struct.TYPE_44__** %10, align 8
  %187 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_42__*, %struct.TYPE_42__** %188, align 8
  store %struct.TYPE_42__* %189, %struct.TYPE_42__** %11, align 8
  store i64 0, i64* %8, align 8
  br label %190

190:                                              ; preds = %183, %171
  %191 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_41__*, %struct.TYPE_41__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %196 = load i64, i64* %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %201 = load i64, i64* %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %206 = load i64, i64* %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call %struct.TYPE_47__* @ngx_hash_find(i32* %194, i32 %199, i32 %204, i32 %210)
  %212 = icmp ne %struct.TYPE_47__* %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %190
  br label %272

214:                                              ; preds = %190
  %215 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %218 = load i64, i64* %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %223 = load i64, i64* %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %228 = load i64, i64* %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call %struct.TYPE_47__* @ngx_hash_find(i32* %216, i32 %221, i32 %226, i32 %232)
  store %struct.TYPE_47__* %233, %struct.TYPE_47__** %12, align 8
  %234 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %235 = icmp ne %struct.TYPE_47__* %234, null
  br i1 %235, label %236, label %257

236:                                              ; preds = %214
  %237 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %237, i32 0, i32 0
  %239 = load i64 (%struct.TYPE_48__*, %struct.TYPE_42__*, i32)*, i64 (%struct.TYPE_48__*, %struct.TYPE_42__*, i32)** %238, align 8
  %240 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %241 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %242 = load i64, i64* %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %241, i64 %242
  %244 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i64 %239(%struct.TYPE_48__* %240, %struct.TYPE_42__* %243, i32 %246)
  %248 = load i64, i64* @NGX_OK, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %256

250:                                              ; preds = %236
  %251 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %252 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %253 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %254 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_48__* %251, %struct.TYPE_45__* %252, i64 %253)
  %255 = load i64, i64* @NGX_DONE, align 8
  store i64 %255, i64* %3, align 8
  br label %362

256:                                              ; preds = %236
  br label %272

257:                                              ; preds = %214
  %258 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %259 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %260 = load i64, i64* %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %259, i64 %260
  %262 = call i64 @ngx_http_upstream_copy_header_line(%struct.TYPE_48__* %258, %struct.TYPE_42__* %261, i32 0)
  %263 = load i64, i64* @NGX_OK, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %257
  %266 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %267 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %268 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %269 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_48__* %266, %struct.TYPE_45__* %267, i64 %268)
  %270 = load i64, i64* @NGX_DONE, align 8
  store i64 %270, i64* %3, align 8
  br label %362

271:                                              ; preds = %257
  br label %272

272:                                              ; preds = %271, %256, %213
  %273 = load i64, i64* %8, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %8, align 8
  br label %171

275:                                              ; preds = %182
  %276 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %276, i32 0, i32 5
  %278 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_53__*, %struct.TYPE_53__** %278, align 8
  %280 = icmp ne %struct.TYPE_53__* %279, null
  br i1 %280, label %281, label %296

281:                                              ; preds = %275
  %282 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %282, i32 0, i32 5
  %284 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %283, i32 0, i32 4
  %285 = load %struct.TYPE_53__*, %struct.TYPE_53__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = icmp eq i32* %288, null
  br i1 %289, label %290, label %296

290:                                              ; preds = %281
  %291 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %291, i32 0, i32 5
  %293 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %292, i32 0, i32 4
  %294 = load %struct.TYPE_53__*, %struct.TYPE_53__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %294, i32 0, i32 0
  store i64 0, i64* %295, align 8
  br label %296

296:                                              ; preds = %290, %281, %275
  %297 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %297, i32 0, i32 5
  %299 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_55__*, %struct.TYPE_55__** %299, align 8
  %301 = icmp ne %struct.TYPE_55__* %300, null
  br i1 %301, label %302, label %317

302:                                              ; preds = %296
  %303 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %304, i32 0, i32 3
  %306 = load %struct.TYPE_55__*, %struct.TYPE_55__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = icmp eq i32* %309, null
  br i1 %310, label %311, label %317

311:                                              ; preds = %302
  %312 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_55__*, %struct.TYPE_55__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %315, i32 0, i32 0
  store i64 0, i64* %316, align 8
  br label %317

317:                                              ; preds = %311, %302, %296
  %318 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %323, i32 0, i32 2
  store i32 %321, i32* %324, align 8
  %325 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %330, i32 0, i32 1
  store i32 %328, i32* %331, align 4
  %332 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %336, i32 0, i32 5
  %338 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %337, i32 0, i32 0
  store i32 %335, i32* %338, align 8
  %339 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = icmp ne i32 %341, 0
  %343 = xor i1 %342, true
  %344 = zext i1 %343 to i32
  %345 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %345, i32 0, i32 1
  store i32 %344, i32* %346, align 8
  %347 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_41__*, %struct.TYPE_41__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %317
  %354 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %354, i32 0, i32 2
  store i32 1, i32* %355, align 4
  %356 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %356, i32 0, i32 3
  store i32 1, i32* %357, align 8
  br label %358

358:                                              ; preds = %353, %317
  %359 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %359, i32 0, i32 0
  store i32 -1, i32* %360, align 8
  %361 = load i64, i64* @NGX_OK, align 8
  store i64 %361, i64* %3, align 8
  br label %362

362:                                              ; preds = %358, %265, %250, %158, %137, %103
  %363 = load i64, i64* %3, align 8
  ret i64 %363
}

declare dso_local %struct.TYPE_46__* @ngx_http_get_module_main_conf(%struct.TYPE_48__*, i32) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_48__*, %struct.TYPE_45__*, i64) #1

declare dso_local %struct.TYPE_47__* @ngx_hash_find(i32*, i32, i32, i32) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_48__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_http_named_location(%struct.TYPE_48__*, %struct.TYPE_43__*) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_43__*) #1

declare dso_local i64 @ngx_http_parse_unsafe_uri(%struct.TYPE_48__*, %struct.TYPE_43__*, %struct.TYPE_43__*, i64*) #1

declare dso_local i32 @ngx_http_internal_redirect(%struct.TYPE_48__*, %struct.TYPE_43__*, %struct.TYPE_43__*) #1

declare dso_local i64 @ngx_http_upstream_copy_header_line(%struct.TYPE_48__*, %struct.TYPE_42__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
