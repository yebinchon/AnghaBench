; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_handle_OPTIONS.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_handle_OPTIONS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"enduser_setup_handle_OPTIONS\00", align 1
@__const.enduser_setup_handle_OPTIONS.json = private unnamed_addr constant [213 x i8] c"HTTP/1.1 200 OK\0D\0ACache-Control: no-cache\0D\0AConnection: close\0D\0AContent-Type: application/json\0D\0AContent-Length: 0\0D\0AAccess-Control-Allow-Origin: *\0D\0AAccess-Control-Allow-Methods: GET\0D\0AAccess-Control-Allow-Age: 300\0D\0A\0D\0A\00", align 16
@__const.enduser_setup_handle_OPTIONS.others = private unnamed_addr constant [83 x i8] c"HTTP/1.1 200 OK\0D\0ACache-Control: no-cache\0D\0AConnection: close\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/aplist\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"/setwifi?\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"/status.json\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_pcb*, i8*, i16)* @enduser_setup_handle_OPTIONS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enduser_setup_handle_OPTIONS(%struct.tcp_pcb* %0, i8* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.tcp_pcb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca [213 x i8], align 16
  %8 = alloca [83 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %10 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = bitcast [213 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([213 x i8], [213 x i8]* @__const.enduser_setup_handle_OPTIONS.json, i32 0, i32 0), i64 213, i1 false)
  %12 = bitcast [83 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([83 x i8], [83 x i8]* @__const.enduser_setup_handle_OPTIONS.others, i32 0, i32 0), i64 83, i1 false)
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strncmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 12)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26, %21, %16
  %32 = load %struct.tcp_pcb*, %struct.tcp_pcb** %4, align 8
  %33 = getelementptr inbounds [213 x i8], [213 x i8]* %7, i64 0, i64 0
  %34 = getelementptr inbounds [213 x i8], [213 x i8]* %7, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %32, i8* %33, i32 %35)
  br label %44

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.tcp_pcb*, %struct.tcp_pcb** %4, align 8
  %40 = getelementptr inbounds [83 x i8], [83 x i8]* %8, i64 0, i64 0
  %41 = getelementptr inbounds [83 x i8], [83 x i8]* %8, i64 0, i64 0
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %39, i8* %40, i32 %42)
  br label %44

44:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @enduser_setup_http_serve_header(%struct.tcp_pcb*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
