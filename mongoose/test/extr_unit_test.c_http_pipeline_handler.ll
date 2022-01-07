; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_http_pipeline_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_http_pipeline_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MG_EV_HTTP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Content-Type: text/plain\0D\0AContent-Length: 5\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@MG_EV_HTTP_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @http_pipeline_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_pipeline_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %10 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MG_EV_HTTP_REQUEST, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %20 = call i32 @mg_send_response_line(%struct.mg_connection* %19, i32 200, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %22 = call i32 @mg_printf(%struct.mg_connection* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %37

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MG_EV_HTTP_REPLY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 10
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %27
  br label %37

37:                                               ; preds = %36, %18
  ret void
}

declare dso_local i32 @mg_send_response_line(%struct.mg_connection*, i32, i8*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
