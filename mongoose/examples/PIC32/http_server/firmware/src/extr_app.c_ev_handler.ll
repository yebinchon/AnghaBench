; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/extr_app.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/extr_app.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32 }
%struct.http_message = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@MG_SOCK_STRINGIFY_IP = common dso_local global i32 0, align 4
@MG_SOCK_STRINGIFY_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%p: Connection from %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%p: %.*s %.*s\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Content-Type: text/html\0D\0AConnection: close\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\0D\0A<h1>Hello, %s!</h1>\0D\0AYou asked for %.*s\0D\0A\00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"%p: Connection closed\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca %struct.http_message*, align 8
  %9 = alloca [32 x i8], align 16
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %74 [
    i32 130, label %11
    i32 128, label %22
    i32 129, label %71
  ]

11:                                               ; preds = %3
  %12 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %13 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %12, i32 0, i32 1
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %15 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %16 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mg_sock_addr_to_str(i32* %13, i8* %14, i32 32, i32 %17)
  %19 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %21 = call i32 (i8*, %struct.mg_connection*, ...) @SYS_PRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.mg_connection* %19, i8* %20)
  br label %74

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.http_message*
  store %struct.http_message* %24, %struct.http_message** %8, align 8
  %25 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %26 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %25, i32 0, i32 1
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %28 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %29 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mg_sock_addr_to_str(i32* %26, i8* %27, i32 32, i32 %30)
  %32 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %33 = load %struct.http_message*, %struct.http_message** %8, align 8
  %34 = getelementptr inbounds %struct.http_message, %struct.http_message* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.http_message*, %struct.http_message** %8, align 8
  %39 = getelementptr inbounds %struct.http_message, %struct.http_message* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.http_message*, %struct.http_message** %8, align 8
  %43 = getelementptr inbounds %struct.http_message, %struct.http_message* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.http_message*, %struct.http_message** %8, align 8
  %48 = getelementptr inbounds %struct.http_message, %struct.http_message* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, %struct.mg_connection*, ...) @SYS_PRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.mg_connection* %32, i32 %37, i32 %41, i32 %46, i32 %50)
  %52 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %53 = call i32 @mg_send_response_line(%struct.mg_connection* %52, i32 200, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %56 = load %struct.http_message*, %struct.http_message** %8, align 8
  %57 = getelementptr inbounds %struct.http_message, %struct.http_message* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.http_message*, %struct.http_message** %8, align 8
  %62 = getelementptr inbounds %struct.http_message, %struct.http_message* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mg_printf(%struct.mg_connection* %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %60, i32 %64)
  %66 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %67 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %68 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %74

71:                                               ; preds = %3
  %72 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %73 = call i32 (i8*, %struct.mg_connection*, ...) @SYS_PRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %struct.mg_connection* %72)
  br label %74

74:                                               ; preds = %3, %71, %22, %11
  ret void
}

declare dso_local i32 @mg_sock_addr_to_str(i32*, i8*, i32, i32) #1

declare dso_local i32 @SYS_PRINT(i8*, %struct.mg_connection*, ...) #1

declare dso_local i32 @mg_send_response_line(%struct.mg_connection*, i32, i8*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
