; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_server.c_web_client_initialize_connection.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_server.c_web_client_initialize_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i8*, i8*, i8*, i32*, i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%llu: failed to enable TCP_NODELAY on socket fd %d.\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%llu: failed to enable SO_KEEPALIVE on socket fd %d.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"CONNECTED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @web_client_initialize_connection(%struct.web_client* %0) #0 {
  %2 = alloca %struct.web_client*, align 8
  %3 = alloca i32, align 4
  store %struct.web_client* %0, %struct.web_client** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.web_client*, %struct.web_client** %2, align 8
  %5 = call i64 @web_client_check_tcp(%struct.web_client* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.web_client*, %struct.web_client** %2, align 8
  %9 = getelementptr inbounds %struct.web_client, %struct.web_client* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IPPROTO_TCP, align 4
  %12 = load i32, i32* @TCP_NODELAY, align 4
  %13 = bitcast i32* %3 to i8*
  %14 = call i64 @setsockopt(i32 %10, i32 %11, i32 %12, i8* %13, i32 4)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %7, %1
  %17 = phi i1 [ false, %1 ], [ %15, %7 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* @D_WEB_CLIENT, align 4
  %23 = load %struct.web_client*, %struct.web_client** %2, align 8
  %24 = getelementptr inbounds %struct.web_client, %struct.web_client* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.web_client*, %struct.web_client** %2, align 8
  %27 = getelementptr inbounds %struct.web_client, %struct.web_client* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @debug(i32 %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %21, %16
  store i32 1, i32* %3, align 4
  %31 = load %struct.web_client*, %struct.web_client** %2, align 8
  %32 = getelementptr inbounds %struct.web_client, %struct.web_client* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SOL_SOCKET, align 4
  %35 = load i32, i32* @SO_KEEPALIVE, align 4
  %36 = bitcast i32* %3 to i8*
  %37 = call i64 @setsockopt(i32 %33, i32 %34, i32 %35, i8* %36, i32 4)
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %30
  %43 = load i32, i32* @D_WEB_CLIENT, align 4
  %44 = load %struct.web_client*, %struct.web_client** %2, align 8
  %45 = getelementptr inbounds %struct.web_client, %struct.web_client* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.web_client*, %struct.web_client** %2, align 8
  %48 = getelementptr inbounds %struct.web_client, %struct.web_client* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @debug(i32 %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %30
  %52 = load %struct.web_client*, %struct.web_client** %2, align 8
  %53 = call i32 @web_client_update_acl_matches(%struct.web_client* %52)
  %54 = load %struct.web_client*, %struct.web_client** %2, align 8
  %55 = getelementptr inbounds %struct.web_client, %struct.web_client* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 42, i8* %57, align 1
  %58 = load %struct.web_client*, %struct.web_client** %2, align 8
  %59 = getelementptr inbounds %struct.web_client, %struct.web_client* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 0, i8* %61, align 1
  %62 = load %struct.web_client*, %struct.web_client** %2, align 8
  %63 = getelementptr inbounds %struct.web_client, %struct.web_client* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 0, i8* %65, align 1
  %66 = load %struct.web_client*, %struct.web_client** %2, align 8
  %67 = getelementptr inbounds %struct.web_client, %struct.web_client* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 0, i8* %69, align 1
  %70 = load %struct.web_client*, %struct.web_client** %2, align 8
  %71 = getelementptr inbounds %struct.web_client, %struct.web_client* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @freez(i32* %72)
  %74 = load %struct.web_client*, %struct.web_client** %2, align 8
  %75 = getelementptr inbounds %struct.web_client, %struct.web_client* %74, i32 0, i32 3
  store i32* null, i32** %75, align 8
  %76 = load %struct.web_client*, %struct.web_client** %2, align 8
  %77 = call i32 @web_client_enable_wait_receive(%struct.web_client* %76)
  %78 = load %struct.web_client*, %struct.web_client** %2, align 8
  %79 = call i32 @web_server_log_connection(%struct.web_client* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %80 = call i32 @web_client_cache_verify(i32 0)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @web_client_check_tcp(%struct.web_client*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

declare dso_local i32 @web_client_update_acl_matches(%struct.web_client*) #1

declare dso_local i32 @freez(i32*) #1

declare dso_local i32 @web_client_enable_wait_receive(%struct.web_client*) #1

declare dso_local i32 @web_server_log_connection(%struct.web_client*, i8*) #1

declare dso_local i32 @web_client_cache_verify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
