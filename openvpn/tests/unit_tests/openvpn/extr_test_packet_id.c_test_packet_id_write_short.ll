; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_packet_id.c_test_packet_id_write_short.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_packet_id.c_test_packet_id_write_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_packet_id_write_data = type { %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @test_packet_id_write_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_packet_id_write_short(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_packet_id_write_data*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_packet_id_write_data*
  store %struct.test_packet_id_write_data* %6, %struct.test_packet_id_write_data** %3, align 8
  store i32 5010, i32* @now, align 4
  %7 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %8 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %7, i32 0, i32 1
  %9 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %10 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %9, i32 0, i32 2
  %11 = call i32 @packet_id_write(%struct.TYPE_4__* %8, i32* %10, i32 0, i32 0)
  %12 = call i32 @assert_true(i32 %11)
  %13 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %14 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_true(i32 %18)
  %20 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %21 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @htonl(i32 1)
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_true(i32 %26)
  %28 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %29 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert_true(i32 %33)
  ret void
}

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @packet_id_write(%struct.TYPE_4__*, i32*, i32, i32) #1

declare dso_local i64 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
