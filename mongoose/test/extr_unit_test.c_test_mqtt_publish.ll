; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_publish.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_mqtt_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8 }
%struct.mg_mqtt_proto_data = type { i32 }

@__const.test_mqtt_publish.data = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@MG_MQTT_RETAIN = common dso_local global i8 0, align 1
@MG_MQTT_CMD_PUBLISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_mqtt_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_mqtt_publish() #0 {
  %1 = alloca %struct.mg_connection*, align 8
  %2 = alloca double, align 8
  %3 = alloca [6 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = call %struct.mg_connection* (...) @create_test_connection()
  store %struct.mg_connection* %5, %struct.mg_connection** %1, align 8
  %6 = call double (...) @mg_time()
  store double %6, double* %2, align 8
  %7 = bitcast [6 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_mqtt_publish.data, i32 0, i32 0), i64 6, i1 false)
  %8 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %9 = call i32 @mg_set_protocol_mqtt(%struct.mg_connection* %8)
  %10 = call i32 @msleep(i32 2)
  %11 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %12 = call signext i8 @MG_MQTT_QOS(i32 1)
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @MG_MQTT_RETAIN, align 1
  %15 = sext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %19 = call i32 @mg_mqtt_publish(%struct.mg_connection* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 42, i8 signext %17, i8* %18, i32 6)
  %20 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %21 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %4, align 8
  %24 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %25 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 8
  %28 = call i32 @ASSERT_EQ(i8 signext %27, i32 17)
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @MG_MQTT_RETAIN, align 1
  %34 = sext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = trunc i32 %35 to i8
  %37 = call i32 @ASSERT(i8 signext %36)
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 240
  %43 = trunc i32 %42 to i8
  %44 = load i32, i32* @MG_MQTT_CMD_PUBLISH, align 4
  %45 = shl i32 %44, 4
  %46 = call i32 @ASSERT_EQ(i8 signext %43, i32 %45)
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = call signext i8 @MG_MQTT_GET_QOS(i8 signext %49)
  %51 = call i32 @ASSERT_EQ(i8 signext %50, i32 1)
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i64
  %56 = trunc i64 %55 to i8
  %57 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %58 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i8, i8* %59, align 8
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 2
  %63 = call i32 @ASSERT_EQ(i8 signext %56, i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @ASSERT_EQ(i8 signext %66, i32 0)
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @ASSERT_EQ(i8 signext %70, i32 5)
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  %74 = call i32 @ASSERT_STREQ_NZ(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 9
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @ASSERT_EQ(i8 signext %77, i32 0)
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 10
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @ASSERT_EQ(i8 signext %81, i32 42)
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 11
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %86 = call signext i8 @strncmp(i8* %84, i8* %85, i32 6)
  %87 = call i32 @ASSERT_EQ(i8 signext %86, i32 0)
  %88 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %89 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.mg_mqtt_proto_data*
  %92 = getelementptr inbounds %struct.mg_mqtt_proto_data, %struct.mg_mqtt_proto_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load double, double* %2, align 8
  %95 = call i32 @ASSERT_GT(i32 %93, double %94)
  %96 = load %struct.mg_connection*, %struct.mg_connection** %1, align 8
  %97 = call i32 @destroy_test_connection(%struct.mg_connection* %96)
  ret i8* null
}

declare dso_local %struct.mg_connection* @create_test_connection(...) #1

declare dso_local double @mg_time(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mg_set_protocol_mqtt(%struct.mg_connection*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mg_mqtt_publish(%struct.mg_connection*, i8*, i32, i8 signext, i8*, i32) #1

declare dso_local signext i8 @MG_MQTT_QOS(i32) #1

declare dso_local i32 @ASSERT_EQ(i8 signext, i32) #1

declare dso_local i32 @ASSERT(i8 signext) #1

declare dso_local signext i8 @MG_MQTT_GET_QOS(i8 signext) #1

declare dso_local i32 @ASSERT_STREQ_NZ(i8*, i8*) #1

declare dso_local signext i8 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ASSERT_GT(i32, double) #1

declare dso_local i32 @destroy_test_connection(%struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
