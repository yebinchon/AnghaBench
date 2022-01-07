; ModuleID = '/home/carl/AnghaBench/mongoose/examples/simple_crawler/extr_simple_crawler.c_event_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/simple_crawler/extr_simple_crawler.c_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i8*, i32 }
%struct.http_message = type { i32 }
%struct.userdata = type { i8* }

@.str = private unnamed_addr constant [41 x i8] c"Error while loading page: %s, error: %s\0A\00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.http_message*
  store %struct.http_message* %10, %struct.http_message** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %50 [
    i32 129, label %12
    i32 130, label %29
    i32 128, label %41
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %20 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.userdata*
  %23 = getelementptr inbounds %struct.userdata, %struct.userdata* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %26)
  br label %28

28:                                               ; preds = %18, %12
  br label %51

29:                                               ; preds = %3
  %30 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %31 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.userdata*
  %34 = getelementptr inbounds %struct.userdata, %struct.userdata* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %38 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @free(i8* %39)
  br label %51

41:                                               ; preds = %3
  %42 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %43 = load %struct.http_message*, %struct.http_message** %7, align 8
  %44 = call i32 @handle_reply(%struct.mg_connection* %42, %struct.http_message* %43)
  %45 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %46 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %47 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %51

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %50, %41, %29, %28
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @handle_reply(%struct.mg_connection*, %struct.http_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
