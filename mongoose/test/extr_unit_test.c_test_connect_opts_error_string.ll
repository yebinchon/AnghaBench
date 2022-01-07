; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_connect_opts_error_string.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_connect_opts_error_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }
%struct.mg_connect_opts = type { i8** }

@.str = private unnamed_addr constant [16 x i8] c"127.0.0.1:65537\00", align 1
@cb6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot parse address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_connect_opts_error_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_connect_opts_error_string() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_connect_opts, align 8
  %4 = alloca i8*, align 8
  store i8* null, i8** %4, align 8
  %5 = call i32 @memset(%struct.mg_connect_opts* %3, i32 0, i32 8)
  %6 = getelementptr inbounds %struct.mg_connect_opts, %struct.mg_connect_opts* %3, i32 0, i32 0
  store i8** %4, i8*** %6, align 8
  %7 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %8 = load i32, i32* @cb6, align 4
  %9 = getelementptr inbounds %struct.mg_connect_opts, %struct.mg_connect_opts* %3, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = call %struct.mg_connection* @mg_connect_opt(%struct.mg_mgr* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8, i8** %10)
  store %struct.mg_connection* %11, %struct.mg_connection** %2, align 8
  %12 = icmp eq %struct.mg_connection* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @ASSERT_STREQ(i8* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

declare dso_local i32 @memset(%struct.mg_connect_opts*, i32, i32) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mg_connection* @mg_connect_opt(%struct.mg_mgr*, i8*, i32, i8**) #1

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
