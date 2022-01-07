; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_send_mqtt_short_command.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_send_mqtt_short_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@MG_MQTT_CMD_PUBREL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i64, i32)* @mg_send_mqtt_short_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_send_mqtt_short_command(%struct.mg_connection* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @MG_MQTT_CMD_PUBREL, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 2, i32 0
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @mg_send_mqtt_header(%struct.mg_connection* %15, i64 %16, i64 %17, i32 2)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @htons(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %22 = call i32 @mg_send(%struct.mg_connection* %21, i32* %7, i32 2)
  ret void
}

declare dso_local i32 @mg_send_mqtt_header(%struct.mg_connection*, i64, i64, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
