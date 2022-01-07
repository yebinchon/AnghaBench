; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/extr_data.c_send_temp.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/extr_data.c_send_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.temp_data = type { i64, i32, i32 }

@WEBSOCKET_OP_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"{\22t\22: 0, \22ts\22: %lf, \22sv\22: %lf, \22dt\22: %lf}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.temp_data*)* @send_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_temp(%struct.mg_connection* %0, %struct.temp_data* %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.temp_data*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store %struct.temp_data* %1, %struct.temp_data** %4, align 8
  %5 = load %struct.temp_data*, %struct.temp_data** %4, align 8
  %6 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %23

10:                                               ; preds = %2
  %11 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %12 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %13 = load %struct.temp_data*, %struct.temp_data** %4, align 8
  %14 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.temp_data*, %struct.temp_data** %4, align 8
  %17 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.temp_data*, %struct.temp_data** %4, align 8
  %20 = getelementptr inbounds %struct.temp_data, %struct.temp_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mg_printf_websocket_frame(%struct.mg_connection* %11, i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mg_printf_websocket_frame(%struct.mg_connection*, i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
