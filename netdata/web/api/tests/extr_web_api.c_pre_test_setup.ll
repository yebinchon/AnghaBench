; ModuleID = '/home/carl/AnghaBench/netdata/web/api/tests/extr_web_api.c_pre_test_setup.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/tests/extr_web_api.c_pre_test_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i64*, i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@localhost = common dso_local global i64 0, align 8
@NETDATA_WEB_RESPONSE_INITIAL_SIZE = common dso_local global i32 0, align 4
@NETDATA_WEB_RESPONSE_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.web_client* ()* @pre_test_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.web_client* @pre_test_setup() #0 {
  %1 = alloca %struct.web_client*, align 8
  %2 = call i64 @malloc(i32 4)
  store i64 %2, i64* @localhost, align 8
  %3 = call i64 @malloc(i32 48)
  %4 = inttoptr i64 %3 to %struct.web_client*
  store %struct.web_client* %4, %struct.web_client** %1, align 8
  %5 = load i32, i32* @NETDATA_WEB_RESPONSE_INITIAL_SIZE, align 4
  %6 = call i8* @buffer_create(i32 %5)
  %7 = load %struct.web_client*, %struct.web_client** %1, align 8
  %8 = getelementptr inbounds %struct.web_client, %struct.web_client* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i8* %6, i8** %9, align 8
  %10 = load i32, i32* @NETDATA_WEB_RESPONSE_HEADER_SIZE, align 4
  %11 = call i8* @buffer_create(i32 %10)
  %12 = load %struct.web_client*, %struct.web_client** %1, align 8
  %13 = getelementptr inbounds %struct.web_client, %struct.web_client* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i8* %11, i8** %14, align 8
  %15 = load i32, i32* @NETDATA_WEB_RESPONSE_HEADER_SIZE, align 4
  %16 = call i8* @buffer_create(i32 %15)
  %17 = load %struct.web_client*, %struct.web_client** %1, align 8
  %18 = getelementptr inbounds %struct.web_client, %struct.web_client* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load %struct.web_client*, %struct.web_client** %1, align 8
  %21 = getelementptr inbounds %struct.web_client, %struct.web_client* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strcpy(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.web_client*, %struct.web_client** %1, align 8
  %25 = getelementptr inbounds %struct.web_client, %struct.web_client* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.web_client*, %struct.web_client** %1, align 8
  %29 = getelementptr inbounds %struct.web_client, %struct.web_client* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.web_client*, %struct.web_client** %1, align 8
  ret %struct.web_client* %32
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @buffer_create(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
