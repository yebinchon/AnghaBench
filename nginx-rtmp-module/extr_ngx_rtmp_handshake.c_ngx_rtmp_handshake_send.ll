; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_handshake_send.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_handshake_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64 (%struct.TYPE_16__*, i64, i64)*, i32, i32, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i32 }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"handshake: send: client timed out\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_WRITE_EVENT = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"handshake: stage %ui\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"handshake: old-style response\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"handshake: response error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @ngx_rtmp_handshake_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_handshake_send(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %222

18:                                               ; preds = %1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* @NGX_LOG_INFO, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %29 = call i32 @ngx_log_error(i32 %24, i32 %27, i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_14__* %32)
  br label %222

34:                                               ; preds = %18
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = call i32 @ngx_del_timer(%struct.TYPE_15__* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %6, align 8
  br label %46

46:                                               ; preds = %101, %42
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %107

54:                                               ; preds = %46
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i64 (%struct.TYPE_16__*, i64, i64)*, i64 (%struct.TYPE_16__*, i64, i64)** %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = call i64 %57(%struct.TYPE_16__* %58, i64 %61, i64 %68)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @NGX_ERROR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %54
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_14__* %74)
  br label %222

76:                                               ; preds = %54
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @NGX_AGAIN, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %3, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %80, %76
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ngx_add_timer(i32 %86, i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @ngx_handle_write_event(i32 %93, i32 0)
  %95 = load i64, i64* @NGX_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_14__* %98)
  br label %100

100:                                              ; preds = %97, %83
  br label %222

101:                                              ; preds = %80
  %102 = load i64, i64* %3, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  br label %46

107:                                              ; preds = %46
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %114 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %115 = call i32 @ngx_del_event(%struct.TYPE_15__* %113, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %112, %107
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ngx_log_debug1(i32 %121, i32 %126, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %222 [
    i32 128, label %134
    i32 129, label %182
    i32 130, label %201
    i32 131, label %219
  ]

134:                                              ; preds = %116
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %134
  %140 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ngx_log_debug0(i32 %140, i32 %145, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 1
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  store i64 %152, i64* %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  store i64 %161, i64* %165, align 8
  br label %180

166:                                              ; preds = %134
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %168 = call i64 @ngx_rtmp_handshake_create_response(%struct.TYPE_14__* %167)
  %169 = load i64, i64* @NGX_OK, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load i32, i32* @NGX_LOG_INFO, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @ngx_log_error(i32 %172, i32 %175, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %178 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_14__* %177)
  br label %222

179:                                              ; preds = %166
  br label %180

180:                                              ; preds = %179, %139
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  call void @ngx_rtmp_handshake_send(%struct.TYPE_15__* %181)
  br label %222

182:                                              ; preds = %116
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 1
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  store i64 %188, i64* %192, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  store i64 %188, i64* %196, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @ngx_rtmp_handshake_recv(i32 %199)
  br label %222

201:                                              ; preds = %116
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  store i64 %206, i64* %210, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  store i64 %206, i64* %214, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @ngx_rtmp_handshake_recv(i32 %217)
  br label %222

219:                                              ; preds = %116
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %221 = call i32 @ngx_rtmp_handshake_done(%struct.TYPE_14__* %220)
  br label %222

222:                                              ; preds = %17, %23, %73, %100, %171, %116, %219, %201, %182, %180
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ngx_add_timer(i32, i32) #1

declare dso_local i64 @ngx_handle_write_event(i32, i32) #1

declare dso_local i32 @ngx_del_event(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_rtmp_handshake_create_response(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_rtmp_handshake_recv(i32) #1

declare dso_local i32 @ngx_rtmp_handshake_done(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
