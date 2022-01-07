; ModuleID = '/home/carl/AnghaBench/mongoose/examples/connected_device_3/extr_server.c_handle_save.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/connected_device_3/extr_server.c_handle_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mg_connection = type { i32 }
%struct.http_message = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"setting1\00", align 1
@s_settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"setting2\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.http_message*)* @handle_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_save(%struct.mg_connection* %0, %struct.http_message* %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.http_message*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store %struct.http_message* %1, %struct.http_message** %4, align 8
  %5 = load %struct.http_message*, %struct.http_message** %4, align 8
  %6 = getelementptr inbounds %struct.http_message, %struct.http_message* %5, i32 0, i32 0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_settings, i32 0, i32 1), align 4
  %8 = call i32 @mg_get_http_var(i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7, i32 4)
  %9 = load %struct.http_message*, %struct.http_message** %4, align 8
  %10 = getelementptr inbounds %struct.http_message, %struct.http_message* %9, i32 0, i32 0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_settings, i32 0, i32 0), align 4
  %12 = call i32 @mg_get_http_var(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 4)
  %13 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %14 = call i32 @mg_mk_str(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @mg_mk_str(i8* null)
  %16 = call i32 @mg_http_send_redirect(%struct.mg_connection* %13, i32 302, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @mg_get_http_var(i32*, i8*, i32, i32) #1

declare dso_local i32 @mg_http_send_redirect(%struct.mg_connection*, i32, i32, i32) #1

declare dso_local i32 @mg_mk_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
