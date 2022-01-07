; ModuleID = '/home/carl/AnghaBench/netdata/web/api/tests/extr_web_api.c_api_info.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/tests/extr_web_api.c_api_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAX_HEADERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"/api/v1/info\00", align 1
@WEB_CLIENT_FLAG_WAIT_RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @api_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @api_info(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.web_client*, align 8
  store i8** %0, i8*** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @MAX_HEADERS, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = call %struct.web_client* (...) @pre_test_setup()
  store %struct.web_client* %10, %struct.web_client** %4, align 8
  %11 = load %struct.web_client*, %struct.web_client** %4, align 8
  %12 = getelementptr inbounds %struct.web_client, %struct.web_client* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @build_request(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1, i64 %15)
  %17 = load %struct.web_client*, %struct.web_client** %4, align 8
  %18 = call i32 @web_client_process_request(%struct.web_client* %17)
  %19 = load %struct.web_client*, %struct.web_client** %4, align 8
  %20 = getelementptr inbounds %struct.web_client, %struct.web_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WEB_CLIENT_FLAG_WAIT_RECEIVE, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @assert_int_equal(i32 %23, i32 0)
  %25 = load %struct.web_client*, %struct.web_client** %4, align 8
  %26 = call i32 @post_test_cleanup(%struct.web_client* %25)
  br label %27

27:                                               ; preds = %9
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %5

30:                                               ; preds = %5
  ret void
}

declare dso_local %struct.web_client* @pre_test_setup(...) #1

declare dso_local i32 @build_request(i32, i8*, i32, i64) #1

declare dso_local i32 @web_client_process_request(%struct.web_client*) #1

declare dso_local i32 @assert_int_equal(i32, i32) #1

declare dso_local i32 @post_test_cleanup(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
