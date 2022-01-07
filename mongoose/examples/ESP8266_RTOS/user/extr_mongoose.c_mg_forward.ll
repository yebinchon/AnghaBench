; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_forward.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_forward(%struct.mg_connection* %0, %struct.mg_connection* %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store %struct.mg_connection* %1, %struct.mg_connection** %4, align 8
  %5 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %6 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %7 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %11 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mg_send(%struct.mg_connection* %5, i32 %9, i32 %13)
  %15 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %15, i32 0, i32 0
  %17 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mbuf_remove(%struct.TYPE_2__* %16, i32 %20)
  ret void
}

declare dso_local i32 @mg_send(%struct.mg_connection*, i32, i32) #1

declare dso_local i32 @mbuf_remove(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
