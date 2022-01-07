; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_devpoll_module.c_ngx_devpoll_process_events.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_devpoll_module.c_ngx_devpoll_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i64, i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 (%struct.TYPE_10__*)*, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.dvpoll = type { i32, i64, i64, i64, i64, %struct.TYPE_14__* }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"devpoll timer: %M\00", align 1
@nchanges = common dso_local global i32 0, align 4
@dp = common dso_local global i32 0, align 4
@change_list = common dso_local global %struct.pollfd* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"write(/dev/poll) failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@event_list = common dso_local global %struct.TYPE_14__* null, align 8
@nevents = common dso_local global i64 0, align 8
@DP_POLL = common dso_local global i32 0, align 4
@NGX_UPDATE_TIME = common dso_local global i32 0, align 4
@ngx_event_timer_alarm = common dso_local global i64 0, align 8
@NGX_EINTR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"ioctl(DP_POLL) failed\00", align 1
@NGX_TIMER_INFINITE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"ioctl(DP_POLL) returned no events without timeout\00", align 1
@ngx_cycle = common dso_local global %struct.TYPE_13__* null, align 8
@DP_ISPOLLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"ioctl(DP_ISPOLLED) failed for socket %d, event %04Xd\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"phantom event %04Xd for closed and removed socket %d\00", align 1
@.str.6 = private unnamed_addr constant [111 x i8] c"unexpected event %04Xd for closed and removed socket %d, ioctl(DP_ISPOLLED) returned rc:%d, fd:%d, event %04Xd\00", align 1
@POLLREMOVE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"write(/dev/poll) for %d failed\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"close(%d) failed\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"devpoll: fd:%d, ev:%04Xd, rev:%04Xd\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"ioctl(DP_POLL) error fd:%d ev:%04Xd rev:%04Xd\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [55 x i8] c"strange ioctl(DP_POLL) events fd:%d ev:%04Xd rev:%04Xd\00", align 1
@NGX_POST_EVENTS = common dso_local global i32 0, align 4
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i32)* @ngx_devpoll_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_devpoll_process_events(%struct.TYPE_11__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca %struct.pollfd, align 8
  %22 = alloca %struct.dvpoll, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @ngx_log_debug1(i32 %23, i32 %26, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @nchanges, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %3
  %32 = load i32, i32* @nchanges, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 48
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* @dp, align 4
  %36 = load %struct.pollfd*, %struct.pollfd** @change_list, align 8
  %37 = load i64, i64* %11, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @write(i32 %35, %struct.pollfd* %36, i32 %38)
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load i32, i32* @NGX_LOG_ALERT, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ngx_errno, align 4
  %48 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %43, i32 %46, i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @NGX_ERROR, align 4
  store i32 %49, i32* %4, align 4
  br label %388

50:                                               ; preds = %31
  store i32 0, i32* @nchanges, align 4
  br label %51

51:                                               ; preds = %50, %3
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %53 = getelementptr inbounds %struct.dvpoll, %struct.dvpoll* %22, i32 0, i32 5
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %53, align 8
  %54 = load i64, i64* @nevents, align 8
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.dvpoll, %struct.dvpoll* %22, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.dvpoll, %struct.dvpoll* %22, i32 0, i32 4
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* @dp, align 4
  %60 = load i32, i32* @DP_POLL, align 4
  %61 = bitcast %struct.dvpoll* %22 to %struct.pollfd*
  %62 = call i32 @ioctl(i32 %59, i32 %60, %struct.pollfd* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* @ngx_errno, align 4
  br label %68

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @NGX_UPDATE_TIME, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i64, i64* @ngx_event_timer_alarm, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %68
  %78 = call i32 (...) @ngx_time_update()
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @NGX_EINTR, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i64, i64* @ngx_event_timer_alarm, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  store i64 0, i64* @ngx_event_timer_alarm, align 8
  %90 = load i32, i32* @NGX_OK, align 4
  store i32 %90, i32* %4, align 4
  br label %388

91:                                               ; preds = %86
  %92 = load i32, i32* @NGX_LOG_INFO, align 4
  store i32 %92, i32* %15, align 4
  br label %95

93:                                               ; preds = %82
  %94 = load i32, i32* @NGX_LOG_ALERT, align 4
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %96, i32 %99, i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @NGX_ERROR, align 4
  store i32 %102, i32* %4, align 4
  br label %388

103:                                              ; preds = %79
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @NGX_TIMER_INFINITE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @NGX_OK, align 4
  store i32 %111, i32* %4, align 4
  br label %388

112:                                              ; preds = %106
  %113 = load i32, i32* @NGX_LOG_ALERT, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %113, i32 %116, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @NGX_ERROR, align 4
  store i32 %118, i32* %4, align 4
  br label %388

119:                                              ; preds = %103
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %383, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %386

124:                                              ; preds = %120
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %12, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %9, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_cycle, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %139, i64 %140
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  store %struct.TYPE_12__* %142, %struct.TYPE_12__** %20, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %144 = icmp eq %struct.TYPE_12__* %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %124
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %219

150:                                              ; preds = %145, %124
  %151 = load i64, i64* %12, align 8
  %152 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i32 0, i32 1
  store i64 %151, i64* %152, align 8
  %153 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i32 0, i32 3
  store i64 0, i64* %153, align 8
  %154 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* @dp, align 4
  %156 = load i32, i32* @DP_ISPOLLED, align 4
  %157 = call i32 @ioctl(i32 %155, i32 %156, %struct.pollfd* %21)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  switch i32 %158, label %176 [
    i32 -1, label %159
    i32 0, label %168
  ]

159:                                              ; preds = %150
  %160 = load i32, i32* @NGX_LOG_ALERT, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ngx_errno, align 4
  %165 = load i64, i64* %12, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %160, i32 %163, i32 %164, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64 %165, i32 %166)
  br label %218

168:                                              ; preds = %150
  %169 = load i32, i32* @NGX_LOG_ALERT, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i64, i64* %12, align 8
  %175 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %169, i32 %172, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %173, i64 %174)
  br label %218

176:                                              ; preds = %150
  %177 = load i32, i32* @NGX_LOG_ALERT, align 4
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i64, i64* %12, align 8
  %183 = load i32, i32* %10, align 4
  %184 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %177, i32 %180, i32 0, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.6, i64 0, i64 0), i32 %181, i64 %182, i32 %183, i64 %185, i64 %187)
  %189 = load i64, i64* %12, align 8
  %190 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i32 0, i32 1
  store i64 %189, i64* %190, align 8
  %191 = load i64, i64* @POLLREMOVE, align 8
  %192 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i32 0, i32 3
  store i64 %191, i64* %192, align 8
  %193 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i32 0, i32 2
  store i64 0, i64* %193, align 8
  %194 = load i32, i32* @dp, align 4
  %195 = call i64 @write(i32 %194, %struct.pollfd* %21, i32 48)
  %196 = icmp ne i64 %195, 48
  br i1 %196, label %197, label %205

