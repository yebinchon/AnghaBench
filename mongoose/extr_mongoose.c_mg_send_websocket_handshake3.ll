; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_send_websocket_handshake3.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_send_websocket_handshake3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_send_websocket_handshake3(%struct.mg_connection* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.mg_connection*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @mg_mk_str(i8* %16)
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @mg_mk_str(i8* %18)
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @mg_mk_str(i8* %20)
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @mg_mk_str(i8* %22)
  %24 = load i8*, i8** %13, align 8
  %25 = call i32 @mg_mk_str(i8* %24)
  %26 = load i8*, i8** %14, align 8
  %27 = call i32 @mg_mk_str(i8* %26)
  %28 = call i32 @mg_send_websocket_handshake3v(%struct.mg_connection* %15, i32 %17, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27)
  ret void
}

declare dso_local i32 @mg_send_websocket_handshake3v(%struct.mg_connection*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mg_mk_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
