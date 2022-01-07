; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_subscribe.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mqtt_topic_expression = type { i8*, i32 }
%struct.mg_connection = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8 }
%struct.mg_mqtt_proto_data = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"/stuff\00", align 1
@__const.test_mqtt_subscribe.topic_expressions = private unnamed_addr constant [1 x %struct.mg_mqtt_topic_expression] [%struct.mg_mqtt_topic_expression { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1 }], align 16
@MG_MQTT_CMD_SUBSCRIBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mqtt_subscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mqtt_subscribe() #0 {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.mg_mqtt_topic_expression], align 16
  %6 = call %struct.mg_connection* (...) @create_test_connection()
  store %struct.mg_connection* %6, %struct.mg_connection** %1, align 8
  %7 = call double (...) @mg_time()
  store double %7, double* %2, align 8
  store i32 1, i32* %3, align 4
  %8 = bitcast [1 x %struct.mg_mqtt_topic_expression]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([1 x %struct.mg_mqtt_topic_expression]* @__const.test_mqtt_subscribe.topic_expressions to i8*), i64 16, i1 false)
  %9 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %10 = call i32 @mg_set_protocol_mqtt(%struct.mg_connection* %9)
  %11 = call i32 @msleep(i32 2)
  %12 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %13 = getelementptr inbounds [1 x %struct.mg_mqtt_topic_expression], [1 x %struct.mg_mqtt_topic_expression]* %5, i64 0, i64 0
  %14 = call i32 @mg_mqtt_subscribe(%struct.mg_connection* %12, %struct.mg_mqtt_topic_expression* %13, i32 1, i32 42)
  %15 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %4, align 8
  %19 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %20 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 8
  %23 = call i32 @ASSERT_EQ(i8 signext %22, i32 13)
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = and i32 %27, 240
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* @MG_MQTT_CMD_SUBSCRIBE, align 4
  %31 = shl i32 %30, 4
  %32 = call i32 @ASSERT_EQ(i8 signext %29, i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i64
  %37 = trunc i64 %36 to i8
  %38 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %39 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 8
  %42 = sext i8 %41 to i32
  %43 = sub nsw i32 %42, 2
  %44 = call i32 @ASSERT_EQ(i8 signext %37, i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @ASSERT_EQ(i8 signext %47, i32 0)
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @ASSERT_EQ(i8 signext %51, i32 42)
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @ASSERT_EQ(i8 signext %55, i32 0)
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 5
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @ASSERT_EQ(i8 signext %59, i32 6)
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 6
  %63 = call i32 @ASSERT_STREQ_NZ(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 12
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @ASSERT_EQ(i8 signext %66, i32 1)
  %68 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %69 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.mg_mqtt_proto_data*
  %72 = getelementptr inbounds %struct.mg_mqtt_proto_data, %struct.mg_mqtt_proto_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load double, double* %2, align 8
  %75 = call i32 @ASSERT_GT(i32 %73, double %74)
  %76 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %77 = call i32 @destroy_test_connection(%struct.mg_connection* %76)
  ret i8* null
}

declare dso_local %struct.mg_connection* @create_test_connection(...) #1

declare dso_local double @mg_time(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mg_set_protocol_mqtt(%struct.mg_connection*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mg_mqtt_subscribe(%struct.mg_connection*, %struct.mg_mqtt_topic_expression*, i32, i32) #1

declare dso_local i32 @ASSERT_EQ(i8 signext, i32) #1

declare dso_local i32 @ASSERT_STREQ_NZ(i8*, i8*) #1

declare dso_local i32 @ASSERT_GT(i32, double) #1

declare dso_local i32 @destroy_test_connection(%struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
