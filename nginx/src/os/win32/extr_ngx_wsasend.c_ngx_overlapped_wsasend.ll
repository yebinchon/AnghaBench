; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_wsasend.c_ngx_overlapped_wsasend.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_wsasend.c_ngx_overlapped_wsasend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i64, i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i8*, i64 }

@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wev->complete: %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"WSASend: fd:%d, %d, %ul of %uz\00", align 1
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_IOCP_EVENT = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@WSA_IO_PENDING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"WSASend() posted\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"WSASend() failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"WSASend() or WSAGetOverlappedResult() failed\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"WSAGetOverlappedResult: fd:%d, %ul of %uz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_overlapped_wsasend(%struct.TYPE_10__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %11, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %22, i64* %4, align 8
  br label %180

23:                                               ; preds = %3
  %24 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ngx_log_debug1(i32 %24, i32 %27, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %114, label %36

36:                                               ; preds = %23
  %37 = load i32*, i32** %6, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  store i64 0, i64* %9, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = ptrtoint %struct.TYPE_8__* %45 to i64
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @ngx_memzero(i64 %47, i32 4)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @WSASend(i32 %51, %struct.TYPE_11__* %13, i32 1, i64* %9, i32 0, i64 %52, i32* null)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @ngx_log_debug4(i32 %54, i32 %57, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i64 %62, i64 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %36
  %70 = load i32, i32* @ngx_event_flags, align 4
  %71 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %77, i64* %4, align 8
  br label %180

78:                                               ; preds = %69
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %4, align 8
  br label %180

92:                                               ; preds = %36
  %93 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @WSA_IO_PENDING, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @ngx_log_debug0(i32 %98, i32 %101, i64 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %106, i64* %4, align 8
  br label %180

107:                                              ; preds = %92
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @ngx_connection_error(%struct.TYPE_10__* %110, i64 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i64, i64* @NGX_ERROR, align 8
  store i64 %113, i64* %4, align 8
  br label %180

114:                                              ; preds = %23
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 5
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load i32, i32* @ngx_event_flags, align 4
  %120 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %114
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @ngx_connection_error(%struct.TYPE_10__* %130, i64 %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i64, i64* @NGX_ERROR, align 8
  store i64 %136, i64* %4, align 8
  br label %180

137:                                              ; preds = %123
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %9, align 8
  br label %156

141:                                              ; preds = %114
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = ptrtoint %struct.TYPE_8__* %146 to i64
  %148 = call i64 @WSAGetOverlappedResult(i32 %144, i64 %147, i64* %9, i32 0, i32* null)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = load i64, i64* @ngx_socket_errno, align 8
  %153 = call i32 @ngx_connection_error(%struct.TYPE_10__* %151, i64 %152, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i64, i64* @NGX_ERROR, align 8
  store i64 %154, i64* %4, align 8
  br label %180

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155, %137
  %157 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i64, i64* %9, align 8
  %165 = load i64, i64* %7, align 8
  %166 = call i32 @ngx_log_debug3(i32 %157, i32 %160, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %163, i64 %164, i64 %165)
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %7, align 8
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %156
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 3
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %170, %156
  %174 = load i64, i64* %9, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load i64, i64* %9, align 8
  store i64 %179, i64* %4, align 8
  br label %180

180:                                              ; preds = %173, %150, %129, %107, %97, %85, %74, %21
  %181 = load i64, i64* %4, align 8
  ret i64 %181
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_memzero(i64, i32) #1

declare dso_local i32 @WSASend(i32, %struct.TYPE_11__*, i32, i64*, i32, i64, i32*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i64, i8*) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_10__*, i64, i8*) #1

declare dso_local i64 @WSAGetOverlappedResult(i32, i64, i64*, i32, i32*) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
