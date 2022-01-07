; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_parse_mqtt_qos1.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_parse_mqtt_qos1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mqtt_message = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mbuf = type { i32 }

@MG_MQTT_CMD_PUBLISH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"/topic\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"payload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mqtt_parse_mqtt_qos1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mqtt_parse_mqtt_qos1() #0 {
  %1 = alloca %struct.mg_mqtt_message, align 4
  %2 = alloca [19 x i8], align 16
  %3 = alloca %struct.mbuf, align 4
  %4 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0
  %5 = load i32, i32* @MG_MQTT_CMD_PUBLISH, align 4
  %6 = shl i32 %5, 4
  %7 = or i32 %6, 2
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %4, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 17, i8* %9, align 1
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 6, i8* %11, align 1
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 47, i8* %12, align 1
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 116, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 111, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 112, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 105, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 99, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 18, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 52, i8* %19, align 1
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 112, i8* %20, align 1
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 97, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 121, i8* %22, align 1
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 108, i8* %23, align 1
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 111, i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 97, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 100, i8* %26, align 1
  %27 = call i32 @memset(%struct.mg_mqtt_message* %1, i32 0, i32 28)
  %28 = call i32 @mbuf_init(%struct.mbuf* %3, i32 0)
  %29 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0
  %30 = call i32 @mbuf_append(%struct.mbuf* %3, i8* %29, i32 19)
  %31 = call i32 @parse_mqtt(%struct.mbuf* %3, %struct.mg_mqtt_message* %1)
  %32 = call i32 @ASSERT_EQ(i32 %31, i32 19)
  %33 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %1, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MG_MQTT_CMD_PUBLISH, align 4
  %36 = call i32 @ASSERT_EQ(i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %1, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ASSERT_EQ(i32 %38, i32 1)
  %40 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %1, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ASSERT_EQ(i32 %41, i32 4660)
  %43 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %1, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ASSERT_EQ(i32 %45, i32 6)
  %47 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %1, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ASSERT_STREQ_NZ(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %51 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %1, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ASSERT_EQ(i32 %53, i32 7)
  %55 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %1, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ASSERT_STREQ_NZ(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 @mbuf_free(%struct.mbuf* %3)
  ret i8* null
}

declare dso_local i32 @memset(%struct.mg_mqtt_message*, i32, i32) #1

declare dso_local i32 @mbuf_init(%struct.mbuf*, i32) #1

declare dso_local i32 @mbuf_append(%struct.mbuf*, i8*, i32) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @parse_mqtt(%struct.mbuf*, %struct.mg_mqtt_message*) #1

declare dso_local i32 @ASSERT_STREQ_NZ(i32, i8*) #1

declare dso_local i32 @mbuf_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
