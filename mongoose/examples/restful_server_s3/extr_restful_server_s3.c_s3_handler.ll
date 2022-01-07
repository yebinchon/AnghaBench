; ModuleID = '/home/carl/AnghaBench/mongoose/examples/restful_server_s3/extr_restful_server_s3.c_s3_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/restful_server_s3/extr_restful_server_s3.c_s3_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i64 }
%struct.http_message = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s%.*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @s3_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.http_message*
  store %struct.http_message* %10, %struct.http_message** %7, align 8
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.mg_connection*
  store %struct.mg_connection* %14, %struct.mg_connection** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %50 [
    i32 128, label %16
    i32 129, label %47
  ]

16:                                               ; preds = %3
  %17 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %18 = icmp ne %struct.mg_connection* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %21 = load %struct.http_message*, %struct.http_message** %7, align 8
  %22 = getelementptr inbounds %struct.http_message, %struct.http_message* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 200
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.http_message*, %struct.http_message** %7, align 8
  %28 = getelementptr inbounds %struct.http_message, %struct.http_message* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.http_message*, %struct.http_message** %7, align 8
  %33 = getelementptr inbounds %struct.http_message, %struct.http_message* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mg_printf_http_chunk(%struct.mg_connection* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %31, i32 %35)
  %37 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %38 = call i32 @mg_send_http_chunk(%struct.mg_connection* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %39

39:                                               ; preds = %19, %16
  %40 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %41 = call i32 @unlink_conns(%struct.mg_connection* %40)
  %42 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %43 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %44 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %51

47:                                               ; preds = %3
  %48 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %49 = call i32 @unlink_conns(%struct.mg_connection* %48)
  br label %51

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %50, %47, %39
  ret void
}

declare dso_local i32 @mg_printf_http_chunk(%struct.mg_connection*, i8*, i8*, i32, i32) #1

declare dso_local i32 @mg_send_http_chunk(%struct.mg_connection*, i8*, i32) #1

declare dso_local i32 @unlink_conns(%struct.mg_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
