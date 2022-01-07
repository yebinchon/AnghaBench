; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_connect_opts.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_connect_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i8*, i32 }
%struct.mg_connect_opts = type { i32, i8* }

@MG_F_USER_6 = common dso_local global i32 0, align 4
@MG_F_WANT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"127.0.0.1:33211\00", align 1
@cb6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_connect_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_connect_opts() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_connect_opts, align 8
  %4 = call i32 @memset(%struct.mg_connect_opts* %3, i32 0, i32 16)
  %5 = getelementptr inbounds %struct.mg_connect_opts, %struct.mg_connect_opts* %3, i32 0, i32 1
  store i8* inttoptr (i64 3735928559 to i8*), i8** %5, align 8
  %6 = load i32, i32* @MG_F_USER_6, align 4
  %7 = getelementptr inbounds %struct.mg_connect_opts, %struct.mg_connect_opts* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = load i32, i32* @MG_F_WANT_READ, align 4
  %9 = getelementptr inbounds %struct.mg_connect_opts, %struct.mg_connect_opts* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %8
  store i32 %11, i32* %9, align 8
  %12 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %13 = load i32, i32* @cb6, align 4
  %14 = bitcast %struct.mg_connect_opts* %3 to { i32, i8* }*
  %15 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %14, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct.mg_connection* @mg_connect_opt(%struct.mg_mgr* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i8* %18)
  store %struct.mg_connection* %19, %struct.mg_connection** %2, align 8
  %20 = icmp ne %struct.mg_connection* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %24 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, inttoptr (i64 3735928559 to i8*)
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %30 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MG_F_USER_6, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %36 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MG_F_WANT_READ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

declare dso_local i32 @memset(%struct.mg_connect_opts*, i32, i32) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mg_connection* @mg_connect_opt(%struct.mg_mgr*, i8*, i32, i32, i8*) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
