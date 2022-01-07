; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_null_if_poll.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_null_if_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_iface = type { %struct.mg_mgr* }
%struct.mg_mgr = type { %struct.mg_connection* }
%struct.mg_connection = type { %struct.mg_connection* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_iface*, i32)* @mg_null_if_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_null_if_poll(%struct.mg_iface* %0, i32 %1) #0 {
  %3 = alloca %struct.mg_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mg_mgr*, align 8
  %6 = alloca %struct.mg_connection*, align 8
  %7 = alloca %struct.mg_connection*, align 8
  %8 = alloca double, align 8
  store %struct.mg_iface* %0, %struct.mg_iface** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mg_iface*, %struct.mg_iface** %3, align 8
  %10 = getelementptr inbounds %struct.mg_iface, %struct.mg_iface* %9, i32 0, i32 0
  %11 = load %struct.mg_mgr*, %struct.mg_mgr** %10, align 8
  store %struct.mg_mgr* %11, %struct.mg_mgr** %5, align 8
  %12 = call double (...) @mg_time()
  store double %12, double* %8, align 8
  %13 = load %struct.mg_mgr*, %struct.mg_mgr** %5, align 8
  %14 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %13, i32 0, i32 0
  %15 = load %struct.mg_connection*, %struct.mg_connection** %14, align 8
  store %struct.mg_connection* %15, %struct.mg_connection** %6, align 8
  br label %16

16:                                               ; preds = %26, %2
  %17 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %18 = icmp ne %struct.mg_connection* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %21 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %20, i32 0, i32 0
  %22 = load %struct.mg_connection*, %struct.mg_connection** %21, align 8
  store %struct.mg_connection* %22, %struct.mg_connection** %7, align 8
  %23 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %24 = load double, double* %8, align 8
  %25 = call i32 @mg_if_poll(%struct.mg_connection* %23, double %24)
  br label %26

26:                                               ; preds = %19
  %27 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  store %struct.mg_connection* %27, %struct.mg_connection** %6, align 8
  br label %16

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = load double, double* %8, align 8
  %31 = fptosi double %30 to i32
  ret i32 %31
}

declare dso_local double @mg_time(...) #1

declare dso_local i32 @mg_if_poll(%struct.mg_connection*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
