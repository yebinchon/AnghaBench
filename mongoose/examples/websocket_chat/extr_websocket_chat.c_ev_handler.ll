; ModuleID = '/home/carl/AnghaBench/mongoose/examples/websocket_chat/extr_websocket_chat.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/websocket_chat/extr_websocket_chat.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_str = type { i8*, i32 }
%struct.websocket_message = type { i32, i64 }
%struct.http_message = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"++ joined\00", align 1
@s_http_server_opts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"-- left\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mg_str, align 8
  %8 = alloca %struct.websocket_message*, align 8
  %9 = alloca %struct.mg_str, align 8
  %10 = alloca %struct.mg_str, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %70 [
    i32 128, label %12
    i32 129, label %26
    i32 130, label %45
    i32 131, label %51
  ]

12:                                               ; preds = %3
  %13 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %14 = call { i8*, i32 } @mg_mk_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = bitcast %struct.mg_str* %7 to { i8*, i32 }*
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %15, i32 0, i32 0
  %17 = extractvalue { i8*, i32 } %14, 0
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %15, i32 0, i32 1
  %19 = extractvalue { i8*, i32 } %14, 1
  store i32 %19, i32* %18, align 8
  %20 = bitcast %struct.mg_str* %7 to { i8*, i32 }*
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %20, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @broadcast(%struct.mg_connection* %13, i8* %22, i32 %24)
  br label %70

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.websocket_message*
  store %struct.websocket_message* %28, %struct.websocket_message** %8, align 8
  %29 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %9, i32 0, i32 0
  %30 = load %struct.websocket_message*, %struct.websocket_message** %8, align 8
  %31 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %29, align 8
  %34 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %9, i32 0, i32 1
  %35 = load %struct.websocket_message*, %struct.websocket_message** %8, align 8
  %36 = getelementptr inbounds %struct.websocket_message, %struct.websocket_message* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %34, align 8
  %38 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %39 = bitcast %struct.mg_str* %9 to { i8*, i32 }*
  %40 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %39, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @broadcast(%struct.mg_connection* %38, i8* %41, i32 %43)
  br label %70

45:                                               ; preds = %3
  %46 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = bitcast i8* %47 to %struct.http_message*
  %49 = load i32, i32* @s_http_server_opts, align 4
  %50 = call i32 @mg_serve_http(%struct.mg_connection* %46, %struct.http_message* %48, i32 %49)
  br label %70

51:                                               ; preds = %3
  %52 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %53 = call i32 @is_websocket(%struct.mg_connection* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %57 = call { i8*, i32 } @mg_mk_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %58 = bitcast %struct.mg_str* %10 to { i8*, i32 }*
  %59 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %58, i32 0, i32 0
  %60 = extractvalue { i8*, i32 } %57, 0
  store i8* %60, i8** %59, align 8
  %61 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %58, i32 0, i32 1
  %62 = extractvalue { i8*, i32 } %57, 1
  store i32 %62, i32* %61, align 8
  %63 = bitcast %struct.mg_str* %10 to { i8*, i32 }*
  %64 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %63, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @broadcast(%struct.mg_connection* %56, i8* %65, i32 %67)
  br label %69

69:                                               ; preds = %55, %51
  br label %70

70:                                               ; preds = %3, %69, %45, %26, %12
  ret void
}

declare dso_local i32 @broadcast(%struct.mg_connection*, i8*, i32) #1

declare dso_local { i8*, i32 } @mg_mk_str(i8*) #1

declare dso_local i32 @mg_serve_http(%struct.mg_connection*, %struct.http_message*, i32) #1

declare dso_local i32 @is_websocket(%struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
