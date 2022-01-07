; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_connack.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_connack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@MG_MQTT_CMD_CONNACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mqtt_connack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mqtt_connack() #0 {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca i8*, align 8
  %3 = call %struct.mg_connection* (...) @create_test_connection()
  store %struct.mg_connection* %3, %struct.mg_connection** %1, align 8
  %4 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %5 = call i32 @mg_set_protocol_mqtt(%struct.mg_connection* %4)
  %6 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %7 = call i32 @mg_mqtt_connack(%struct.mg_connection* %6, i32 42)
  %8 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %9 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  %12 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %13 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = and i32 %22, 240
  %24 = trunc i32 %23 to i8
  %25 = load i32, i32* @MG_MQTT_CMD_CONNACK, align 4
  %26 = shl i32 %25, 4
  %27 = call i32 @ASSERT_EQ(i8 signext %24, i32 %26)
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i64
  %32 = trunc i64 %31 to i8
  %33 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %34 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 2
  %38 = call i32 @ASSERT_EQ(i8 signext %32, i32 %37)
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @ASSERT_EQ(i8 signext %41, i32 42)
  %43 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %44 = call i32 @destroy_test_connection(%struct.mg_connection* %43)
  ret i8* null
}

declare dso_local %struct.mg_connection* @create_test_connection(...) #1

declare dso_local i32 @mg_set_protocol_mqtt(%struct.mg_connection*) #1

declare dso_local i32 @mg_mqtt_connack(%struct.mg_connection*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ASSERT_EQ(i8 signext, i32) #1

declare dso_local i32 @destroy_test_connection(%struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
