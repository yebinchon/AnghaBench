; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_35__*, i32, i32, %struct.TYPE_34__* }
%struct.TYPE_35__ = type { %struct.TYPE_29__*, i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_28__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64, i32, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_25__* }
%struct.TYPE_32__ = type { i32 }

@NGX_DECLINED = common dso_local global i64 0, align 8
@ngx_http_limit_req_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"the value of the \22%V\22 key is more than 65535 bytes: \22%V\22\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"limit_req[%ui]: %i %ui.%03ui\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"limiting requests%s, excess: %ui.%03ui by zone \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c", dry run\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NGX_HTTP_LIMIT_REQ_REJECTED_DRY_RUN = common dso_local global i64 0, align 8
@NGX_HTTP_LIMIT_REQ_REJECTED = common dso_local global i64 0, align 8
@NGX_HTTP_LIMIT_REQ_PASSED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"delaying request%s, excess: %ui.%03ui, by zone \22%V\22\00", align 1
@NGX_HTTP_LIMIT_REQ_DELAYED_DRY_RUN = common dso_local global i64 0, align 8
@NGX_HTTP_LIMIT_REQ_DELAYED = common dso_local global i64 0, align 8
@ngx_http_test_reading = common dso_local global i32 0, align 4
@ngx_http_limit_req_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_37__*)* @ngx_http_limit_req_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_limit_req_handler(%struct.TYPE_37__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_36__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %3, align 8
  %14 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %21, i64* %2, align 8
  br label %316

22:                                               ; preds = %1
  %23 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %24 = load i32, i32* @ngx_http_limit_req_module, align 4
  %25 = call %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_37__* %23, i32 %24)
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %11, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %13, align 8
  store i64 0, i64* %8, align 8
  %30 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %30, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %121, %22
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %124

38:                                               ; preds = %31
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i64 %40
  store %struct.TYPE_24__* %41, %struct.TYPE_24__** %12, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  store %struct.TYPE_25__* %46, %struct.TYPE_25__** %10, align 8
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = call i64 @ngx_http_complex_value(%struct.TYPE_37__* %47, %struct.TYPE_28__* %49, %struct.TYPE_36__* %5)
  %51 = load i64, i64* @NGX_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %54, i64* %2, align 8
  br label %316

