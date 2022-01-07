; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_mqtt_publish.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_mqtt_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@MG_MQTT_CMD_PUBLISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_mqtt_publish(%struct.mg_connection* %0, i8* %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.mg_connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = add nsw i32 2, %18
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %12, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %15, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @MG_MQTT_GET_QOS(i32 %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i64, i64* %15, align 8
  %28 = add i64 %27, 2
  store i64 %28, i64* %15, align 8
  br label %29

29:                                               ; preds = %26, %6
  %30 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %31 = load i32, i32* @MG_MQTT_CMD_PUBLISH, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @mg_send_mqtt_header(%struct.mg_connection* %30, i32 %31, i32 %32, i64 %33)
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @htons(i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %38 = bitcast i32* %13 to i8*
  %39 = call i32 @mg_send(%struct.mg_connection* %37, i8* %38, i64 2)
  %40 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = call i32 @mg_send(%struct.mg_connection* %40, i8* %41, i64 %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @MG_MQTT_GET_QOS(i32 %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %29
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @htons(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %52 = bitcast i32* %13 to i8*
  %53 = call i32 @mg_send(%struct.mg_connection* %51, i8* %52, i64 2)
  br label %54

54:                                               ; preds = %48, %29
  %55 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @mg_send(%struct.mg_connection* %55, i8* %56, i64 %57)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @MG_MQTT_GET_QOS(i32) #1

declare dso_local i32 @mg_send_mqtt_header(%struct.mg_connection*, i32, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
