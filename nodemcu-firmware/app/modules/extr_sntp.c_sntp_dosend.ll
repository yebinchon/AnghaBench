; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_sntp_dosend.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sntp.c_sntp_dosend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i64 }
%struct.pbuf = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }

@state = common dso_local global %struct.TYPE_12__* null, align 8
@on_timeout = common dso_local global i32 0, align 4
@SWTIMER_RESUME = common dso_local global i32 0, align 4
@server_count = common dso_local global i32 0, align 4
@MAX_ATTEMPTS = common dso_local global i32 0, align 4
@tasknumber = common dso_local global i32 0, align 4
@SNTP_HANDLE_RESULT_ID = common dso_local global i32 0, align 4
@serverp = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"sntp: server %s (%d), attempt %d\0A\00", align 1
@PBUF_TRANSPORT = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@NTP_MEM_ERR = common dso_local global i32 0, align 4
@NTP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"sntp: send: %d\0A\00", align 1
@the_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sntp_dosend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sntp_dosend() #0 {
  %1 = alloca %struct.pbuf*, align 8
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %79, %0
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ult i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = call i32 @os_timer_disarm(i32* %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %15 = load i32, i32* @on_timeout, align 4
  %16 = call i32 @os_timer_setfn(i32* %14, i32 %15, i32* null)
  %17 = load i32, i32* @on_timeout, align 4
  %18 = load i32, i32* @SWTIMER_RESUME, align 4
  %19 = call i32 @SWTIMER_REG_CB(i32 %17, i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %27

22:                                               ; preds = %4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %22, %9
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @server_count, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAX_ATTEMPTS, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @server_count, align 4
  %52 = mul nsw i32 %50, %51
  %53 = icmp sge i32 %52, 8
  br i1 %53, label %54, label %58

54:                                               ; preds = %47, %41
  %55 = load i32, i32* @tasknumber, align 4
  %56 = load i32, i32* @SNTP_HANDLE_RESULT_ID, align 4
  %57 = call i32 @task_post_high(i32 %55, i32 %56)
  br label %139

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @serverp, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %59
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = shl i32 1, %75
  %77 = and i32 %71, %76
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %68, %59
  %80 = phi i1 [ true, %59 ], [ %78, %68 ]
  br i1 %80, label %4, label %81

81:                                               ; preds = %79
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** @serverp, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %85
  %87 = call i32 @ipaddr_ntoa(%struct.TYPE_11__* %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i32, ...) @sntp_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %87, i64 %90, i32 %93)
  %95 = load i32, i32* @PBUF_TRANSPORT, align 4
  %96 = load i32, i32* @PBUF_RAM, align 4
  %97 = call %struct.pbuf* @pbuf_alloc(i32 %95, i32 24, i32 %96)
  store %struct.pbuf* %97, %struct.pbuf** %1, align 8
  %98 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %99 = icmp ne %struct.pbuf* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %81
  %101 = load i32, i32* @tasknumber, align 4
  %102 = load i32, i32* @NTP_MEM_ERR, align 4
  %103 = call i32 @task_post_low(i32 %101, i32 %102)
  br label %139

104:                                              ; preds = %81
  %105 = call i32 @os_memset(%struct.TYPE_10__* %2, i32 0, i32 24)
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i32 4, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 3, i32* %107, align 4
  %108 = call i64 (...) @system_get_time()
  %109 = call i8* @htonl(i64 %108)
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  %115 = bitcast %struct.TYPE_9__* %113 to i8*
  %116 = bitcast %struct.TYPE_9__* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 16, i1 false)
  %117 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %118 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @os_memcpy(i32 %119, %struct.TYPE_10__* %2, i32 24)
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** @serverp, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %128
  %130 = load i32, i32* @NTP_PORT, align 4
  %131 = call i32 @udp_sendto(i32 %123, %struct.pbuf* %124, %struct.TYPE_11__* %129, i32 %130)
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  %133 = call i32 (i8*, i32, ...) @sntp_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load %struct.pbuf*, %struct.pbuf** %1, align 8
  %135 = call i32 @pbuf_free(%struct.pbuf* %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** @state, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = call i32 @os_timer_arm(i32* %137, i32 1000, i32 0)
  br label %139

139:                                              ; preds = %104, %100, %54
  ret void
}

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_timer_setfn(i32*, i32, i32*) #1

declare dso_local i32 @SWTIMER_REG_CB(i32, i32) #1

declare dso_local i32 @task_post_high(i32, i32) #1

declare dso_local i32 @sntp_dbg(i8*, i32, ...) #1

declare dso_local i32 @ipaddr_ntoa(%struct.TYPE_11__*) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @task_post_low(i32, i32) #1

declare dso_local i32 @os_memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @system_get_time(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @os_memcpy(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @udp_sendto(i32, %struct.pbuf*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
