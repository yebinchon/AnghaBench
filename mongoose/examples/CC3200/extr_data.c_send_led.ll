; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/extr_data.c_send_led.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/extr_data.c_send_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@WEBSOCKET_OP_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"{\22t\22: 1, \22ts\22: %lf, \22v\22: %d}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, double, i8)* @send_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_led(%struct.mg_connection* %0, double %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca double, align 8
  %6 = alloca i8, align 1
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store double %1, double* %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load double, double* %5, align 8
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %16

10:                                               ; preds = %3
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %13 = load double, double* %5, align 8
  %14 = load i8, i8* %6, align 1
  %15 = call i32 @mg_printf_websocket_frame(%struct.mg_connection* %11, i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), double %13, i8 zeroext %14)
  br label %16

16:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mg_printf_websocket_frame(%struct.mg_connection*, i32, i8*, double, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
