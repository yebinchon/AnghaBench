; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_suback.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_suback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8 }

@__const.test_mqtt_suback.qoss = private unnamed_addr constant [1 x i32] [i32 1], align 4
@MG_MQTT_CMD_SUBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mqtt_suback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mqtt_suback() #0 {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca [1 x i32], align 4
  %3 = alloca i8*, align 8
  %4 = call %struct.mg_connection* (...) @create_test_connection()
  store %struct.mg_connection* %4, %struct.mg_connection** %1, align 8
  %5 = bitcast [1 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([1 x i32]* @__const.test_mqtt_suback.qoss to i8*), i64 4, i1 false)
  %6 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %7 = call i32 @mg_set_protocol_mqtt(%struct.mg_connection* %6)
  %8 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %10 = call i32 @mg_mqtt_suback(%struct.mg_connection* %8, i32* %9, i32 1, i32 42)
  %11 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %12 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %3, align 8
  %15 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = call i32 @ASSERT_EQ(i8 signext %18, i32 5)
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = and i32 %23, 240
  %25 = trunc i32 %24 to i8
  %26 = load i32, i32* @MG_MQTT_CMD_SUBACK, align 4
  %27 = shl i32 %26, 4
  %28 = call i32 @ASSERT_EQ(i8 signext %25, i32 %27)
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = call signext i8 @MG_MQTT_GET_QOS(i8 signext %31)
  %33 = call i32 @ASSERT_EQ(i8 signext %32, i32 1)
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i64
  %38 = trunc i64 %37 to i8
  %39 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %40 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8, i8* %41, align 8
  %43 = sext i8 %42 to i32
  %44 = sub nsw i32 %43, 2
  %45 = call i32 @ASSERT_EQ(i8 signext %38, i32 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @ASSERT_EQ(i8 signext %48, i32 0)
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @ASSERT_EQ(i8 signext %52, i32 42)
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @ASSERT_EQ(i8 signext %56, i32 1)
  %58 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %59 = call i32 @destroy_test_connection(%struct.mg_connection* %58)
  ret i8* null
}

declare dso_local %struct.mg_connection* @create_test_connection(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mg_set_protocol_mqtt(%struct.mg_connection*) #1

declare dso_local i32 @mg_mqtt_suback(%struct.mg_connection*, i32*, i32, i32) #1

declare dso_local i32 @ASSERT_EQ(i8 signext, i32) #1

declare dso_local signext i8 @MG_MQTT_GET_QOS(i8 signext) #1

declare dso_local i32 @destroy_test_connection(%struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
