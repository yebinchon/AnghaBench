; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_send_port_based_redirect.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_send_port_based_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mg_serve_http_opts = type { i8* }
%struct.mg_str = type { i32, i64 }

@__const.mg_http_send_port_based_redirect.local_port = private unnamed_addr constant <{ i8, [19 x i8] }> <{ i8 37, [19 x i8] zeroinitializer }>, align 16
@MG_SOCK_STRINGIFY_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Content-Length: 0\0D\0ALocation: %.*s%.*s\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_connection*, %struct.http_message*, %struct.mg_serve_http_opts*)* @mg_http_send_port_based_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_http_send_port_based_redirect(%struct.mg_connection* %0, %struct.http_message* %1, %struct.mg_serve_http_opts* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca %struct.http_message*, align 8
  %7 = alloca %struct.mg_serve_http_opts*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mg_str, align 8
  %10 = alloca %struct.mg_str, align 8
  %11 = alloca [20 x i8], align 16
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store %struct.http_message* %1, %struct.http_message** %6, align 8
  store %struct.mg_serve_http_opts* %2, %struct.mg_serve_http_opts** %7, align 8
  %12 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %7, align 8
  %13 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = bitcast [20 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 getelementptr inbounds (<{ i8, [19 x i8] }>, <{ i8, [19 x i8] }>* @__const.mg_http_send_port_based_redirect.local_port, i32 0, i32 0), i64 20, i1 false)
  %16 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %20 = call i32 @mg_conn_addr_to_str(%struct.mg_connection* %16, i8* %18, i32 19, i32 %19)
  br label %21

21:                                               ; preds = %53, %3
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @mg_next_comma_list_entry(i8* %22, %struct.mg_str* %9, %struct.mg_str* %10)
  store i8* %23, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %27 = call i64 @mg_vcmp(%struct.mg_str* %9, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %31 = call i32 @mg_send_response_line(%struct.mg_connection* %30, i32 301, i32* null)
  %32 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %33 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.http_message*, %struct.http_message** %6, align 8
  %39 = getelementptr inbounds %struct.http_message, %struct.http_message* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.http_message*, %struct.http_message** %6, align 8
  %43 = getelementptr inbounds %struct.http_message, %struct.http_message* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %41, %45
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.http_message*, %struct.http_message** %6, align 8
  %49 = getelementptr inbounds %struct.http_message, %struct.http_message* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mg_printf(%struct.mg_connection* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37, i32 %47, i32 %51)
  store i32 1, i32* %4, align 4
  br label %55

53:                                               ; preds = %25
  br label %21

54:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mg_conn_addr_to_str(%struct.mg_connection*, i8*, i32, i32) #2

declare dso_local i8* @mg_next_comma_list_entry(i8*, %struct.mg_str*, %struct.mg_str*) #2

declare dso_local i64 @mg_vcmp(%struct.mg_str*, i8*) #2

declare dso_local i32 @mg_send_response_line(%struct.mg_connection*, i32, i32*) #2

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
