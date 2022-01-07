; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_response_line_s.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_response_line_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_str = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"HTTP/1.1 %d %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Server: %s\0D\0A\00", align 1
@mg_version_header = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%.*s\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_send_response_line_s(%struct.mg_connection* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mg_str, align 8
  %6 = alloca %struct.mg_connection*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.mg_str* %5 to { i64, i32 }*
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %2, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %3, i32* %10, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %6, align 8
  store i32 %1, i32* %7, align 4
  %11 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @mg_status_message(i32 %13)
  %15 = call i32 (%struct.mg_connection*, i8*, i32, ...) @mg_printf(%struct.mg_connection* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14)
  %16 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %17 = load i32, i32* @mg_version_header, align 4
  %18 = call i32 (%struct.mg_connection*, i8*, i32, ...) @mg_printf(%struct.mg_connection* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %24 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.mg_connection*, i8*, i32, ...) @mg_printf(%struct.mg_connection* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %22, %4
  ret void
}

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i32, ...) #1

declare dso_local i32 @mg_status_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
