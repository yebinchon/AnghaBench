; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_call_endpoint_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_call_endpoint_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64, i32, i8* }
%struct.http_message = type { i32 }
%struct.mg_http_proto_data = type { i64 }
%struct.mg_http_endpoint = type { i8*, i64, i32, i32 }

@MG_EV_HTTP_REQUEST = common dso_local global i32 0, align 4
@MG_AUTH_FLAG_IS_GLOBAL_PASS_FILE = common dso_local global i32 0, align 4
@MG_EV_HTTP_MULTIPART_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, %struct.http_message*)* @mg_http_call_endpoint_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_http_call_endpoint_handler(%struct.mg_connection* %0, i32 %1, %struct.http_message* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.http_message*, align 8
  %7 = alloca %struct.mg_http_proto_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mg_http_endpoint*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.http_message* %2, %struct.http_message** %6, align 8
  %10 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %11 = call %struct.mg_http_proto_data* @mg_http_get_proto_data(%struct.mg_connection* %10)
  store %struct.mg_http_proto_data* %11, %struct.mg_http_proto_data** %7, align 8
  %12 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %13 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MG_EV_HTTP_REQUEST, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %20 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.http_message*, %struct.http_message** %6, align 8
  %23 = getelementptr inbounds %struct.http_message, %struct.http_message* %22, i32 0, i32 0
  %24 = call %struct.mg_http_endpoint* @mg_http_get_endpoint_handler(i32 %21, i32* %23)
  store %struct.mg_http_endpoint* %24, %struct.mg_http_endpoint** %9, align 8
  %25 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %9, align 8
  %26 = icmp ne %struct.mg_http_endpoint* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %9, align 8
  %29 = getelementptr inbounds %struct.mg_http_endpoint, %struct.mg_http_endpoint* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %7, align 8
  %32 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %18
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %36 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %7, align 8
  %37 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %7, align 8
  %42 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %46 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i64 [ %43, %40 ], [ %47, %44 ]
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.http_message*, %struct.http_message** %6, align 8
  %53 = call i32 @mg_call(%struct.mg_connection* %35, i64 %49, i8* %50, i32 %51, %struct.http_message* %52)
  ret void
}

declare dso_local %struct.mg_http_proto_data* @mg_http_get_proto_data(%struct.mg_connection*) #1

declare dso_local %struct.mg_http_endpoint* @mg_http_get_endpoint_handler(i32, i32*) #1

declare dso_local i32 @mg_call(%struct.mg_connection*, i64, i8*, i32, %struct.http_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
