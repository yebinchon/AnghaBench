; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_connection.c_ngx_configure_listening_sockets.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_connection.c_ngx_configure_listening_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_6__*, i64, i64, i64, i32, i64, i32*, i32 }
%struct.TYPE_6__ = type { i64 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"setsockopt(SO_RCVBUF, %d) %V failed, ignored\00", align 1
@SO_SNDBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"setsockopt(SO_SNDBUF, %d) %V failed, ignored\00", align 1
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"setsockopt(SO_KEEPALIVE, %d) %V failed, ignored\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"listen() to %V, backlog %d failed, ignored\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPV6_RECVPKTINFO = common dso_local global i32 0, align 4
@IP_PKTINFO = common dso_local global i32 0, align 4
@IP_RECVDSTADDR = common dso_local global i32 0, align 4
@NGX_KEEPALIVE_FACTOR = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@SO_ACCEPTFILTER = common dso_local global i32 0, align 4
@SO_SETFIB = common dso_local global i32 0, align 4
@TCP_DEFER_ACCEPT = common dso_local global i32 0, align 4
@TCP_FASTOPEN = common dso_local global i32 0, align 4
@TCP_KEEPCNT = common dso_local global i32 0, align 4
@TCP_KEEPIDLE = common dso_local global i32 0, align 4
@TCP_KEEPINTVL = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_configure_listening_sockets(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %5, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %183, %1
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %186

17:                                               ; preds = %10
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 19
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 20
  store i32 %23, i32* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %66

34:                                               ; preds = %17
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SOL_SOCKET, align 4
  %41 = load i32, i32* @SO_RCVBUF, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = bitcast i32* %45 to i8*
  %47 = call i32 @setsockopt(i32 %39, i32 %40, i32 %41, i8* %46, i32 4)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %65

49:                                               ; preds = %34
  %50 = load i32, i32* @NGX_LOG_ALERT, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ngx_socket_errno, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 11
  %64 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %50, i32 %53, i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %59, i32* %63)
  br label %65

65:                                               ; preds = %49, %34
  br label %66

66:                                               ; preds = %65, %17
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %105

73:                                               ; preds = %66
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 12
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SOL_SOCKET, align 4
  %80 = load i32, i32* @SO_SNDBUF, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = bitcast i32* %84 to i8*
  %86 = call i32 @setsockopt(i32 %78, i32 %79, i32 %80, i8* %85, i32 4)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %104

88:                                               ; preds = %73
  %89 = load i32, i32* @NGX_LOG_ALERT, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ngx_socket_errno, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = load i64, i64* %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 11
  %103 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %89, i32 %92, i32 %93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32* %102)
  br label %104

104:                                              ; preds = %88, %73
  br label %105

105:                                              ; preds = %104, %66
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = load i64, i64* %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %105
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = load i64, i64* %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 1
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  store i32 %120, i32* %3, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = load i64, i64* %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 12
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SOL_SOCKET, align 4
  %127 = load i32, i32* @SO_KEEPALIVE, align 4
  %128 = bitcast i32* %3 to i8*
  %129 = call i32 @setsockopt(i32 %125, i32 %126, i32 %127, i8* %128, i32 4)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %143

131:                                              ; preds = %112
  %132 = load i32, i32* @NGX_LOG_ALERT, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ngx_socket_errno, align 4
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = load i64, i64* %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 11
  %142 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %132, i32 %135, i32 %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32* %141)
  br label %143

143:                                              ; preds = %131, %112
  br label %144

144:                                              ; preds = %143, %105
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = load i64, i64* %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 18
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %182

151:                                              ; preds = %144
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = load i64, i64* %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 12
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = load i64, i64* %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 17
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @listen(i32 %156, i32 %161)
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %181

164:                                              ; preds = %151
  %165 = load i32, i32* @NGX_LOG_ALERT, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @ngx_socket_errno, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = load i64, i64* %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 11
  %174 = ptrtoint i32* %173 to i32
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %176 = load i64, i64* %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 17
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i32, i32, i8*, i32, ...) @ngx_log_error(i32 %165, i32 %168, i32 %169, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %174, i32 %179)
  br label %181

181:                                              ; preds = %164, %151
  br label %182

182:                                              ; preds = %181, %144
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %4, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %4, align 8
  br label %10

186:                                              ; preds = %10
  ret void
}

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
