; ModuleID = '/home/carl/AnghaBench/mongoose/examples/publish_subscribe/extr_publish_subscribe.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/publish_subscribe/extr_publish_subscribe.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { %struct.mg_connection*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Usage: %s <port> <client|server>\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@client_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot connect to port %s\0A\00", align 1
@MG_F_USER_2 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@stdin_thread = common dso_local global i32 0, align 4
@MG_F_USER_1 = common dso_local global i32 0, align 4
@server_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Starting pubsub server on port %s\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mg_mgr, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.mg_connection*, align 8
  %9 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = call i32 @exit(i32 %18) #3
  unreachable

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %20
  %27 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32* null)
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @client_handler, align 4
  %32 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %6, i8* %30, i32 %31)
  store %struct.mg_connection* %32, %struct.mg_connection** %9, align 8
  %33 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  %34 = icmp eq %struct.mg_connection* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = call i32 @exit(i32 %41) #3
  unreachable

43:                                               ; preds = %26
  %44 = load i32, i32* @MG_F_USER_2, align 4
  %45 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  %46 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %50 = load i32, i32* @SOCK_STREAM, align 4
  %51 = call i32 @mg_socketpair(i32* %49, i32 %50)
  %52 = load i32, i32* @stdin_thread, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %54 = call i32 @mg_start_thread(i32 %52, i32* %53)
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @client_handler, align 4
  %58 = call %struct.mg_connection* @mg_add_sock(%struct.mg_mgr* %6, i32 %56, i32 %57)
  store %struct.mg_connection* %58, %struct.mg_connection** %8, align 8
  %59 = load i32, i32* @MG_F_USER_1, align 4
  %60 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %61 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  %65 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %66 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %65, i32 0, i32 0
  store %struct.mg_connection* %64, %struct.mg_connection** %66, align 8
  br label %78

67:                                               ; preds = %20
  %68 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32* null)
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @server_handler, align 4
  %73 = call i32 @mg_bind(%struct.mg_mgr* %6, i8* %71, i32 %72)
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %67, %43
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %80, %79
  %81 = call i32 @mg_mgr_poll(%struct.mg_mgr* %6, i32 1000)
  br label %80
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_socketpair(i32*, i32) #1

declare dso_local i32 @mg_start_thread(i32, i32*) #1

declare dso_local %struct.mg_connection* @mg_add_sock(%struct.mg_mgr*, i32, i32) #1

declare dso_local i32 @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
