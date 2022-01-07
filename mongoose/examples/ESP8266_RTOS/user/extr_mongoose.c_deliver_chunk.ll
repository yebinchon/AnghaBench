; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_deliver_chunk.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_deliver_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.http_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MG_F_DELETE_CHUNK = common dso_local global i32 0, align 4
@MG_EV_HTTP_CHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.http_message*, i32)* @deliver_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deliver_chunk(%struct.mg_connection* %0, %struct.http_message* %1, i32 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca %struct.http_message*, align 8
  %6 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store %struct.http_message* %1, %struct.http_message** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %8 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %10, %11
  %13 = load %struct.http_message*, %struct.http_message** %5, align 8
  %14 = getelementptr inbounds %struct.http_message, %struct.http_message* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @MG_F_DELETE_CHUNK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %19 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %23 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %24 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %27 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MG_EV_HTTP_CHUNK, align 4
  %30 = load %struct.http_message*, %struct.http_message** %5, align 8
  %31 = call i32 @mg_call(%struct.mg_connection* %22, i32 %25, i32 %28, i32 %29, %struct.http_message* %30)
  %32 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %33 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MG_F_DELETE_CHUNK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %41 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @mg_call(%struct.mg_connection*, i32, i32, i32, %struct.http_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
