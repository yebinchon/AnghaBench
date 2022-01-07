; ModuleID = '/home/carl/AnghaBench/mongoose/examples/netcat/extr_nc.c_on_stdin_read.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/netcat/extr_nc.c_on_stdin_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@s_is_websocket = common dso_local global i64 0, align 8
@WEBSOCKET_OP_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @on_stdin_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_stdin_read(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %17 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %22 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %28 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %29 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %15
  br label %46

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  %36 = load i64, i64* @s_is_websocket, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %40 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %41 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %39, i32 %40, i8* %8, i32 1)
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %44 = call i32 @mg_send(%struct.mg_connection* %43, i8* %8, i32 1)
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %32
  ret void
}

declare dso_local i32 @mg_send_websocket_frame(%struct.mg_connection*, i32, i8*, i32) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
