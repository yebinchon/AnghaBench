; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_pipeline.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"127.0.0.1:7777\00", align 1
@http_pipeline_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"GET / HTTP/1.1\0D\0A\0D\0AGET / HTTP/1.1\0D\0A\0D\0A\00", align 1
@c_int_eq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_http_pipeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_http_pipeline() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = bitcast i32* %5 to i8*
  %7 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i8* %6)
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @http_pipeline_handler, align 4
  %10 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %1, i8* %8, i32 %9)
  store %struct.mg_connection* %10, %struct.mg_connection** %2, align 8
  %11 = call i32 @ASSERT(%struct.mg_connection* %10)
  %12 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %13 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @http_pipeline_handler, align 4
  %16 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %14, i32 %15)
  store %struct.mg_connection* %16, %struct.mg_connection** %3, align 8
  %17 = call i32 @ASSERT(%struct.mg_connection* %16)
  %18 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %19 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %18)
  %20 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %21 = call i32 @mg_printf(%struct.mg_connection* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @c_int_eq, align 4
  %23 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %22, i32* %5, i8* inttoptr (i64 22 to i8*))
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ASSERT_EQ(i32 %24, i32 22)
  %26 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i8*) #1

declare dso_local i32 @ASSERT(%struct.mg_connection*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*) #1

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i32*, i8*) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
