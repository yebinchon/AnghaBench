; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_send_options.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_send_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_serve_http_opts = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Allow: GET, POST, HEAD, CONNECT, OPTIONS\0D\0A\0D\0A\00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.mg_serve_http_opts*)* @mg_http_send_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_http_send_options(%struct.mg_connection* %0, %struct.mg_serve_http_opts* %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.mg_serve_http_opts*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store %struct.mg_serve_http_opts* %1, %struct.mg_serve_http_opts** %4, align 8
  %5 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %6 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %4, align 8
  %7 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mg_send_response_line(%struct.mg_connection* %5, i32 200, i32 %8)
  %10 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %11 = call i32 @mg_printf(%struct.mg_connection* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %13 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %14 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  ret void
}

declare dso_local i32 @mg_send_response_line(%struct.mg_connection*, i32, i32) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
