; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_connection.c_ngx_set_inherited_sockets.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_connection.c_ngx_set_inherited_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_14__*, i32*, i32, %struct.TYPE_13__*, i8* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"getsockname() of the inherited socket #%d failed\00", align 1
@NGX_INET_ADDRSTRLEN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"the inherited socket #%d has an unsupported protocol family\00", align 1
@NGX_LISTEN_BACKLOG = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"getsockopt(SO_TYPE) %V failed\00", align 1
@SO_RCVBUF = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"getsockopt(SO_RCVBUF) %V failed, ignored\00", align 1
@SO_SNDBUF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"getsockopt(SO_SNDBUF) %V failed, ignored\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@NGX_EINVAL = common dso_local global i64 0, align 8
@NGX_ENOPROTOOPT = common dso_local global i64 0, align 8
@NGX_EOPNOTSUPP = common dso_local global i64 0, align 8
@NGX_INET6_ADDRSTRLEN = common dso_local global i8* null, align 8
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@NGX_UNIX_ADDRSTRLEN = common dso_local global i8* null, align 8
@SO_ACCEPTFILTER = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@SO_REUSEPORT_LB = common dso_local global i32 0, align 4
@SO_SETFIB = common dso_local global i32 0, align 4
@TCP_DEFER_ACCEPT = common dso_local global i32 0, align 4
@TCP_FASTOPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_set_inherited_sockets(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %277, %1
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %280

19:                                               ; preds = %12
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @ngx_palloc(i32 %22, i32 4)
  %24 = bitcast i8* %23 to %struct.TYPE_13__*
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 13
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 13
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = icmp eq %struct.TYPE_13__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @NGX_ERROR, align 4
  store i32 %36, i32* %2, align 4
  br label %282

37:                                               ; preds = %19
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 4, i32* %41, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 10
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 13
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = call i32 @getsockname(%struct.TYPE_14__* %46, %struct.TYPE_13__* %51, i32* %55)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %74

58:                                               ; preds = %37
  %59 = load i32, i32* @NGX_LOG_CRIT, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* @ngx_socket_errno, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 10
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call i32 @ngx_log_error(i32 %59, i32 %62, i64 %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %277

74:                                               ; preds = %37
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = load i64, i64* %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 4
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i32 4, i32* %85, align 8
  br label %86

86:                                               ; preds = %81, %74
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 13
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %104 [
    i32 130, label %94
  ]

94:                                               ; preds = %86
  %95 = load i8*, i8** @NGX_INET_ADDRSTRLEN, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 14
  store i8* %95, i8** %99, align 8
  %100 = load i8*, i8** @NGX_INET_ADDRSTRLEN, align 8
  %101 = getelementptr i8, i8* %100, i64 7
  %102 = getelementptr i8, i8* %101, i64 -1
  %103 = ptrtoint i8* %102 to i64
  store i64 %103, i64* %4, align 8
  br label %120

104:                                              ; preds = %86
  %105 = load i32, i32* @NGX_LOG_CRIT, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* @ngx_socket_errno, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 10
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = call i32 @ngx_log_error(i32 %105, i32 %108, i64 %109, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = load i64, i64* %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  br label %277

120:                                              ; preds = %94
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %4, align 8
  %125 = call i32* @ngx_pnalloc(i32 %123, i64 %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = load i64, i64* %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 9
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  store i32* %125, i32** %130, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = load i64, i64* %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 9
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %120
  %139 = load i32, i32* @NGX_ERROR, align 4
  store i32 %139, i32* %2, align 4
  br label %282

140:                                              ; preds = %120
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 13
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = load i64, i64* %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = load i64, i64* %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 9
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %4, align 8
  %158 = call i64 @ngx_sock_ntop(%struct.TYPE_13__* %145, i32 %150, i32* %156, i64 %157, i32 1)
  store i64 %158, i64* %4, align 8
  %159 = load i64, i64* %4, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %140
  %162 = load i32, i32* @NGX_ERROR, align 4
  store i32 %162, i32* %2, align 4
  br label %282

163:                                              ; preds = %140
  %164 = load i64, i64* %4, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 9
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  store i64 %164, i64* %169, align 8
  %170 = load i32, i32* @NGX_LISTEN_BACKLOG, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %172 = load i64, i64* %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 12
  store i32 %170, i32* %174, align 8
  store i32 4, i32* %7, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %176 = load i64, i64* %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 10
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = load i32, i32* @SOL_SOCKET, align 4
  %181 = load i32, i32* @SO_TYPE, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %183 = load i64, i64* %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = bitcast i64* %185 to i8*
  %187 = bitcast i8* %186 to i32*
  %188 = call i32 @getsockopt(%struct.TYPE_14__* %179, i32 %180, i32 %181, i32* %187, i32* %7)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %205

190:                                              ; preds = %163
  %191 = load i32, i32* @NGX_LOG_CRIT, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i64, i64* @ngx_socket_errno, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %197 = load i64, i64* %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 9
  %200 = call i32 @ngx_log_error(i32 %191, i32 %194, i64 %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_14__* %199)
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %202 = load i64, i64* %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  store i32 1, i32* %204, align 4
  br label %277

205:                                              ; preds = %163
  store i32 4, i32* %7, align 4
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %207 = load i64, i64* %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 10
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = load i32, i32* @SOL_SOCKET, align 4
  %212 = load i32, i32* @SO_RCVBUF, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %214 = load i64, i64* %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 3
  %217 = bitcast i32* %216 to i8*
  %218 = bitcast i8* %217 to i32*
  %219 = call i32 @getsockopt(%struct.TYPE_14__* %210, i32 %211, i32 %212, i32* %218, i32* %7)
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %236

221:                                              ; preds = %205
  %222 = load i32, i32* @NGX_LOG_ALERT, align 4
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i64, i64* @ngx_socket_errno, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %228 = load i64, i64* %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 9
  %231 = call i32 @ngx_log_error(i32 %222, i32 %225, i64 %226, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_14__* %230)
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %233 = load i64, i64* %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 3
  store i32 -1, i32* %235, align 8
  br label %236

236:                                              ; preds = %221, %205
  store i32 4, i32* %7, align 4
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = load i64, i64* %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 10
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = load i32, i32* @SOL_SOCKET, align 4
  %243 = load i32, i32* @SO_SNDBUF, align 4
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %245 = load i64, i64* %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 4
  %248 = bitcast i32* %247 to i8*
  %249 = bitcast i8* %248 to i32*
  %250 = call i32 @getsockopt(%struct.TYPE_14__* %241, i32 %242, i32 %243, i32* %249, i32* %7)
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %267

252:                                              ; preds = %236
  %253 = load i32, i32* @NGX_LOG_ALERT, align 4
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i64, i64* @ngx_socket_errno, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %259 = load i64, i64* %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 9
  %262 = call i32 @ngx_log_error(i32 %253, i32 %256, i64 %257, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_14__* %261)
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %264 = load i64, i64* %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 4
  store i32 -1, i32* %266, align 4
  br label %267

267:                                              ; preds = %252, %236
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %269 = load i64, i64* %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @SOCK_STREAM, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  br label %277

276:                                              ; preds = %267
  br label %277

277:                                              ; preds = %276, %275, %190, %104, %58
  %278 = load i64, i64* %5, align 8
  %279 = add i64 %278, 1
  store i64 %279, i64* %5, align 8
  br label %12

280:                                              ; preds = %12
  %281 = load i32, i32* @NGX_OK, align 4
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %280, %161, %138, %35
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i32 @getsockname(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*, %struct.TYPE_14__*) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i64 @ngx_sock_ntop(%struct.TYPE_13__*, i32, i32*, i64, i32) #1

declare dso_local i32 @getsockopt(%struct.TYPE_14__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
