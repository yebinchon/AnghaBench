; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_buffer_limit.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_buffer_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"tcp://127.0.0.1:7878\00", align 1
@ehb_srv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@c_int_eq = common dso_local global i32 0, align 4
@ehb_srv2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_buffer_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_buffer_limit() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* %5)
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @ehb_srv, align 4
  %9 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %1, i8* %7, i32 %8)
  store %struct.mg_connection* %9, %struct.mg_connection** %3, align 8
  %10 = icmp ne %struct.mg_connection* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %14 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %15, i32* null)
  store %struct.mg_connection* %16, %struct.mg_connection** %2, align 8
  %17 = icmp ne %struct.mg_connection* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %21 = call i32 @mg_printf(%struct.mg_connection* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @c_int_eq, align 4
  %23 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %22, i32* %5, i8* inttoptr (i64 4 to i8*))
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ASSERT_EQ(i32 %24, i32 4)
  store i32 0, i32* %5, align 4
  %26 = load i8*, i8** @ehb_srv2, align 8
  %27 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %28 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %29, i32* null)
  store %struct.mg_connection* %30, %struct.mg_connection** %2, align 8
  %31 = icmp ne %struct.mg_connection* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %35 = call i32 @mg_printf(%struct.mg_connection* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @c_int_eq, align 4
  %37 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %36, i32* %5, i8* inttoptr (i64 1 to i8*))
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ASSERT_EQ(i32 %38, i32 0)
  store i32 0, i32* %5, align 4
  %40 = load i8*, i8** @ehb_srv2, align 8
  %41 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %42 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %44 = call i32 @mg_set_protocol_mqtt(%struct.mg_connection* %43)
  %45 = load i8*, i8** %4, align 8
  %46 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %45, i32* null)
  store %struct.mg_connection* %46, %struct.mg_connection** %2, align 8
  %47 = icmp ne %struct.mg_connection* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %51 = call i32 @mg_printf(%struct.mg_connection* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @c_int_eq, align 4
  %53 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %52, i32* %5, i8* inttoptr (i64 1 to i8*))
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ASSERT_EQ(i32 %54, i32 1)
  %56 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*) #1

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i32*, i8*) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mg_set_protocol_mqtt(%struct.mg_connection*) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
