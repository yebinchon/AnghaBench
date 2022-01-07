; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_secret_endpoint_cb.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_secret_endpoint_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@MG_EV_HTTP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Content-Type: text/plain\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Secret!\00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @secret_endpoint_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secret_endpoint_cb(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MG_EV_HTTP_REQUEST, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %22

11:                                               ; preds = %3
  %12 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %13 = call i32 @mg_send_response_line(%struct.mg_connection* %12, i32 200, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %15 = call i32 @mg_printf(%struct.mg_connection* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %17 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i8*, i8** %6, align 8
  br label %22

22:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @mg_send_response_line(%struct.mg_connection*, i32, i8*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
