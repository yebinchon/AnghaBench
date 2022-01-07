; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_connect_fail.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_connect_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"127.0.0.1:33211\00", align 1
@cb5 = common dso_local global i32 0, align 4
@c_str_ne = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_connect_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_connect_fail() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 100, i1 false)
  %5 = bitcast i8* %4 to [100 x i8]*
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 0
  store i8 48, i8* %6, align 16
  %7 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %8 = load i32, i32* @cb5, align 4
  %9 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.mg_connection* %9, %struct.mg_connection** %2, align 8
  %10 = icmp ne %struct.mg_connection* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %14 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %15 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @c_str_ne, align 4
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %18 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %16, i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #2

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i8*, i8*) #2

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
