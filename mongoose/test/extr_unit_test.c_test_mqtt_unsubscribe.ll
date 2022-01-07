; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8 }
%struct.mg_mqtt_proto_data = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"/stuff\00", align 1
@__const.test_mqtt_unsubscribe.topics = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)], align 8
@MG_MQTT_CMD_UNSUBSCRIBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mqtt_unsubscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mqtt_unsubscribe() #0 {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca [1 x i8*], align 8
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = call %struct.mg_connection* (...) @create_test_connection()
  store %struct.mg_connection* %5, %struct.mg_connection** %1, align 8
  %6 = bitcast [1 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast ([1 x i8*]* @__const.test_mqtt_unsubscribe.topics to i8*), i64 8, i1 false)
  %7 = call double (...) @mg_time()
  store double %7, double* %3, align 8
  %8 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %9 = call i32 @mg_set_protocol_mqtt(%struct.mg_connection* %8)
  %10 = call i32 @msleep(i32 2)
  %11 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %2, i64 0, i64 0
  %13 = call i32 @mg_mqtt_unsubscribe(%struct.mg_connection* %11, i8** %12, i32 1, i32 42)
  %14 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %15 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %4, align 8
  %18 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %19 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 8
  %22 = call i32 @ASSERT_EQ(i8 signext %21, i32 12)
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = and i32 %26, 240
  %28 = trunc i32 %27 to i8
  %29 = load i32, i32* @MG_MQTT_CMD_UNSUBSCRIBE, align 4
  %30 = shl i32 %29, 4
  %31 = call i32 @ASSERT_EQ(i8 signext %28, i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i64
  %36 = trunc i64 %35 to i8
  %37 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %38 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i8, i8* %39, align 8
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %41, 2
  %43 = call i32 @ASSERT_EQ(i8 signext %36, i32 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @ASSERT_EQ(i8 signext %46, i32 0)
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @ASSERT_EQ(i8 signext %50, i32 42)
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @ASSERT_EQ(i8 signext %54, i32 0)
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @ASSERT_EQ(i8 signext %58, i32 6)
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 6
  %62 = call i32 @ASSERT_STREQ_NZ(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %64 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.mg_mqtt_proto_data*
  %67 = getelementptr inbounds %struct.mg_mqtt_proto_data, %struct.mg_mqtt_proto_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load double, double* %3, align 8
  %70 = call i32 @ASSERT_GT(i32 %68, double %69)
  %71 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %72 = call i32 @destroy_test_connection(%struct.mg_connection* %71)
  ret i8* null
}

declare dso_local %struct.mg_connection* @create_test_connection(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local double @mg_time(...) #1

declare dso_local i32 @mg_set_protocol_mqtt(%struct.mg_connection*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mg_mqtt_unsubscribe(%struct.mg_connection*, i8**, i32, i32) #1

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
