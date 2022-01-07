; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_handle_recv.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_handle_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32*, i32, i64 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_8__ = type { i64 }

@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"SSL renegotiation disabled\00", align 1
@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ignoring stale global SSL error\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_posted_events = common dso_local global i32 0, align 4
@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"SSL_get_error: %d\00", align 1
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"SSL_read: want write\00", align 1
@ngx_ssl_write_handler = common dso_local global i32* null, align 8
@SSL_ERROR_ZERO_RETURN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"peer shutdown SSL cleanly\00", align 1
@NGX_DONE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"SSL_read() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32)* @ngx_ssl_handle_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_ssl_handle_recv(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ngx_log_error(i32 %15, i32 %18, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %23, %14
  %21 = call i64 (...) @ERR_peek_error()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ngx_ssl_error(i32 %24, i32 %27, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %20

29:                                               ; preds = %20
  %30 = call i32 (...) @ERR_clear_error()
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load i64, i64* @NGX_ERROR, align 8
  store i64 %39, i64* %3, align 8
  br label %226

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %81

50:                                               ; preds = %43
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  store i32* %55, i32** %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = call i64 @ngx_handle_write_event(%struct.TYPE_11__* %70, i32 0)
  %72 = load i64, i64* @NGX_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %50
  %75 = load i64, i64* @NGX_ERROR, align 8
  store i64 %75, i64* %3, align 8
  br label %226

76:                                               ; preds = %50
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = call i32 @ngx_post_event(%struct.TYPE_11__* %79, i32* @ngx_posted_events)
  br label %81

81:                                               ; preds = %76, %43
  %82 = load i64, i64* @NGX_OK, align 8
  store i64 %82, i64* %3, align 8
  br label %226

83:                                               ; preds = %40
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @SSL_get_error(i32 %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* @ngx_errno, align 4
  br label %97

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @ngx_log_debug1(i32 %99, i32 %102, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %97
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %146

115:                                              ; preds = %108
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  store i32* %120, i32** %124, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  store i32* null, i32** %128, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = call i64 @ngx_handle_write_event(%struct.TYPE_11__* %135, i32 0)
  %137 = load i64, i64* @NGX_OK, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %115
  %140 = load i64, i64* @NGX_ERROR, align 8
  store i64 %140, i64* %3, align 8
  br label %226

141:                                              ; preds = %115
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = call i32 @ngx_post_event(%struct.TYPE_11__* %144, i32* @ngx_posted_events)
  br label %146

146:                                              ; preds = %141, %108
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  %151 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %151, i64* %3, align 8
  br label %226

152:                                              ; preds = %97
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %198

156:                                              ; preds = %152
  %157 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ngx_log_debug0(i32 %157, i32 %160, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = call i64 @ngx_handle_write_event(%struct.TYPE_11__* %168, i32 0)
  %170 = load i64, i64* @NGX_OK, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %156
  %173 = load i64, i64* @NGX_ERROR, align 8
  store i64 %173, i64* %3, align 8
  br label %226

174:                                              ; preds = %156
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %196

181:                                              ; preds = %174
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  store i32* %186, i32** %190, align 8
  %191 = load i32*, i32** @ngx_ssl_write_handler, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  store i32* %191, i32** %195, align 8
  br label %196

196:                                              ; preds = %181, %174
  %197 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %197, i64* %3, align 8
  br label %226

198:                                              ; preds = %152
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  store i32 1, i32* %202, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  store i32 1, i32* %206, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @SSL_ERROR_ZERO_RETURN, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %213, label %210

210:                                              ; preds = %198
  %211 = call i64 (...) @ERR_peek_error()
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %210, %198
  %214 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @ngx_log_debug0(i32 %214, i32 %217, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %219 = load i64, i64* @NGX_DONE, align 8
  store i64 %219, i64* %3, align 8
  br label %226

220:                                              ; preds = %210
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @ngx_ssl_connection_error(%struct.TYPE_10__* %221, i32 %222, i32 %223, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %225 = load i64, i64* @NGX_ERROR, align 8
  store i64 %225, i64* %3, align 8
  br label %226

226:                                              ; preds = %220, %213, %196, %172, %146, %139, %81, %74, %29
  %227 = load i64, i64* %3, align 8
  ret i64 %227
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i32 @ngx_ssl_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_ssl_connection_error(%struct.TYPE_10__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
