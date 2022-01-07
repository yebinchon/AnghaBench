; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_mqtt_subscribe.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_mqtt_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_mqtt_topic_expression = type { i32*, i32 }

@MG_MQTT_CMD_SUBSCRIBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_mqtt_subscribe(%struct.mg_connection* %0, %struct.mg_mqtt_topic_expression* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca %struct.mg_mqtt_topic_expression*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store %struct.mg_mqtt_topic_expression* %1, %struct.mg_mqtt_topic_expression** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 2, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %29, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.mg_mqtt_topic_expression*, %struct.mg_mqtt_topic_expression** %6, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds %struct.mg_mqtt_topic_expression, %struct.mg_mqtt_topic_expression* %18, i64 %19
  %21 = getelementptr inbounds %struct.mg_mqtt_topic_expression, %struct.mg_mqtt_topic_expression* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @strlen(i32* %22)
  %24 = add nsw i32 2, %23
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %12, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %17
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %10, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %34 = load i32, i32* @MG_MQTT_CMD_SUBSCRIBE, align 4
  %35 = call i32 @MG_MQTT_QOS(i32 1)
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @mg_send_mqtt_header(%struct.mg_connection* %33, i32 %34, i32 %35, i64 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @htons(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %41 = bitcast i32* %9 to i8*
  %42 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %40, i8* %41, i32 2)
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %72, %32
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load %struct.mg_mqtt_topic_expression*, %struct.mg_mqtt_topic_expression** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.mg_mqtt_topic_expression, %struct.mg_mqtt_topic_expression* %48, i64 %49
  %51 = getelementptr inbounds %struct.mg_mqtt_topic_expression, %struct.mg_mqtt_topic_expression* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @strlen(i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @htons(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %57 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %56, i32* %9, i32 2)
  %58 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %59 = load %struct.mg_mqtt_topic_expression*, %struct.mg_mqtt_topic_expression** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.mg_mqtt_topic_expression, %struct.mg_mqtt_topic_expression* %59, i64 %60
  %62 = getelementptr inbounds %struct.mg_mqtt_topic_expression, %struct.mg_mqtt_topic_expression* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %58, i32* %63, i32 %64)
  %66 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %67 = load %struct.mg_mqtt_topic_expression*, %struct.mg_mqtt_topic_expression** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.mg_mqtt_topic_expression, %struct.mg_mqtt_topic_expression* %67, i64 %68
  %70 = getelementptr inbounds %struct.mg_mqtt_topic_expression, %struct.mg_mqtt_topic_expression* %69, i32 0, i32 1
  %71 = call i32 (%struct.mg_connection*, ...) @mg_send(%struct.mg_connection* %66, i32* %70, i32 1)
  br label %72

72:                                               ; preds = %47
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %43

75:                                               ; preds = %43
  ret void
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @mg_send_mqtt_header(%struct.mg_connection*, i32, i32, i64) #1

declare dso_local i32 @MG_MQTT_QOS(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
