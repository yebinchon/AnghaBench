; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_delete_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_delete_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DELETE with body is unsupported\00", align 1
@NGX_HTTP_UNSUPPORTED_MEDIA_TYPE = common dso_local global i64 0, align 8
@ngx_http_dav_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"insufficient URI depth:%i to DELETE\00", align 1
@NGX_HTTP_CONFLICT = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"http delete filename: \22%s\22\00", align 1
@NGX_FILE_ERROR = common dso_local global i64 0, align 8
@ngx_errno = common dso_local global i64 0, align 8
@NGX_ENOTDIR = common dso_local global i64 0, align 8
@NGX_HTTP_NOT_FOUND = common dso_local global i64 0, align 8
@ngx_link_info_n = common dso_local global i32 0, align 4
@NGX_EISDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"DELETE \22%s\22 failed\00", align 1
@NGX_HTTP_DAV_INFINITY_DEPTH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"\22Depth\22 header must be infinity\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"\22Depth\22 header must be 0 or infinity\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_NO_CONTENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*)* @ngx_http_dav_delete_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_dav_delete_handler(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i32, i32* @NGX_LOG_ERR, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %20, i32 %25, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @NGX_HTTP_UNSUPPORTED_MEDIA_TYPE, align 8
  store i64 %27, i64* %2, align 8
  br label %205

28:                                               ; preds = %1
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = load i32, i32* @ngx_http_dav_module, align 4
  %31 = call %struct.TYPE_20__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__* %29, i32 %30)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %13, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %71, %36
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %37
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %8, align 8
  %51 = getelementptr inbounds i8, i8* %48, i64 %49
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %71

55:                                               ; preds = %44
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %9, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %83

70:                                               ; preds = %62, %55
  br label %71

71:                                               ; preds = %70, %44
  br label %37

72:                                               ; preds = %37
  %73 = load i32, i32* @NGX_LOG_ERR, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %9, align 8
  %80 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %73, i32 %78, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* @NGX_HTTP_CONFLICT, align 8
  store i64 %81, i64* %2, align 8
  br label %205

82:                                               ; preds = %28
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %85 = call i32* @ngx_http_map_uri_to_path(%struct.TYPE_19__* %84, %struct.TYPE_18__* %11, i64* %4, i32 0)
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %88, i64* %2, align 8
  br label %205

89:                                               ; preds = %83
  %90 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ngx_log_debug1(i32 %90, i32 %95, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @ngx_link_info(i32 %100, i32* %12)
  %102 = load i64, i64* @NGX_FILE_ERROR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %89
  %105 = load i64, i64* @ngx_errno, align 8
  store i64 %105, i64* %5, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @NGX_ENOTDIR, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i64, i64* @NGX_HTTP_CONFLICT, align 8
  br label %113

111:                                              ; preds = %104
  %112 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i64 [ %110, %109 ], [ %112, %111 ]
  store i64 %114, i64* %6, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i32, i32* @ngx_link_info_n, align 4
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @ngx_http_dav_error(i32 %119, i64 %120, i64 %121, i32 %122, i32 %124)
  store i64 %125, i64* %2, align 8
  br label %205

126:                                              ; preds = %89
  %127 = call i64 @ngx_is_dir(i32* %12)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %175

129:                                              ; preds = %126
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %137, 1
  %139 = getelementptr inbounds i8, i8* %133, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 47
  br i1 %142, label %143, label %155

143:                                              ; preds = %129
  %144 = load i32, i32* @NGX_LOG_ERR, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @NGX_EISDIR, align 4
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %144, i32 %149, i32 %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load i64, i64* @NGX_HTTP_CONFLICT, align 8
  store i64 %154, i64* %2, align 8
  br label %205

155:                                              ; preds = %129
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %157 = load i64, i64* @NGX_HTTP_DAV_INFINITY_DEPTH, align 8
  %158 = call i64 @ngx_http_dav_depth(%struct.TYPE_19__* %156, i64 %157)
  store i64 %158, i64* %7, align 8
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* @NGX_HTTP_DAV_INFINITY_DEPTH, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %155
  %163 = load i32, i32* @NGX_LOG_ERR, align 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %163, i32 %168, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %170, i64* %2, align 8
  br label %205

171:                                              ; preds = %155
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %173, 2
  store i32 %174, i32* %172, align 4
  store i64 1, i64* %10, align 8
  br label %194

175:                                              ; preds = %126
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %177 = call i64 @ngx_http_dav_depth(%struct.TYPE_19__* %176, i64 0)
  store i64 %177, i64* %7, align 8
  %178 = load i64, i64* %7, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %175
  %181 = load i64, i64* %7, align 8
  %182 = load i64, i64* @NGX_HTTP_DAV_INFINITY_DEPTH, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %180
  %185 = load i32, i32* @NGX_LOG_ERR, align 4
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %185, i32 %190, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %192 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %192, i64* %2, align 8
  br label %205

193:                                              ; preds = %180, %175
  store i64 0, i64* %10, align 8
  br label %194

194:                                              ; preds = %193, %171
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %196 = load i64, i64* %10, align 8
  %197 = call i64 @ngx_http_dav_delete_path(%struct.TYPE_19__* %195, %struct.TYPE_18__* %11, i64 %196)
  store i64 %197, i64* %6, align 8
  %198 = load i64, i64* %6, align 8
  %199 = load i64, i64* @NGX_OK, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = load i64, i64* @NGX_HTTP_NO_CONTENT, align 8
  store i64 %202, i64* %2, align 8
  br label %205

203:                                              ; preds = %194
  %204 = load i64, i64* %6, align 8
  store i64 %204, i64* %2, align 8
  br label %205

205:                                              ; preds = %203, %201, %184, %162, %143, %113, %87, %72, %19
  %206 = load i64, i64* %2, align 8
  ret i64 %206
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @ngx_http_map_uri_to_path(%struct.TYPE_19__*, %struct.TYPE_18__*, i64*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_link_info(i32, i32*) #1

declare dso_local i64 @ngx_http_dav_error(i32, i64, i64, i32, i32) #1

declare dso_local i64 @ngx_is_dir(i32*) #1

declare dso_local i64 @ngx_http_dav_depth(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @ngx_http_dav_delete_path(%struct.TYPE_19__*, %struct.TYPE_18__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
