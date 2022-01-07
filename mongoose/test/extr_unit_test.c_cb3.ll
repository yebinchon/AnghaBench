; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb3.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.websocket_message = type { i32, i32 }

@MG_EV_WEBSOCKET_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"server data '%.*s'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@WEBSOCKET_OP_TEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @cb3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb3(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.websocket_message*, align 8
  %8 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.websocket_message*
  store %struct.websocket_message* %10, %struct.websocket_message** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MG_EV_WEBSOCKET_FRAME, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %44

15:                                               ; preds = %3
  %16 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %17 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %20 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @DBG(i8* %23)
  %25 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %26 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %36

29:                                               ; preds = %15
  %30 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %31 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcmp(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %29, %15
  %37 = phi i1 [ false, %15 ], [ %35, %29 ]
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  store i8* %39, i8** %8, align 8
  %40 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %41 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @mg_printf_websocket_frame(%struct.mg_connection* %40, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %36, %14
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @mg_printf_websocket_frame(%struct.mg_connection*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
