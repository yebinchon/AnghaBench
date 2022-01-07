; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_packet_id.c_test_packet_id_write_long_wrap.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_packet_id.c_test_packet_id_write_long_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_packet_id_write_data = type { %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @test_packet_id_write_long_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_packet_id_write_long_wrap(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.test_packet_id_write_data*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.test_packet_id_write_data*
  store %struct.test_packet_id_write_data* %6, %struct.test_packet_id_write_data** %3, align 8
  %7 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %8 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  %10 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %11 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 5006, i32* %12, align 4
  store i32 5006, i32* @now, align 4
  %13 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %14 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %13, i32 0, i32 1
  %15 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %16 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %15, i32 0, i32 2
  %17 = call i32 @packet_id_write(%struct.TYPE_4__* %14, i32* %16, i32 1, i32 0)
  %18 = call i32 @assert_false(i32 %17)
  store i32 5010, i32* @now, align 4
  %19 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %20 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %19, i32 0, i32 1
  %21 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %22 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %21, i32 0, i32 2
  %23 = call i32 @packet_id_write(%struct.TYPE_4__* %20, i32* %22, i32 1, i32 0)
  %24 = call i32 @assert_true(i32 %23)
  %25 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %26 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %33 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @now, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %41 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @htonl(i32 1)
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert_true(i32 %46)
  %48 = load %struct.test_packet_id_write_data*, %struct.test_packet_id_write_data** %3, align 8
  %49 = getelementptr inbounds %struct.test_packet_id_write_data, %struct.test_packet_id_write_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @now, align 4
  %53 = call i64 @htonl(i32 %52)
  %54 = icmp eq i64 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert_true(i32 %55)
  ret void
}

declare dso_local i32 @assert_false(i32) #1

declare dso_local i32 @packet_id_write(%struct.TYPE_4__*, i32*, i32, i32) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
