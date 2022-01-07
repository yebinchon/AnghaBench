; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_handshake.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event_openssl.c_ngx_ssl_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__*, %struct.TYPE_16__*, %struct.TYPE_18__*, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i8*, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i64 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SSL_do_handshake: %d\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_ssl_recv = common dso_local global i32 0, align 4
@ngx_ssl_write = common dso_local global i32 0, align 4
@ngx_ssl_recv_chain = common dso_local global i32 0, align 4
@ngx_ssl_send_chain = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"SSL_get_error: %d\00", align 1
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@ngx_ssl_handshake_handler = common dso_local global i8* null, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@SSL_ERROR_ZERO_RETURN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"peer closed connection in SSL handshake\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SSL_do_handshake() failed\00", align 1
@SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_ssl_handshake(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ngx_ssl_clear_error(i32 %9)
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = call i32 @SSL_do_handshake(%struct.TYPE_14__* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ngx_log_debug1(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %61

25:                                               ; preds = %1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = call i64 @ngx_handle_read_event(%struct.TYPE_19__* %28, i32 0)
  %30 = load i64, i64* @NGX_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @NGX_ERROR, align 8
  store i64 %33, i64* %2, align 8
  br label %192

34:                                               ; preds = %25
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = call i64 @ngx_handle_write_event(%struct.TYPE_18__* %37, i32 0)
  %39 = load i64, i64* @NGX_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @NGX_ERROR, align 8
  store i64 %42, i64* %2, align 8
  br label %192

43:                                               ; preds = %34
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @ngx_ssl_recv, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @ngx_ssl_write, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ngx_ssl_recv_chain, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @ngx_ssl_send_chain, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* @NGX_OK, align 8
  store i64 %60, i64* %2, align 8
  br label %192

61:                                               ; preds = %1
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @SSL_get_error(%struct.TYPE_14__* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ngx_log_debug1(i32 %69, i32 %72, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %61
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load i8*, i8** @ngx_ssl_handshake_handler, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  store i8* %83, i8** %87, align 8
  %88 = load i8*, i8** @ngx_ssl_handshake_handler, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = call i64 @ngx_handle_read_event(%struct.TYPE_19__* %95, i32 0)
  %97 = load i64, i64* @NGX_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %78
  %100 = load i64, i64* @NGX_ERROR, align 8
  store i64 %100, i64* %2, align 8
  br label %192

101:                                              ; preds = %78
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = call i64 @ngx_handle_write_event(%struct.TYPE_18__* %104, i32 0)
  %106 = load i64, i64* @NGX_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i64, i64* @NGX_ERROR, align 8
  store i64 %109, i64* %2, align 8
  br label %192

110:                                              ; preds = %101
  %111 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %111, i64* %2, align 8
  br label %192

112:                                              ; preds = %61
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %150

116:                                              ; preds = %112
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load i8*, i8** @ngx_ssl_handshake_handler, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  store i8* %121, i8** %125, align 8
  %126 = load i8*, i8** @ngx_ssl_handshake_handler, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  store i8* %126, i8** %130, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = call i64 @ngx_handle_read_event(%struct.TYPE_19__* %133, i32 0)
  %135 = load i64, i64* @NGX_OK, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %116
  %138 = load i64, i64* @NGX_ERROR, align 8
  store i64 %138, i64* %2, align 8
  br label %192

139:                                              ; preds = %116
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = call i64 @ngx_handle_write_event(%struct.TYPE_18__* %142, i32 0)
  %144 = load i64, i64* @NGX_OK, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i64, i64* @NGX_ERROR, align 8
  store i64 %147, i64* %2, align 8
  br label %192

148:                                              ; preds = %139
  %149 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %149, i64* %2, align 8
  br label %192

150:                                              ; preds = %112
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* @ngx_errno, align 4
  br label %157

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i32 [ %155, %154 ], [ 0, %156 ]
  store i32 %158, i32* %6, align 4
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 2
  store i32 1, i32* %166, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @SSL_ERROR_ZERO_RETURN, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %177, label %174

174:                                              ; preds = %157
  %175 = call i64 (...) @ERR_peek_error()
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174, %157
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @ngx_connection_error(%struct.TYPE_17__* %178, i32 %179, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %181 = load i64, i64* @NGX_ERROR, align 8
  store i64 %181, i64* %2, align 8
  br label %192

182:                                              ; preds = %174
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @ngx_ssl_connection_error(%struct.TYPE_17__* %187, i32 %188, i32 %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %191 = load i64, i64* @NGX_ERROR, align 8
  store i64 %191, i64* %2, align 8
  br label %192

192:                                              ; preds = %182, %177, %148, %146, %137, %110, %108, %99, %43, %41, %32
  %193 = load i64, i64* %2, align 8
  ret i64 %193
}

declare dso_local i32 @ngx_ssl_clear_error(i32) #1

declare dso_local i32 @SSL_do_handshake(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @SSL_get_error(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @ngx_ssl_connection_error(%struct.TYPE_17__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
