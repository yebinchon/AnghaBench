; ModuleID = '/home/carl/AnghaBench/mongoose/examples/websocket_chat_client/extr_websocket_chat_client.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/websocket_chat_client/extr_websocket_chat_client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"ws://127.0.0.1:8000\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ws_chat\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid address\0A\00", align 1
@s_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mg_mgr, align 4
  %7 = alloca %struct.mg_connection*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i8* [ %14, %11 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %15 ]
  store i8* %17, i8** %8, align 8
  %18 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32* null)
  %19 = load i32, i32* @ev_handler, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call %struct.mg_connection* @mg_connect_ws(%struct.mg_mgr* %6, i32 %19, i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store %struct.mg_connection* %21, %struct.mg_connection** %7, align 8
  %22 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %23 = icmp eq %struct.mg_connection* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %36

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %32, %27
  %29 = load i32, i32* @s_done, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @mg_mgr_poll(%struct.mg_mgr* %6, i32 100)
  br label %28

34:                                               ; preds = %28
  %35 = call i32 @mg_mgr_free(%struct.mg_mgr* %6)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %24
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_connect_ws(%struct.mg_mgr*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
