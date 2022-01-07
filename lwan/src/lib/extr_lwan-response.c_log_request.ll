; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-response.c_log_request.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-response.c_log_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s [%s] \22%s %s HTTP/%s\22 %d %s\00", align 1
@REQUEST_IS_HTTP_1_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan_request*, i32)* @log_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_request(%struct.lwan_request* %0, i32 %1) #0 {
  %3 = alloca %struct.lwan_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %12 = call i32 @lwan_request_get_remote_address(%struct.lwan_request* %11, i8* %10)
  %13 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %14 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %13, i32 0, i32 3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %22 = call i32 @get_request_method(%struct.lwan_request* %21)
  %23 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %24 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %28 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @REQUEST_IS_HTTP_1_0, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.lwan_request*, %struct.lwan_request** %3, align 8
  %37 = getelementptr inbounds %struct.lwan_request, %struct.lwan_request* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %20, i32 %22, i32 %26, i8* %34, i32 %35, i32 %39)
  %41 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %41)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lwan_status_debug(i8*, i32, i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @lwan_request_get_remote_address(%struct.lwan_request*, i8*) #2

declare dso_local i32 @get_request_method(%struct.lwan_request*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
