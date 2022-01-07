; ModuleID = '/home/carl/AnghaBench/mongoose/examples/reverse_proxy/extr_reverse_proxy.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/reverse_proxy/extr_reverse_proxy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8* }
%struct.mg_mgr = type { i8* }
%struct.mg_connection = type { i32 }

@s_frontend_port = common dso_local global i8* null, align 8
@frontend_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"frontend\00", align 1
@s_frontend_server_opts = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"/api=http://localhost:8001,/=frontend/hello.html\00", align 1
@s_backend_port = common dso_local global i8* null, align 8
@backend_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"backend\00", align 1
@s_backend_server_opts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Starting web server on port %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mg_mgr, align 8
  %7 = alloca %struct.mg_connection*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32* null)
  %10 = load i8*, i8** @s_frontend_port, align 8
  %11 = load i32, i32* @frontend_handler, align 4
  %12 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %6, i8* %10, i32 %11)
  store %struct.mg_connection* %12, %struct.mg_connection** %7, align 8
  %13 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %14 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %13)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_frontend_server_opts, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_frontend_server_opts, i32 0, i32 1), align 8
  %15 = load i8*, i8** @s_backend_port, align 8
  %16 = load i32, i32* @backend_handler, align 4
  %17 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %6, i8* %15, i32 %16)
  store %struct.mg_connection* %17, %struct.mg_connection** %7, align 8
  %18 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %19 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %18)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_backend_server_opts, i32 0, i32 0), align 8
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %57, %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %6, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  br label %56

40:                                               ; preds = %24
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s_frontend_server_opts, i32 0, i32 0), align 8
  br label %55

55:                                               ; preds = %48, %40
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %20

60:                                               ; preds = %20
  %61 = load i8*, i8** @s_frontend_port, align 8
  %62 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %63, %60
  %64 = call i32 @mg_mgr_poll(%struct.mg_mgr* %6, i32 1000)
  br label %63
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
