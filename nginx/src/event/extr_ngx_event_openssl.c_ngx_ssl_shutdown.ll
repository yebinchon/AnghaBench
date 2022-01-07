; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_shutdown.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i64 }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }

@NGX_OK = common dso_local global i64 0, align 8
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SSL_shutdown: %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SSL_get_error: %d\00", align 1
@SSL_ERROR_ZERO_RETURN = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@ngx_ssl_shutdown_handler = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"SSL_shutdown() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_ssl_shutdown(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @SSL_in_init(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @SSL_free(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %23, align 8
  %24 = load i64, i64* @NGX_OK, align 8
  store i64 %24, i64* %2, align 8
  br label %222

25:                                               ; preds = %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %32 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @SSL_set_quiet_shutdown(i32 %38, i32 1)
  br label %90

40:                                               ; preds = %25
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @SSL_get_shutdown(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %40
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @SSL_set_quiet_shutdown(i32 %87, i32 1)
  br label %89

89:                                               ; preds = %82, %75, %68
  br label %90

90:                                               ; preds = %89, %30
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @SSL_set_shutdown(i32 %95, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ngx_ssl_clear_error(i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @SSL_shutdown(i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @ngx_log_debug1(i32 %108, i32 %111, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %112)
  store i32 0, i32* %5, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %116, label %133

116:                                              ; preds = %90
  %117 = call i64 (...) @ERR_peek_error()
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %116
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @SSL_get_error(i32 %124, i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @ngx_log_debug1(i32 %127, i32 %130, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %119, %116, %90
  %134 = load i32, i32* %4, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @SSL_ERROR_ZERO_RETURN, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %139, %136, %133
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @SSL_free(i32 %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %151, align 8
  %152 = load i64, i64* @NGX_OK, align 8
  store i64 %152, i64* %2, align 8
  br label %222

153:                                              ; preds = %139
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %200

161:                                              ; preds = %157, %153
  %162 = load i8*, i8** @ngx_ssl_shutdown_handler, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  store i8* %162, i8** %166, align 8
  %167 = load i8*, i8** @ngx_ssl_shutdown_handler, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  store i8* %167, i8** %171, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = call i64 @ngx_handle_read_event(%struct.TYPE_11__* %174, i32 0)
  %176 = load i64, i64* @NGX_OK, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %161
  %179 = load i64, i64* @NGX_ERROR, align 8
  store i64 %179, i64* %2, align 8
  br label %222

180:                                              ; preds = %161
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = call i64 @ngx_handle_write_event(%struct.TYPE_10__* %183, i32 0)
  %185 = load i64, i64* @NGX_OK, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = load i64, i64* @NGX_ERROR, align 8
  store i64 %188, i64* %2, align 8
  br label %222

189:                                              ; preds = %180
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  %197 = call i32 @ngx_add_timer(%struct.TYPE_11__* %196, i32 30000)
  br label %198

198:                                              ; preds = %193, %189
  %199 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %199, i64* %2, align 8
  br label %222

200:                                              ; preds = %157
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* @ngx_errno, align 4
  br label %207

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %206, %204
  %208 = phi i32 [ %205, %204 ], [ 0, %206 ]
  store i32 %208, i32* %7, align 4
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @ngx_ssl_connection_error(%struct.TYPE_9__* %209, i32 %210, i32 %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @SSL_free(i32 %217)
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %220, align 8
  %221 = load i64, i64* @NGX_ERROR, align 8
  store i64 %221, i64* %2, align 8
  br label %222

222:                                              ; preds = %207, %198, %187, %178, %143, %15
  %223 = load i64, i64* %2, align 8
  ret i64 %223
}

declare dso_local i64 @SSL_in_init(i32) #1

declare dso_local i32 @SSL_free(i32) #1

declare dso_local i32 @SSL_set_quiet_shutdown(i32, i32) #1

declare dso_local i32 @SSL_get_shutdown(i32) #1

declare dso_local i32 @SSL_set_shutdown(i32, i32) #1

declare dso_local i32 @ngx_ssl_clear_error(i32) #1

declare dso_local i32 @SSL_shutdown(i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_ssl_connection_error(%struct.TYPE_9__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
