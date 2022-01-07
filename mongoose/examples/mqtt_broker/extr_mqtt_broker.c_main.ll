; ModuleID = '/home/carl/AnghaBench/mongoose/examples/mqtt_broker/extr_mqtt_broker.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/mqtt_broker/extr_mqtt_broker.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { %struct.mg_mqtt_broker* }
%struct.mg_mqtt_broker = type { i32 }

@s_listening_address = common dso_local global i8* null, align 8
@ev_handler = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mg_bind(%s) failed\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MQTT broker started on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.mg_mqtt_broker, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32* null)
  %6 = load i8*, i8** @s_listening_address, align 8
  %7 = load i32, i32* @ev_handler, align 4
  %8 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %2, i8* %6, i32 %7)
  store %struct.mg_connection* %8, %struct.mg_connection** %3, align 8
  %9 = icmp eq %struct.mg_connection* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** @s_listening_address, align 8
  %13 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  %15 = call i32 @exit(i32 %14) #3
  unreachable

16:                                               ; preds = %0
  %17 = call i32 @mg_mqtt_broker_init(%struct.mg_mqtt_broker* %4, i32* null)
  %18 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %19 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %18, i32 0, i32 0
  store %struct.mg_mqtt_broker* %4, %struct.mg_mqtt_broker** %19, align 8
  %20 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %21 = call i32 @mg_set_protocol_mqtt(%struct.mg_connection* %20)
  %22 = load i8*, i8** @s_listening_address, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %24, %16
  %25 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 1000)
  br label %24
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mg_mqtt_broker_init(%struct.mg_mqtt_broker*, i32*) #1

declare dso_local i32 @mg_set_protocol_mqtt(%struct.mg_connection*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
