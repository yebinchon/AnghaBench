; ModuleID = '/home/carl/AnghaBench/mongoose/examples/http_client/extr_http_client.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/http_client/extr_http_client.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"connect() failed: %s\0A\00", align 1
@s_exit_flag = common dso_local global i32 0, align 4
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@s_show_headers = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Server closed connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.http_message*
  store %struct.http_message* %9, %struct.http_message** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %62 [
    i32 129, label %11
    i32 128, label %24
    i32 130, label %56
  ]

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @strerror(i32 %20)
  %22 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 1, i32* @s_exit_flag, align 4
  br label %23

23:                                               ; preds = %16, %11
  br label %63

24:                                               ; preds = %3
  %25 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %26 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %27 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @s_show_headers, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.http_message*, %struct.http_message** %7, align 8
  %34 = getelementptr inbounds %struct.http_message, %struct.http_message* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.http_message*, %struct.http_message** %7, align 8
  %38 = getelementptr inbounds %struct.http_message, %struct.http_message* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fwrite(i32 %36, i32 1, i32 %40, i32 %41)
  br label %54

43:                                               ; preds = %24
  %44 = load %struct.http_message*, %struct.http_message** %7, align 8
  %45 = getelementptr inbounds %struct.http_message, %struct.http_message* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.http_message*, %struct.http_message** %7, align 8
  %49 = getelementptr inbounds %struct.http_message, %struct.http_message* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @stdout, align 4
  %53 = call i32 @fwrite(i32 %47, i32 1, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %43, %32
  %55 = call i32 @putchar(i8 signext 10)
  store i32 1, i32* @s_exit_flag, align 4
  br label %63

56:                                               ; preds = %3
  %57 = load i32, i32* @s_exit_flag, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @s_exit_flag, align 4
  br label %61

61:                                               ; preds = %59, %56
  br label %63

62:                                               ; preds = %3
  br label %63

63:                                               ; preds = %62, %61, %54, %23
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
