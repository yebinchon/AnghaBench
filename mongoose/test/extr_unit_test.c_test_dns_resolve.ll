; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_resolve.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_mgr_init_opts = type { i8* }

@.str = private unnamed_addr constant [17 x i8] c"dns.msftncsi.com\00", align 1
@MG_DNS_A_RECORD = common dso_local global i32 0, align 4
@dns_resolve_cb = common dso_local global i32 0, align 4
@c_int_ne = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"8.8.4.4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_dns_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_dns_resolve() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_mgr_init_opts, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %5 = load i32, i32* @MG_DNS_A_RECORD, align 4
  %6 = load i32, i32* @dns_resolve_cb, align 4
  %7 = call i32 @mg_resolve_async(%struct.mg_mgr* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32* %3)
  %8 = load i32, i32* @c_int_ne, align 4
  %9 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %8, i32* %3, i8* null)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ASSERT_EQ(i32 %10, i32 1)
  %12 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  store i32 0, i32* %3, align 4
  %13 = call i32 @memset(%struct.mg_mgr_init_opts* %2, i32 0, i32 8)
  %14 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.mg_mgr_init_opts, %struct.mg_mgr_init_opts* %2, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @mg_mgr_init_opt(%struct.mg_mgr* %1, i32* null, i8* %16)
  %18 = load i32, i32* @MG_DNS_A_RECORD, align 4
  %19 = load i32, i32* @dns_resolve_cb, align 4
  %20 = call i32 @mg_resolve_async(%struct.mg_mgr* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32* %3)
  %21 = load i32, i32* @c_int_ne, align 4
  %22 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %21, i32* %3, i8* null)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ASSERT_EQ(i32 %23, i32 1)
  %25 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  store i32 0, i32* %3, align 4
  %26 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %27 = call i32 @mg_set_nameserver(%struct.mg_mgr* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @MG_DNS_A_RECORD, align 4
  %29 = load i32, i32* @dns_resolve_cb, align 4
  %30 = call i32 @mg_resolve_async(%struct.mg_mgr* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32* %3)
  %31 = load i32, i32* @c_int_ne, align 4
  %32 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %31, i32* %3, i8* null)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ASSERT_EQ(i32 %33, i32 1)
  %35 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @mg_resolve_async(%struct.mg_mgr*, i8*, i32, i32, i32*) #1

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i32*, i8*) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

declare dso_local i32 @memset(%struct.mg_mgr_init_opts*, i32, i32) #1

declare dso_local i32 @mg_mgr_init_opt(%struct.mg_mgr*, i32*, i8*) #1

declare dso_local i32 @mg_set_nameserver(%struct.mg_mgr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
