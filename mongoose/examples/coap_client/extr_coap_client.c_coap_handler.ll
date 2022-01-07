; ModuleID = '/home/carl/AnghaBench/mongoose/examples/coap_client/extr_coap_client.c_coap_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/coap_client/extr_coap_client.c_coap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_coap_message = type { i32, i32 }

@MG_COAP_MSG_CON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Sending CON...\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Sent CON with msg_id = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Error: %d\0A\00", align 1
@s_time_to_exit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"ACK/RST for message with msg_id = %d received\0A\00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Server closed connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @coap_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coap_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mg_coap_message, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mg_coap_message*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %47 [
    i32 128, label %11
    i32 130, label %29
    i32 129, label %29
    i32 131, label %41
  ]

11:                                               ; preds = %3
  %12 = call i32 @memset(%struct.mg_coap_message* %7, i32 0, i32 8)
  %13 = getelementptr inbounds %struct.mg_coap_message, %struct.mg_coap_message* %7, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* @MG_COAP_MSG_CON, align 4
  %15 = getelementptr inbounds %struct.mg_coap_message, %struct.mg_coap_message* %7, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %18 = call i32 @mg_coap_send_message(%struct.mg_connection* %17, %struct.mg_coap_message* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.mg_coap_message, %struct.mg_coap_message* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %28

25:                                               ; preds = %11
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  store i32 1, i32* @s_time_to_exit, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %47

29:                                               ; preds = %3, %3
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %struct.mg_coap_message*
  store %struct.mg_coap_message* %31, %struct.mg_coap_message** %9, align 8
  %32 = load %struct.mg_coap_message*, %struct.mg_coap_message** %9, align 8
  %33 = getelementptr inbounds %struct.mg_coap_message, %struct.mg_coap_message* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %37 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %38 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  store i32 1, i32* @s_time_to_exit, align 4
  br label %47

41:                                               ; preds = %3
  %42 = load i32, i32* @s_time_to_exit, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* @s_time_to_exit, align 4
  br label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %3, %46, %29, %28
  ret void
}

declare dso_local i32 @memset(%struct.mg_coap_message*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mg_coap_send_message(%struct.mg_connection*, %struct.mg_coap_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
