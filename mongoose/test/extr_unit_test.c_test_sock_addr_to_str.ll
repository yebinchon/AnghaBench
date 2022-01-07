; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_sock_addr_to_str.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_sock_addr_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.socket_address = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MG_SOCK_STRINGIFY_IP = common dso_local global i32 0, align 4
@MG_SOCK_STRINGIFY_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"127.0.0.1:12345\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_sock_addr_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_sock_addr_to_str() #0 {
  %1 = alloca [60 x i8], align 16
  %2 = alloca %union.socket_address, align 8
  %3 = getelementptr inbounds [60 x i8], [60 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %3, align 16
  %4 = call i32 @memset(%union.socket_address* %2, i32 0, i32 16)
  %5 = load i32, i32* @AF_INET, align 4
  %6 = bitcast %union.socket_address* %2 to %struct.TYPE_7__*
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = bitcast %union.socket_address* %2 to %struct.TYPE_6__*
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = call i8* @htons(i32 12345)
  %13 = bitcast %union.socket_address* %2 to %struct.TYPE_6__*
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds [60 x i8], [60 x i8]* %1, i64 0, i64 0
  %16 = call i32 @mg_sock_addr_to_str(%union.socket_address* %2, i8* %15, i32 60, i32 0)
  %17 = getelementptr inbounds [60 x i8], [60 x i8]* %1, i64 0, i64 0
  %18 = call i32 @ASSERT_STREQ(i8* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds [60 x i8], [60 x i8]* %1, i64 0, i64 0
  %20 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %21 = call i32 @mg_sock_addr_to_str(%union.socket_address* %2, i8* %19, i32 60, i32 %20)
  %22 = getelementptr inbounds [60 x i8], [60 x i8]* %1, i64 0, i64 0
  %23 = call i32 @ASSERT_STREQ(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = getelementptr inbounds [60 x i8], [60 x i8]* %1, i64 0, i64 0
  %25 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %26 = call i32 @mg_sock_addr_to_str(%union.socket_address* %2, i8* %24, i32 60, i32 %25)
  %27 = getelementptr inbounds [60 x i8], [60 x i8]* %1, i64 0, i64 0
  %28 = call i32 @ASSERT_STREQ(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %29 = getelementptr inbounds [60 x i8], [60 x i8]* %1, i64 0, i64 0
  %30 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %31 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @mg_sock_addr_to_str(%union.socket_address* %2, i8* %29, i32 60, i32 %32)
  %34 = getelementptr inbounds [60 x i8], [60 x i8]* %1, i64 0, i64 0
  %35 = call i32 @ASSERT_STREQ(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  ret i8* null
}

declare dso_local i32 @memset(%union.socket_address*, i32, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @mg_sock_addr_to_str(%union.socket_address*, i8*, i32, i32) #1

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
