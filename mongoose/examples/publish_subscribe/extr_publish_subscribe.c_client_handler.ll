; ModuleID = '/home/carl/AnghaBench/mongoose/examples/publish_subscribe/extr_publish_subscribe.c_client_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/publish_subscribe/extr_publish_subscribe.c_client_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i64, %struct.mbuf }
%struct.mbuf = type { i32, i32 }

@MG_EV_CONNECT = common dso_local global i32 0, align 4
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error connecting to server!\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Connected to server. Type a message and press enter.\00", align 1
@MG_EV_RECV = common dso_local global i32 0, align 4
@MG_F_USER_1 = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@MG_EV_CLOSE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @client_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %10 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %9, i32 0, i32 2
  store %struct.mbuf* %10, %struct.mbuf** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MG_EV_CONNECT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %17 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EXIT_FAILURE, align 4
  %25 = call i32 @exit(i32 %24) #3
  unreachable

26:                                               ; preds = %15
  %27 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %81

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MG_EV_RECV, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %34 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MG_F_USER_1, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %41 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.mg_connection*
  store %struct.mg_connection* %43, %struct.mg_connection** %8, align 8
  %44 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mg_send(%struct.mg_connection* %44, i32 %47, i32 %50)
  %52 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mbuf_remove(%struct.mbuf* %52, i32 %55)
  br label %71

57:                                               ; preds = %32
  %58 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @stdout, align 4
  %65 = call i32 @fwrite(i32 %60, i32 %63, i32 1, i32 %64)
  %66 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mbuf_remove(%struct.mbuf* %66, i32 %69)
  br label %71

71:                                               ; preds = %57, %39
  br label %80

72:                                               ; preds = %28
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MG_EV_CLOSE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @EXIT_SUCCESS, align 4
  %78 = call i32 @exit(i32 %77) #3
  unreachable

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %71
  br label %81

81:                                               ; preds = %80, %26
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mg_send(%struct.mg_connection*, i32, i32) #1

declare dso_local i32 @mbuf_remove(%struct.mbuf*, i32) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
