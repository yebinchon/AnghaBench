; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_wsarecv.c_ngx_overlapped_wsarecv.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_wsarecv.c_ngx_overlapped_wsarecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i8*, i64 }

@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"second wsa post\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rev->complete: %d\00", align 1
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_IOCP_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"WSARecv() failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"WSARecv ovlp: fd:%d %ul of %z\00", align 1
@ngx_socket_errno = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"WSARecv() or WSAGetOverlappedResult() failed\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"WSARecv: fd:%d %ul of %z\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"WSARecv ovlp: fd:%d rc:%d %ul of %z\00", align 1
@WSA_IO_PENDING = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"WSARecv() posted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_overlapped_wsarecv(%struct.TYPE_10__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x %struct.TYPE_11__], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %14, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @NGX_LOG_ALERT, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ngx_log_error(i32 %24, i32 %27, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %29, i64* %4, align 8
  br label %191

30:                                               ; preds = %3
  %31 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ngx_log_debug1(i32 %31, i32 %34, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %106

43:                                               ; preds = %30
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @ngx_event_flags, align 4
  %47 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %43
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @ngx_connection_error(%struct.TYPE_10__* %57, i64 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i64, i64* @NGX_ERROR, align 8
  store i64 %63, i64* %4, align 8
  br label %191

64:                                               ; preds = %50
  %65 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @ngx_log_debug3(i32 %65, i32 %68, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %71, i64 %74, i64 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %4, align 8
  br label %191

80:                                               ; preds = %43
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 6
  %86 = ptrtoint %struct.TYPE_8__* %85 to i64
  %87 = call i64 @WSAGetOverlappedResult(i32 %83, i64 %86, i64* %9, i32 0, i32* null)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = load i64, i64* @ngx_socket_errno, align 8
  %92 = call i64 @ngx_connection_error(%struct.TYPE_10__* %90, i64 %91, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i64, i64* @NGX_ERROR, align 8
  store i64 %93, i64* %4, align 8
  br label %191

94:                                               ; preds = %80
  %95 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @ngx_log_debug3(i32 %95, i32 %98, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %101, i64 %102, i64 %103)
  %105 = load i64, i64* %9, align 8
  store i64 %105, i64* %4, align 8
  br label %191

106:                                              ; preds = %30
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 6
  %109 = ptrtoint %struct.TYPE_8__* %108 to i64
  store i64 %109, i64* %15, align 8
  %110 = load i64, i64* %15, align 8
  %111 = call i32 @ngx_memzero(i64 %110, i32 4)
  %112 = load i32*, i32** %6, align 8
  %113 = bitcast i32* %112 to i8*
  %114 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 16
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %123 = load i64, i64* %15, align 8
  %124 = call i32 @WSARecv(i32 %121, %struct.TYPE_11__* %122, i32 1, i64* %9, i64* %10, i64 %123, i32* null)
  store i32 %124, i32* %8, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 5
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @ngx_log_debug4(i32 %127, i32 %130, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %133, i32 %134, i64 %135, i64 %136)
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %167

140:                                              ; preds = %106
  %141 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %141, i64* %12, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* @WSA_IO_PENDING, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  %148 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @ngx_log_debug0(i32 %148, i32 %151, i64 %152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %154 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %154, i64* %4, align 8
  br label %191

155:                                              ; preds = %140
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = load i64, i64* %12, align 8
  %158 = call i64 @ngx_connection_error(%struct.TYPE_10__* %156, i64 %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 %158, i64* %13, align 8
  %159 = load i64, i64* %13, align 8
  %160 = load i64, i64* @NGX_ERROR, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  store i32 1, i32* %164, align 4
  br label %165

165:                                              ; preds = %162, %155
  %166 = load i64, i64* %13, align 8
  store i64 %166, i64* %4, align 8
  br label %191

167:                                              ; preds = %106
  %168 = load i32, i32* @ngx_event_flags, align 4
  %169 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  store i32 1, i32* %174, align 8
  %175 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %175, i64* %4, align 8
  br label %191

176:                                              ; preds = %167
  %177 = load i64, i64* %9, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 4
  store i32 1, i32* %181, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  br label %187

184:                                              ; preds = %176
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  br label %187

187:                                              ; preds = %184, %179
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  store i32 0, i32* %189, align 8
  %190 = load i64, i64* %9, align 8
  store i64 %190, i64* %4, align 8
  br label %191

191:                                              ; preds = %187, %172, %165, %145, %94, %89, %64, %56, %23
  %192 = load i64, i64* %4, align 8
  ret i64 %192
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_connection_error(%struct.TYPE_10__*, i64, i8*) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i64, i64) #1

declare dso_local i64 @WSAGetOverlappedResult(i32, i64, i64*, i32, i32*) #1

declare dso_local i32 @ngx_memzero(i64, i32) #1

declare dso_local i32 @WSARecv(i32, %struct.TYPE_11__*, i32, i64*, i64*, i64, i32*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