55:                                               ; preds = %38
  %56 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %121

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 65535
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* @NGX_LOG_ERR, align 4
  %66 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_35__*, %struct.TYPE_35__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = bitcast i32* %73 to i8*
  %75 = call i32 (i32, i32, i32, i8*, i8*, ...) @ngx_log_error(i32 %65, i32 %70, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %74, %struct.TYPE_36__* %5)
  br label %121

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %5, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %5, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ngx_crc32_short(i32 %78, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 0
  %86 = call i32 @ngx_shmtx_lock(i32* %85)
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %93, 1
  %95 = icmp eq i64 %89, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @ngx_http_limit_req_lookup(%struct.TYPE_24__* %87, i32 %88, %struct.TYPE_36__* %5, i64* %8, i32 %96)
  store i64 %97, i64* %6, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 0
  %102 = call i32 @ngx_shmtx_unlock(i32* %101)
  %103 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %104 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %8, align 8
  %112 = udiv i64 %111, 1000
  %113 = load i64, i64* %8, align 8
  %114 = urem i64 %113, 1000
  %115 = call i32 @ngx_log_debug4(i32 %103, i32 %108, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %109, i64 %110, i64 %112, i64 %114)
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @NGX_AGAIN, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %76
  br label %124

120:                                              ; preds = %76
  br label %121

121:                                              ; preds = %120, %64, %59
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %7, align 8
  br label %31

124:                                              ; preds = %119, %31
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @NGX_DECLINED, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %129, i64* %2, align 8
  br label %316

130:                                              ; preds = %124
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* @NGX_BUSY, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @NGX_ERROR, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %225

138:                                              ; preds = %134, %130
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @NGX_BUSY, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %167

142:                                              ; preds = %138
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %157 = load i64, i64* %8, align 8
  %158 = udiv i64 %157, 1000
  %159 = load i64, i64* %8, align 8
  %160 = urem i64 %159, 1000
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 0
  %166 = call i32 (i32, i32, i32, i8*, i8*, ...) @ngx_log_error(i32 %145, i32 %150, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %156, i64 %158, i64 %160, i32* %165)
  br label %167

167:                                              ; preds = %142, %138
  br label %168

168:                                              ; preds = %185, %184, %167
  %169 = load i64, i64* %7, align 8
  %170 = add i64 %169, -1
  store i64 %170, i64* %7, align 8
  %171 = icmp ne i64 %169, 0
  br i1 %171, label %172, label %204

172:                                              ; preds = %168
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %174 = load i64, i64* %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %178, align 8
  store %struct.TYPE_25__* %179, %struct.TYPE_25__** %10, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %181, align 8
  %183 = icmp eq %struct.TYPE_31__* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %172
  br label %168

185:                                              ; preds = %172
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  %190 = call i32 @ngx_shmtx_lock(i32* %189)
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %194, align 4
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 0
  %201 = call i32 @ngx_shmtx_unlock(i32* %200)
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %203, align 8
  br label %168

204:                                              ; preds = %168
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = load i64, i64* @NGX_HTTP_LIMIT_REQ_REJECTED_DRY_RUN, align 8
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %213, i32 0, i32 0
  store i64 %210, i64* %214, align 8
  %215 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %215, i64* %2, align 8
  br label %316

216:                                              ; preds = %204
  %217 = load i64, i64* @NGX_HTTP_LIMIT_REQ_REJECTED, align 8
  %218 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_34__*, %struct.TYPE_34__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %220, i32 0, i32 0
  store i64 %217, i64* %221, align 8
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %2, align 8
  br label %316

225:                                              ; preds = %134
  %226 = load i64, i64* %6, align 8
  %227 = load i64, i64* @NGX_AGAIN, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  store i64 0, i64* %8, align 8
  br label %230

230:                                              ; preds = %229, %225
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %232 = load i64, i64* %7, align 8
  %233 = call i32 @ngx_http_limit_req_account(%struct.TYPE_24__* %231, i64 %232, i64* %8, %struct.TYPE_24__** %12)
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %230
  %237 = load i64, i64* @NGX_HTTP_LIMIT_REQ_PASSED, align 8
  %238 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_34__*, %struct.TYPE_34__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %240, i32 0, i32 0
  store i64 %237, i64* %241, align 8
  %242 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %242, i64* %2, align 8
  br label %316

243:                                              ; preds = %230
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_35__*, %struct.TYPE_35__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %258 = load i64, i64* %8, align 8
  %259 = udiv i64 %258, 1000
  %260 = load i64, i64* %8, align 8
  %261 = urem i64 %260, 1000
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_33__*, %struct.TYPE_33__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %265, i32 0, i32 0
  %267 = call i32 (i32, i32, i32, i8*, i8*, ...) @ngx_log_error(i32 %246, i32 %251, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %257, i64 %259, i64 %261, i32* %266)
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %243
  %273 = load i64, i64* @NGX_HTTP_LIMIT_REQ_DELAYED_DRY_RUN, align 8
  %274 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %274, i32 0, i32 3
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %276, i32 0, i32 0
  store i64 %273, i64* %277, align 8
  %278 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %278, i64* %2, align 8
  br label %316

279:                                              ; preds = %243
  %280 = load i64, i64* @NGX_HTTP_LIMIT_REQ_DELAYED, align 8
  %281 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_34__*, %struct.TYPE_34__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i32 0, i32 0
  store i64 %280, i64* %284, align 8
  %285 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_35__*, %struct.TYPE_35__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @ngx_handle_read_event(i32 %289, i32 0)
  %291 = load i64, i64* @NGX_OK, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %279
  %294 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %294, i64* %2, align 8
  br label %316

295:                                              ; preds = %279
  %296 = load i32, i32* @ngx_http_test_reading, align 4
  %297 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* @ngx_http_limit_req_delay, align 4
  %300 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 8
  %302 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_35__*, %struct.TYPE_35__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_29__*, %struct.TYPE_29__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %306, i32 0, i32 0
  store i32 1, i32* %307, align 4
  %308 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_35__*, %struct.TYPE_35__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %311, align 8
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @ngx_add_timer(%struct.TYPE_29__* %312, i32 %313)
  %315 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %315, i64* %2, align 8
  br label %316

316:                                              ; preds = %295, %293, %272, %236, %216, %209, %128, %53, %20
  %317 = load i64, i64* %2, align 8
  ret i64 %317
}

declare dso_local %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_37__*, i32) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_37__*, %struct.TYPE_28__*, %struct.TYPE_36__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @ngx_crc32_short(i32, i32) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i64 @ngx_http_limit_req_lookup(%struct.TYPE_24__*, i32, %struct.TYPE_36__*, i64*, i32) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @ngx_http_limit_req_account(%struct.TYPE_24__*, i64, i64*, %struct.TYPE_24__**) #1

declare dso_local i64 @ngx_handle_read_event(i32, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_29__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
