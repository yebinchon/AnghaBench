; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_chunk.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c":-)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"7\0D\0A123 :-)\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"0\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_http_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_http_chunk() #0 {
  %1 = alloca %struct.mg_connection, align 4
  %2 = call i32 @init_test_connection(%struct.mg_connection* %1)
  %3 = call i32 @mg_printf_http_chunk(%struct.mg_connection* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %4 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ASSERT_EQ(i32 %6, i32 12)
  %8 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @memcmp(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  %12 = call i32 @ASSERT_EQ(i32 %11, i32 0)
  %13 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %14 = call i32 @mbuf_free(%struct.TYPE_2__* %13)
  %15 = call i32 @mg_send_http_chunk(%struct.mg_connection* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ASSERT_EQ(i32 %18, i32 5)
  %20 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcmp(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %24 = call i32 @ASSERT_EQ(i32 %23, i32 0)
  %25 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %26 = call i32 @mbuf_free(%struct.TYPE_2__* %25)
  ret i8* null
}

declare dso_local i32 @init_test_connection(%struct.mg_connection*) #1

declare dso_local i32 @mg_printf_http_chunk(%struct.mg_connection*, i8*, i32, i8*) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @mbuf_free(%struct.TYPE_2__*) #1

declare dso_local i32 @mg_send_http_chunk(%struct.mg_connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
