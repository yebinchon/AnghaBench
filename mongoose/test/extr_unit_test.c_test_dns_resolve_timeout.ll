; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_resolve_timeout.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_resolve_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_resolve_async_opts = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"7.7.7.7\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"www.cesanta.com\00", align 1
@MG_DNS_A_RECORD = common dso_local global i32 0, align 4
@dns_resolve_timeout_cb = common dso_local global i32 0, align 4
@c_int_eq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_dns_resolve_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_dns_resolve_timeout() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_resolve_async_opts, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %5 = call i32 @memset(%struct.mg_resolve_async_opts* %2, i32 0, i32 16)
  %6 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %2, i32 0, i32 1
  store i32 -1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.mg_resolve_async_opts, %struct.mg_resolve_async_opts* %2, i32 0, i32 2
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @MG_DNS_A_RECORD, align 4
  %10 = load i32, i32* @dns_resolve_timeout_cb, align 4
  %11 = call i32 @mg_resolve_async_opt(%struct.mg_mgr* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10, i32* %3, %struct.mg_resolve_async_opts* byval(%struct.mg_resolve_async_opts) align 8 %2)
  %12 = load i32, i32* @c_int_eq, align 4
  %13 = call i32 @poll_until(%struct.mg_mgr* %1, i32 5, i32 %12, i32* %3, i8* inttoptr (i64 1 to i8*))
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ASSERT_EQ(i32 %14, i32 1)
  %16 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @memset(%struct.mg_resolve_async_opts*, i32, i32) #1

declare dso_local i32 @mg_resolve_async_opt(%struct.mg_mgr*, i8*, i32, i32, i32*, %struct.mg_resolve_async_opts* byval(%struct.mg_resolve_async_opts) align 8) #1

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i32*, i8*) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
