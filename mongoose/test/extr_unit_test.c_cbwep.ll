; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cbwep.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cbwep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64 }
%struct.websocket_message = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"I don't like you\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@WEBSOCKET_OP_TEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"%s|%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @cbwep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbwep(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
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
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %45 [
    i32 128, label %16
    i32 129, label %28
    i32 130, label %31
  ]

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @strcat(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 48
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %26 = call i32 @mg_http_send_error(%struct.mg_connection* %25, i32 403, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %16
  br label %45

28:                                               ; preds = %3
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strcat(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %45

31:                                               ; preds = %3
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @strcat(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %35 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %38 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.websocket_message*, %struct.websocket_message** %7, align 8
  %42 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mg_printf_websocket_frame(%struct.mg_connection* %34, i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %36, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %3, %31, %28, %27
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @mg_http_send_error(%struct.mg_connection*, i32, i8*) #1

declare dso_local i32 @mg_printf_websocket_frame(%struct.mg_connection*, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
