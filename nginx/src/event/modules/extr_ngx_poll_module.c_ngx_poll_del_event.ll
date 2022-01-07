; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_poll_module.c_ngx_poll_del_event.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_poll_module.c_ngx_poll_del_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i16 }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i64, %struct.TYPE_7__* }

@NGX_INVALID_INDEX = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"poll event fd:%d ev:%i is already deleted\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_READ_EVENT = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"poll del event: fd:%d ev:%i\00", align 1
@nevents = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"index: copy event %ui to %i\00", align 1
@event_list = common dso_local global %struct.TYPE_9__* null, align 8
@ngx_cycle = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"unexpected last event\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"poll del index: %i\00", align 1
@POLLIN = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i32)* @ngx_poll_del_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_poll_del_event(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NGX_INVALID_INDEX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load i32, i32* @NGX_LOG_ALERT, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %21, i32 %24, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i64, i64* @NGX_OK, align 8
  store i64 %30, i64* %4, align 8
  br label %172

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @NGX_READ_EVENT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %8, align 8
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %8, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @ngx_log_debug2(i32 %44, i32 %47, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = icmp eq %struct.TYPE_6__* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %43
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NGX_INVALID_INDEX, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %144

61:                                               ; preds = %55, %43
  %62 = load i64, i64* @nevents, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* @nevents, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @nevents, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %143

69:                                               ; preds = %61
  %70 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* @nevents, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ngx_log_debug2(i32 %70, i32 %73, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %74, i64 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @event_list, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %82
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @event_list, align 8
  %85 = load i64, i64* @nevents, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %85
  %87 = bitcast %struct.TYPE_9__* %83 to i8*
  %88 = bitcast %struct.TYPE_9__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ngx_cycle, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @event_list, align 8
  %93 = load i64, i64* @nevents, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %9, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, -1
  br i1 %102, label %103, label %109

103:                                              ; preds = %69
  %104 = load i32, i32* @NGX_LOG_ALERT, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %104, i32 %107, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %142

109:                                              ; preds = %69
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @nevents, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i64 %120, i64* %124, align 8
  br label %125

125:                                              ; preds = %117, %109
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @nevents, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i64 %136, i64* %140, align 8
  br label %141

141:                                              ; preds = %133, %125
  br label %142

142:                                              ; preds = %141, %103
  br label %143

143:                                              ; preds = %142, %61
  br label %167

144:                                              ; preds = %55
  %145 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @ngx_log_debug1(i32 %145, i32 %148, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %151)
  %153 = load i64, i64* %6, align 8
  %154 = xor i64 %153, -1
  %155 = trunc i64 %154 to i16
  %156 = sext i16 %155 to i32
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** @event_list, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i16, i16* %162, align 8
  %164 = sext i16 %163 to i32
  %165 = and i32 %164, %156
  %166 = trunc i32 %165 to i16
  store i16 %166, i16* %162, align 8
  br label %167

167:                                              ; preds = %144, %143
  %168 = load i64, i64* @NGX_INVALID_INDEX, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load i64, i64* @NGX_OK, align 8
  store i64 %171, i64* %4, align 8
  br label %172

172:                                              ; preds = %167, %20
  %173 = load i64, i64* %4, align 8
  ret i64 %173
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
