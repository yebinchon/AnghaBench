; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_init_connection.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_41__*, %struct.TYPE_40__*, %struct.TYPE_38__*, %struct.TYPE_33__*, i32, i32, i32, %struct.TYPE_36__*, %struct.TYPE_32__* }
%struct.TYPE_41__ = type { i32, %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_39__, i32, i32 }
%struct.TYPE_39__ = type { i64, i64, i64, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_40__ = type { i8*, %struct.TYPE_30__*, i32, i32 }
%struct.TYPE_30__ = type { i32*, i32*, %struct.TYPE_34__* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_33__ = type { i32 (%struct.TYPE_33__*)*, i64 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_39__*, i32 }
%struct.sockaddr_in = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_log_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"waiting for request\00", align 1
@NGX_ERROR_INFO = common dso_local global i32 0, align 4
@ngx_http_empty_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"reading PROXY protocol\00", align 1
@ngx_use_accept_mutex = common dso_local global i64 0, align 8
@ngx_posted_events = common dso_local global i32 0, align 4
@ngx_http_ssl_module = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_init_connection(%struct.TYPE_34__* %0) #0 {
  %2 = alloca %struct.TYPE_34__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.TYPE_43__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %2, align 8
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_32__* @ngx_pcalloc(i32 %12, i32 24)
  store %struct.TYPE_32__* %13, %struct.TYPE_32__** %9, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %15 = icmp eq %struct.TYPE_32__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %18 = call i32 @ngx_http_close_connection(%struct.TYPE_34__* %17)
  br label %211

19:                                               ; preds = %1
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 8
  store %struct.TYPE_32__* %20, %struct.TYPE_32__** %22, align 8
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_41__*, %struct.TYPE_41__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  store %struct.TYPE_43__* %27, %struct.TYPE_43__** %6, align 8
  %28 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %87

32:                                               ; preds = %19
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %34 = call i64 @ngx_connection_local_sockaddr(%struct.TYPE_34__* %33, i32* null, i32 0)
  %35 = load i64, i64* @NGX_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %39 = call i32 @ngx_http_close_connection(%struct.TYPE_34__* %38)
  br label %211

40:                                               ; preds = %32
  %41 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_36__*, %struct.TYPE_36__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %46 [
  ]

46:                                               ; preds = %40
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 7
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %48, align 8
  %50 = bitcast %struct.TYPE_36__* %49 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %50, %struct.sockaddr_in** %5, align 8
  %51 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %52, align 8
  store %struct.TYPE_31__* %53, %struct.TYPE_31__** %7, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %75, %46
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %67, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %78

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %54

78:                                               ; preds = %73, %54
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 2
  store %struct.TYPE_39__* %83, %struct.TYPE_39__** %85, align 8
  br label %86

86:                                               ; preds = %78
  br label %103

87:                                               ; preds = %19
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %88, i32 0, i32 7
  %90 = load %struct.TYPE_36__*, %struct.TYPE_36__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %93 [
  ]

93:                                               ; preds = %87
  %94 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %95, align 8
  store %struct.TYPE_31__* %96, %struct.TYPE_31__** %7, align 8
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 2
  store %struct.TYPE_39__* %99, %struct.TYPE_39__** %101, align 8
  br label %102

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %86
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_39__*, %struct.TYPE_39__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.TYPE_30__* @ngx_palloc(i32 %115, i32 24)
  store %struct.TYPE_30__* %116, %struct.TYPE_30__** %8, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %118 = icmp eq %struct.TYPE_30__* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %103
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %121 = call i32 @ngx_http_close_connection(%struct.TYPE_34__* %120)
  br label %211

122:                                              ; preds = %103
  %123 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 2
  store %struct.TYPE_34__* %123, %struct.TYPE_34__** %125, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 1
  store i32* null, i32** %127, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_40__*, %struct.TYPE_40__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %135, i32 0, i32 3
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* @ngx_http_log_error, align 4
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_40__*, %struct.TYPE_40__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %140, i32 0, i32 2
  store i32 %137, i32* %141, align 8
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_40__*, %struct.TYPE_40__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %145, i32 0, i32 1
  store %struct.TYPE_30__* %142, %struct.TYPE_30__** %146, align 8
  %147 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_40__*, %struct.TYPE_40__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %149, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %150, align 8
  %151 = load i32, i32* @NGX_ERROR_INFO, align 4
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %155, align 8
  store %struct.TYPE_33__* %156, %struct.TYPE_33__** %4, align 8
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %157, i32 0, i32 0
  store i32 (%struct.TYPE_33__*)* @ngx_http_wait_request_handler, i32 (%struct.TYPE_33__*)** %158, align 8
  %159 = load i32, i32* @ngx_http_empty_handler, align 4
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_38__*, %struct.TYPE_38__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %162, i32 0, i32 0
  store i32 %159, i32* %163, align 4
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_39__*, %struct.TYPE_39__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %122
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_40__*, %struct.TYPE_40__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %175, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %176, align 8
  br label %177

177:                                              ; preds = %170, %122
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %177
  %183 = load i64, i64* @ngx_use_accept_mutex, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %187 = call i32 @ngx_post_event(%struct.TYPE_33__* %186, i32* @ngx_posted_events)
  br label %211

188:                                              ; preds = %182
  %189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %189, i32 0, i32 0
  %191 = load i32 (%struct.TYPE_33__*)*, i32 (%struct.TYPE_33__*)** %190, align 8
  %192 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %193 = call i32 %191(%struct.TYPE_33__* %192)
  br label %211

194:                                              ; preds = %177
  %195 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %196 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_41__*, %struct.TYPE_41__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @ngx_add_timer(%struct.TYPE_33__* %195, i32 %200)
  %202 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %203 = call i32 @ngx_reusable_connection(%struct.TYPE_34__* %202, i32 1)
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %205 = call i64 @ngx_handle_read_event(%struct.TYPE_33__* %204, i32 0)
  %206 = load i64, i64* @NGX_OK, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %194
  %209 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %210 = call i32 @ngx_http_close_connection(%struct.TYPE_34__* %209)
  br label %211

211:                                              ; preds = %16, %37, %119, %185, %188, %208, %194
  ret void
}

declare dso_local %struct.TYPE_32__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_close_connection(%struct.TYPE_34__*) #1

declare dso_local i64 @ngx_connection_local_sockaddr(%struct.TYPE_34__*, i32*, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_http_wait_request_handler(%struct.TYPE_33__*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_33__*, i32*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @ngx_reusable_connection(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_33__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
