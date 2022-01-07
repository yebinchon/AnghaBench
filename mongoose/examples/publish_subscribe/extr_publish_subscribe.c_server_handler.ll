; ModuleID = '/home/carl/AnghaBench/mongoose/examples/publish_subscribe/extr_publish_subscribe.c_server_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/publish_subscribe/extr_publish_subscribe.c_server_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32, %struct.mbuf }
%struct.mbuf = type { i32, i32 }

@MG_EV_RECV = common dso_local global i32 0, align 4
@MG_F_USER_2 = common dso_local global i32 0, align 4
@MG_EV_ACCEPT = common dso_local global i32 0, align 4
@MG_SOCK_STRINGIFY_IP = common dso_local global i32 0, align 4
@MG_SOCK_STRINGIFY_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"New client connected from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @server_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mg_connection*, align 8
  %9 = alloca [32 x i8], align 16
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MG_EV_RECV, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %3
  %15 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %15, i32 0, i32 2
  store %struct.mbuf* %16, %struct.mbuf** %7, align 8
  %17 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mg_connection* @mg_next(i32 %19, %struct.mg_connection* null)
  store %struct.mg_connection* %20, %struct.mg_connection** %8, align 8
  br label %21

21:                                               ; preds = %41, %14
  %22 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %23 = icmp ne %struct.mg_connection* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %26 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MG_F_USER_2, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mg_send(%struct.mg_connection* %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %32, %31
  %42 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %43 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %46 = call %struct.mg_connection* @mg_next(i32 %44, %struct.mg_connection* %45)
  store %struct.mg_connection* %46, %struct.mg_connection** %8, align 8
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mbuf_remove(%struct.mbuf* %48, i32 %51)
  br label %67

53:                                               ; preds = %3
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MG_EV_ACCEPT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %60 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %61 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @mg_sock_addr_to_str(i8* %58, i8* %59, i32 32, i32 %62)
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %65 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %57, %53
  br label %67

67:                                               ; preds = %66, %47
  ret void
}

declare dso_local %struct.mg_connection* @mg_next(i32, %struct.mg_connection*) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i32, i32) #1

declare dso_local i32 @mbuf_remove(%struct.mbuf*, i32) #1

declare dso_local i32 @mg_sock_addr_to_str(i8*, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
