; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_packet_id.c_test_packet_id_write_short_wrap.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_packet_id.c_test_packet_id_write_short_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_packet_id_write_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @test_packet_id_write_short_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_packet_id_write_short_wrap(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_packet_id_write_data*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_packet_id_write_data*
  store %struct.test_packet_id_write_data* %6, %struct.test_packet_id_write_data** %3, align 8
  %7 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %8 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 4
  %10 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %11 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %10, i32 0, i32 1
  %12 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %13 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %12, i32 0, i32 0
  %14 = call i32 @packet_id_write(%struct.TYPE_2__* %11, i32* %13, i32 0, i32 0)
  %15 = call i32 @assert_false(i32 %14)
  ret void
}

declare dso_local i32 @assert_false(i32) #1

declare dso_local i32 @packet_id_write(%struct.TYPE_2__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
