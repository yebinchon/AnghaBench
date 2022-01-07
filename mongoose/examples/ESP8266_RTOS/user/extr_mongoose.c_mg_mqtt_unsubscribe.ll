; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_mqtt_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_mqtt_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@MG_MQTT_CMD_UNSUBSCRIBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_mqtt_unsubscribe(%struct.mg_connection* %0, i8** %1, i64 %2, i8 signext %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  store i64 2, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %28, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i8**, i8*** %6, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call signext i8 @strlen(i8* %21)
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 2, %23
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %12, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %17
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %10, align 8
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %33 = load i32, i32* @MG_MQTT_CMD_UNSUBSCRIBE, align 4
  %34 = call i32 @MG_MQTT_QOS(i32 1)
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @mg_send_mqtt_header(%struct.mg_connection* %32, i32 %33, i32 %34, i64 %35)
  %37 = load i8, i8* %8, align 1
  %38 = call signext i8 @htons(i8 signext %37)
  store i8 %38, i8* %9, align 1
  %39 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %40 = call i32 @mg_send(%struct.mg_connection* %39, i8* %9, i8 signext 2)
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %62, %31
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i8**, i8*** %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call signext i8 @strlen(i8* %49)
  store i8 %50, i8* %11, align 1
  %51 = load i8, i8* %11, align 1
  %52 = call signext i8 @htons(i8 signext %51)
  store i8 %52, i8* %9, align 1
  %53 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %54 = call i32 @mg_send(%struct.mg_connection* %53, i8* %9, i8 signext 2)
  %55 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %56 = load i8**, i8*** %6, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %11, align 1
  %61 = call i32 @mg_send(%struct.mg_connection* %55, i8* %59, i8 signext %60)
  br label %62

62:                                               ; preds = %45
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %41

65:                                               ; preds = %41
  ret void
}

declare dso_local signext i8 @strlen(i8*) #1

declare dso_local i32 @mg_send_mqtt_header(%struct.mg_connection*, i32, i32, i64) #1

declare dso_local i32 @MG_MQTT_QOS(i32) #1

declare dso_local signext i8 @htons(i8 signext) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
