; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_udp.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }
%struct.udp_res = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"udp://127.0.0.1:7878\00", align 1
@eh3_srv = common dso_local global i32 0, align 4
@eh3_clnt = common dso_local global i32 0, align 4
@c_int_eq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ACCEPT+ RECV boo! CLOSE\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"CONNECT RECV boo! CLOSE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_udp() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.udp_res, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %6 = call i32 @memset(%struct.udp_res* %5, i32 0, i32 16)
  %7 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %5, i32 0, i32 1
  %8 = call i32 @mbuf_init(%struct.TYPE_3__* %7, i32 100)
  %9 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %5, i32 0, i32 0
  %10 = call i32 @mbuf_init(%struct.TYPE_3__* %9, i32 100)
  %11 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, %struct.udp_res* %5)
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @eh3_srv, align 4
  %14 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %1, i8* %12, i32 %13)
  store %struct.mg_connection* %14, %struct.mg_connection** %2, align 8
  %15 = icmp ne %struct.mg_connection* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @eh3_clnt, align 4
  %20 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %18, i32 %19)
  store %struct.mg_connection* %20, %struct.mg_connection** %3, align 8
  %21 = icmp ne %struct.mg_connection* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32, i32* @c_int_eq, align 4
  %25 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %24, i32* %26, i8* inttoptr (i64 23 to i8*))
  %28 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %5, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ASSERT_STREQ_NZ(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %32 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ASSERT_STREQ_NZ(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %5, i32 0, i32 1
  %37 = call i32 @mbuf_free(%struct.TYPE_3__* %36)
  %38 = getelementptr inbounds %struct.udp_res, %struct.udp_res* %5, i32 0, i32 0
  %39 = call i32 @mbuf_free(%struct.TYPE_3__* %38)
  %40 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

declare dso_local i32 @memset(%struct.udp_res*, i32, i32) #1

declare dso_local i32 @mbuf_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, %struct.udp_res*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i32*, i8*) #1

declare dso_local i32 @ASSERT_STREQ_NZ(i32, i8*) #1

declare dso_local i32 @mbuf_free(%struct.TYPE_3__*) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
