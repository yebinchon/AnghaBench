; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_serve_file_cb.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_serve_file_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i64 }
%struct.http_message = type { i32 }

@MG_EV_HTTP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"unit_test.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MG_EV_HTTP_REPLY = common dso_local global i32 0, align 4
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @serve_file_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serve_file_cb(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.http_message*
  store %struct.http_message* %10, %struct.http_message** %7, align 8
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MG_EV_HTTP_REQUEST, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %20 = load %struct.http_message*, %struct.http_message** %7, align 8
  %21 = call i32 @mg_mk_str(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @mg_mk_str(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @mg_http_serve_file(%struct.mg_connection* %19, %struct.http_message* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %39

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MG_EV_HTTP_REPLY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.http_message*, %struct.http_message** %7, align 8
  %31 = call i32 @serve_file_verify(%struct.http_message* %30)
  %32 = call i32 @strcpy(i8* %29, i32 %31)
  %33 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %34 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %35 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %28, %24
  br label %39

39:                                               ; preds = %38, %18
  ret void
}

declare dso_local i32 @mg_http_serve_file(%struct.mg_connection*, %struct.http_message*, i8*, i32, i32) #1

declare dso_local i32 @mg_mk_str(i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @serve_file_verify(%struct.http_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
