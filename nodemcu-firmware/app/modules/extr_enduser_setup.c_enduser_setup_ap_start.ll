; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_ap_start.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_ap_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.softap_config = type { i8*, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"enduser_setup_ap_start\00", align 1
@__const.enduser_setup_ap_start.ssid = private unnamed_addr constant [12 x i8] c"SetupGadget\00", align 1
@SOFTAP_IF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%02X%02X%02X\00", align 1
@state = common dso_local global %struct.TYPE_2__* null, align 8
@AUTH_OPEN = common dso_local global i32 0, align 4
@STATIONAP_MODE = common dso_local global i32 0, align 4
@ENDUSER_SETUP_AP_SSID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @enduser_setup_ap_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enduser_setup_ap_start() #0 {
  %1 = alloca %struct.softap_config, align 8
  %2 = alloca [12 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 16
  %5 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @memset(%struct.softap_config* %1, i32 0, i32 40)
  %7 = bitcast [12 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.enduser_setup_ap_start.ssid, i32 0, i32 0), i64 12, i1 false)
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %3, align 4
  %10 = getelementptr inbounds %struct.softap_config, %struct.softap_config* %1, i32 0, i32 0
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @memcpy(i8** %10, i8* %11, i32 %12)
  %14 = load i32, i32* @SOFTAP_IF, align 4
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %16 = call i32 @wifi_get_macaddr(i32 %14, i32* %15)
  %17 = getelementptr inbounds %struct.softap_config, %struct.softap_config* %1, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 95, i8* %21, align 1
  %22 = getelementptr inbounds %struct.softap_config, %struct.softap_config* %1, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 4
  %31 = load i32, i32* %30, align 16
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %31, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 7
  %37 = getelementptr inbounds %struct.softap_config, %struct.softap_config* %1, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %39 = icmp eq %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %0
  br label %45

41:                                               ; preds = %0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = phi i32 [ 1, %40 ], [ %44, %41 ]
  %47 = getelementptr inbounds %struct.softap_config, %struct.softap_config* %1, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @AUTH_OPEN, align 4
  %49 = getelementptr inbounds %struct.softap_config, %struct.softap_config* %1, i32 0, i32 6
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.softap_config, %struct.softap_config* %1, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.softap_config, %struct.softap_config* %1, i32 0, i32 3
  store i32 5, i32* %51, align 8
  %52 = getelementptr inbounds %struct.softap_config, %struct.softap_config* %1, i32 0, i32 4
  store i32 100, i32* %52, align 4
  %53 = load i32, i32* @STATIONAP_MODE, align 4
  %54 = call i32 @wifi_set_opmode(i32 %53)
  %55 = call i32 @wifi_softap_set_config(%struct.softap_config* %1)
  ret void
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i32 @memset(%struct.softap_config*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

declare dso_local i32 @wifi_get_macaddr(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @wifi_set_opmode(i32) #1

declare dso_local i32 @wifi_softap_set_config(%struct.softap_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
