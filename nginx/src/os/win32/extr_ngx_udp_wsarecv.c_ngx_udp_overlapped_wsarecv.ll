; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_udp_wsarecv.c_ngx_udp_overlapped_wsarecv.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_udp_wsarecv.c_ngx_udp_overlapped_wsarecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i64, %struct.TYPE_8__, i64, i32 }
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
define dso_local i64 @ngx_udp_overlapped_wsarecv(%struct.TYPE_10__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x %struct.TYPE_11__], align 16
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %13, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @NGX_LOG_ALERT, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ngx_log_error(i32 %23, i32 %26, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %28, i64* %4, align 8
  br label %174

29:                                               ; preds = %3
  %30 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ngx_log_debug1(i32 %30, i32 %33, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %105

42:                                               ; preds = %29
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @ngx_event_flags, align 4
  %46 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ngx_connection_error(%struct.TYPE_10__* %56, i64 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i64, i64* @NGX_ERROR, align 8
  store i64 %62, i64* %4, align 8
  br label %174

63:                                               ; preds = %49
  %64 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @ngx_log_debug3(i32 %64, i32 %67, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %70, i64 %73, i64 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %4, align 8
  br label %174

79:                                               ; preds = %42
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = ptrtoint %struct.TYPE_8__* %84 to i64
  %86 = call i64 @WSAGetOverlappedResult(i32 %82, i64 %85, i64* %9, i32 0, i32* null)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = load i64, i64* @ngx_socket_errno, align 8
  %91 = call i32 @ngx_connection_error(%struct.TYPE_10__* %89, i64 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i64, i64* @NGX_ERROR, align 8
  store i64 %92, i64* %4, align 8
  br label %174

93:                                               ; preds = %79
  %94 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @ngx_log_debug3(i32 %94, i32 %97, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %100, i64 %101, i64 %102)
  %104 = load i64, i64* %9, align 8
  store i64 %104, i64* %4, align 8
  br label %174

105:                                              ; preds = %29
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = ptrtoint %struct.TYPE_8__* %107 to i64
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @ngx_memzero(i64 %109, i32 4)
  %111 = load i32*, i32** %6, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 16
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %122 = load i64, i64* %14, align 8
  %123 = call i32 @WSARecv(i32 %120, %struct.TYPE_11__* %121, i32 1, i64* %9, i64* %10, i64 %122, i32* null)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @ngx_log_debug4(i32 %126, i32 %129, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %132, i32 %133, i64 %134, i64 %135)
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %161

139:                                              ; preds = %105
  %140 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %140, i64* %12, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* @WSA_IO_PENDING, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %12, align 8
  %152 = call i32 @ngx_log_debug0(i32 %147, i32 %150, i64 %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %153, i64* %4, align 8
  br label %174

154:                                              ; preds = %139
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = load i64, i64* %12, align 8
  %159 = call i32 @ngx_connection_error(%struct.TYPE_10__* %157, i64 %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i64, i64* @NGX_ERROR, align 8
  store i64 %160, i64* %4, align 8
  br label %174

161:                                              ; preds = %105
  %162 = load i32, i32* @ngx_event_flags, align 4
  %163 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %169, i64* %4, align 8
  br label %174

170:                                              ; preds = %161
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  %173 = load i64, i64* %9, align 8
  store i64 %173, i64* %4, align 8
  br label %174

174:                                              ; preds = %170, %166, %154, %144, %93, %88, %63, %55, %22
  %175 = load i64, i64* %4, align 8
  ret i64 %175
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_10__*, i64, i8*) #1

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