197:                                              ; preds = %176
  %198 = load i32, i32* @NGX_LOG_ALERT, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @ngx_errno, align 4
  %203 = load i64, i64* %12, align 8
  %204 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %198, i32 %201, i32 %202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64 %203)
  br label %205

205:                                              ; preds = %197, %176
  %206 = load i64, i64* %12, align 8
  %207 = call i32 @close(i64 %206)
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %217

209:                                              ; preds = %205
  %210 = load i32, i32* @NGX_LOG_ALERT, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @ngx_errno, align 4
  %215 = load i64, i64* %12, align 8
  %216 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %210, i32 %213, i32 %214, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64 %215)
  br label %217

217:                                              ; preds = %209, %205
  br label %218

218:                                              ; preds = %217, %168, %159
  br label %383

219:                                              ; preds = %145
  %220 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i64, i64* %12, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @ngx_log_debug3(i32 %220, i32 %223, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 %224, i32 %230, i32 %231)
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* @POLLERR, align 4
  %235 = load i32, i32* @POLLHUP, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @POLLNVAL, align 4
  %238 = or i32 %236, %237
  %239 = and i32 %233, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %255

241:                                              ; preds = %219
  %242 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i64, i64* %12, align 8
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @ngx_log_debug3(i32 %242, i32 %245, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i64 %246, i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %241, %219
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @POLLIN, align 4
  %258 = load i32, i32* @POLLOUT, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @POLLERR, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @POLLHUP, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @POLLNVAL, align 4
  %265 = or i32 %263, %264
  %266 = xor i32 %265, -1
  %267 = and i32 %256, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %255
  %270 = load i32, i32* @NGX_LOG_ALERT, align 4
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i64, i64* %12, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %9, align 4
  %282 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %270, i32 %273, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i64 %274, i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %269, %255
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @POLLERR, align 4
  %286 = load i32, i32* @POLLHUP, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @POLLNVAL, align 4
  %289 = or i32 %287, %288
  %290 = and i32 %284, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %283
  %293 = load i32, i32* @POLLIN, align 4
  %294 = load i32, i32* @POLLOUT, align 4
  %295 = or i32 %293, %294
  %296 = load i32, i32* %9, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %9, align 4
  br label %298

298:                                              ; preds = %292, %283
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  store %struct.TYPE_10__* %301, %struct.TYPE_10__** %17, align 8
  %302 = load i32, i32* %9, align 4
  %303 = load i32, i32* @POLLIN, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %352

306:                                              ; preds = %298
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 4
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %352

311:                                              ; preds = %306
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 0
  store i32 1, i32* %313, align 8
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 1
  store i32 -1, i32* %315, align 4
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* @NGX_POST_EVENTS, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %311
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 5
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %326, i32** %19, align 8
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %328 = load i32*, i32** %19, align 8
  %329 = call i32 @ngx_post_event(%struct.TYPE_10__* %327, i32* %328)
  br label %351

330:                                              ; preds = %311
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  store i32 %333, i32* %16, align 4
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 3
  %336 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %335, align 8
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %338 = call i32 %336(%struct.TYPE_10__* %337)
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %349, label %343

343:                                              ; preds = %330
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* %16, align 4
  %348 = icmp ne i32 %346, %347
  br i1 %348, label %349, label %350

349:                                              ; preds = %343, %330
  br label %383

350:                                              ; preds = %343
  br label %351

351:                                              ; preds = %350, %320
  br label %352

352:                                              ; preds = %351, %306, %298
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %354, align 8
  store %struct.TYPE_10__* %355, %struct.TYPE_10__** %18, align 8
  %356 = load i32, i32* %9, align 4
  %357 = load i32, i32* @POLLOUT, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %382

360:                                              ; preds = %352
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 4
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %382

365:                                              ; preds = %360
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 0
  store i32 1, i32* %367, align 8
  %368 = load i32, i32* %7, align 4
  %369 = load i32, i32* @NGX_POST_EVENTS, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %365
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %374 = call i32 @ngx_post_event(%struct.TYPE_10__* %373, i32* @ngx_posted_events)
  br label %381

375:                                              ; preds = %365
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 3
  %378 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %377, align 8
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %380 = call i32 %378(%struct.TYPE_10__* %379)
  br label %381

381:                                              ; preds = %375, %372
  br label %382

382:                                              ; preds = %381, %360, %352
  br label %383

383:                                              ; preds = %382, %349, %218
  %384 = load i32, i32* %14, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %14, align 4
  br label %120

386:                                              ; preds = %120
  %387 = load i32, i32* @NGX_OK, align 4
  store i32 %387, i32* %4, align 4
  br label %388

388:                                              ; preds = %386, %112, %110, %95, %89, %42
  %389 = load i32, i32* %4, align 4
  ret i32 %389
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @write(i32, %struct.pollfd*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ioctl(i32, i32, %struct.pollfd*) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
