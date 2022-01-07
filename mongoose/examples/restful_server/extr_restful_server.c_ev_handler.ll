; ModuleID = '/home/carl/AnghaBench/mongoose/examples/restful_server/extr_restful_server.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/restful_server/extr_restful_server.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"/api/v1/sum\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/printcontent\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@s_http_server_opts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca [100 x i8], align 16
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.http_message*
  store %struct.http_message* %10, %struct.http_message** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %59 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.http_message*, %struct.http_message** %7, align 8
  %14 = getelementptr inbounds %struct.http_message, %struct.http_message* %13, i32 0, i32 1
  %15 = call i32 @mg_vcmp(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %19 = load %struct.http_message*, %struct.http_message** %7, align 8
  %20 = call i32 @handle_sum_call(%struct.mg_connection* %18, %struct.http_message* %19)
  br label %58

21:                                               ; preds = %12
  %22 = load %struct.http_message*, %struct.http_message** %7, align 8
  %23 = getelementptr inbounds %struct.http_message, %struct.http_message* %22, i32 0, i32 1
  %24 = call i32 @mg_vcmp(i32* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = bitcast [100 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 100, i1 false)
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %29 = load %struct.http_message*, %struct.http_message** %7, align 8
  %30 = getelementptr inbounds %struct.http_message, %struct.http_message* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.http_message*, %struct.http_message** %7, align 8
  %34 = getelementptr inbounds %struct.http_message, %struct.http_message* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 99, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %46

40:                                               ; preds = %26
  %41 = load %struct.http_message*, %struct.http_message** %7, align 8
  %42 = getelementptr inbounds %struct.http_message, %struct.http_message* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %40, %39
  %47 = phi i64 [ 99, %39 ], [ %45, %40 ]
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(i8* %28, i32 %32, i32 %48)
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %51 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %57

52:                                               ; preds = %21
  %53 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %54 = load %struct.http_message*, %struct.http_message** %7, align 8
  %55 = load i32, i32* @s_http_server_opts, align 4
  %56 = call i32 @mg_serve_http(%struct.mg_connection* %53, %struct.http_message* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57, %17
  br label %60

59:                                               ; preds = %3
  br label %60

60:                                               ; preds = %59, %58
  ret void
}

declare dso_local i32 @mg_vcmp(i32*, i8*) #1

declare dso_local i32 @handle_sum_call(%struct.mg_connection*, %struct.http_message*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mg_serve_http(%struct.mg_connection*, %struct.http_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
