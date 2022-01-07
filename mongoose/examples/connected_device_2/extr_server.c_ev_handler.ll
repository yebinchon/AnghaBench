; ModuleID = '/home/carl/AnghaBench/mongoose/examples/connected_device_2/extr_server.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/connected_device_2/extr_server.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/save\00", align 1
@s_http_server_opts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.http_message*
  store %struct.http_message* %9, %struct.http_message** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %30 [
    i32 129, label %11
    i32 128, label %26
  ]

11:                                               ; preds = %3
  %12 = load %struct.http_message*, %struct.http_message** %7, align 8
  %13 = getelementptr inbounds %struct.http_message, %struct.http_message* %12, i32 0, i32 0
  %14 = call i32 @mg_vcmp(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %18 = load %struct.http_message*, %struct.http_message** %7, align 8
  %19 = call i32 @handle_save(%struct.mg_connection* %17, %struct.http_message* %18)
  br label %25

20:                                               ; preds = %11
  %21 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %22 = load %struct.http_message*, %struct.http_message** %7, align 8
  %23 = load i32, i32* @s_http_server_opts, align 4
  %24 = call i32 @mg_serve_http(%struct.mg_connection* %21, %struct.http_message* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %16
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @handle_ssi_call(%struct.mg_connection* %27, i8* %28)
  br label %31

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %30, %26, %25
  ret void
}

declare dso_local i32 @mg_vcmp(i32*, i8*) #1

declare dso_local i32 @handle_save(%struct.mg_connection*, %struct.http_message*) #1

declare dso_local i32 @mg_serve_http(%struct.mg_connection*, %struct.http_message*, i32) #1

declare dso_local i32 @handle_ssi_call(%struct.mg_connection*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
