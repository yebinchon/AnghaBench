; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_resolve_hosts.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_resolve_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.socket_address = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"does_not,exist!in_host*file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_dns_resolve_hosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_dns_resolve_hosts() #0 {
  %1 = alloca %union.socket_address, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* %2, align 4
  %4 = call i32 @memset(%union.socket_address* %1, i32 0, i32 4)
  %5 = call i32 @mg_resolve_from_hosts_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %union.socket_address* %1)
  %6 = call i32 @ASSERT_EQ(i32 %5, i32 0)
  %7 = bitcast %union.socket_address* %1 to %struct.TYPE_4__*
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @ASSERT_EQ(i32 %10, i32 %11)
  %13 = call i32 @mg_resolve_from_hosts_file(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %union.socket_address* %1)
  %14 = call i32 @ASSERT_EQ(i32 %13, i32 -1)
  ret i8* null
}

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @memset(%union.socket_address*, i32, i32) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mg_resolve_from_hosts_file(i8*, %union.socket_address*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
