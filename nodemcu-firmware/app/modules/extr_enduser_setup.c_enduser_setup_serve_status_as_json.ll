; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_serve_status_as_json.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_serve_status_as_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.tcp_pcb = type { i32 }
%struct.ip_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"enduser_setup_serve_status_as_json\00", align 1
@state = common dso_local global %struct.TYPE_4__* null, align 8
@STATION_IF = common dso_local global i32 0, align 4
@ipaddr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"{\22deviceid\22:\22%s\22, \22status\22:%d}\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"{\22deviceid\22:\22%06X\22, \22status\22:%d}\00", align 1
@__const.enduser_setup_serve_status_as_json.fmt = private unnamed_addr constant [150 x i8] c"HTTP/1.1 200 OK\0D\0ACache-Control: no-cache\0D\0AConnection: close\0D\0AAccess-Control-Allow-Origin: *\0D\0AContent-Type: application/json\0D\0AContent-Length: %d\0D\0A\0D\0A%s\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_pcb*)* @enduser_setup_serve_status_as_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enduser_setup_serve_status_as_json(%struct.tcp_pcb* %0) #0 {
  %2 = alloca %struct.tcp_pcb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.ip_info, align 4
  %6 = alloca [150 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** %2, align 8
  %10 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %22

19:                                               ; preds = %1
  %20 = call i32 (...) @wifi_station_get_connect_status()
  %21 = sext i32 %20 to i64
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i64 [ %18, %15 ], [ %21, %19 ]
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32, i32* @STATION_IF, align 4
  %29 = call i32 @wifi_get_ip_info(i32 %28, %struct.ip_info* %5)
  %30 = load i8*, i8** @ipaddr, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i8*, i8** @ipaddr, align 8
  %35 = getelementptr inbounds %struct.ip_info, %struct.ip_info* %5, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @IP2STR(i32* %36)
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %41 = load i8*, i8** @ipaddr, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %41, i32 %42)
  br label %49

44:                                               ; preds = %22
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %46 = call i32 (...) @system_get_chip_id()
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = bitcast [150 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %50, i8* align 16 getelementptr inbounds ([150 x i8], [150 x i8]* @__const.enduser_setup_serve_status_as_json.fmt, i32 0, i32 0), i64 150, i1 false)
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %52 = call i32 @strlen(i8* %51)
  store i32 %52, i32* %7, align 4
  %53 = getelementptr inbounds [150 x i8], [150 x i8]* %6, i64 0, i64 0
  %54 = call i32 @strlen(i8* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @NUMLEN(i32 %55)
  %57 = add nsw i32 %54, %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %8, align 8
  %63 = alloca i8, i64 %61, align 16
  store i64 %61, i64* %9, align 8
  %64 = getelementptr inbounds [150 x i8], [150 x i8]* %6, i64 0, i64 0
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* %64, i32 %65, i8* %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.tcp_pcb*, %struct.tcp_pcb** %2, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %68, i8* %63, i32 %69)
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i32 @wifi_station_get_connect_status(...) #1

declare dso_local i32 @wifi_get_ip_info(i32, %struct.ip_info*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @IP2STR(i32*) #1

declare dso_local i32 @system_get_chip_id(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NUMLEN(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @enduser_setup_http_serve_header(%struct.tcp_pcb*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
