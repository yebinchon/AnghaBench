; ModuleID = '/home/carl/AnghaBench/mongoose/examples/sntp_client/extr_sntp_client.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/sntp_client/extr_sntp_client.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_sntp_message = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Local time: %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Time from %s: %s\00", align 1
@s_default_server = common dso_local global i8* null, align 8
@s_exit_flag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Failed to get time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mg_sntp_message*, align 8
  %8 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.mg_sntp_message*
  store %struct.mg_sntp_message* %10, %struct.mg_sntp_message** %7, align 8
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %28 [
    i32 128, label %13
    i32 129, label %25
  ]

13:                                               ; preds = %3
  %14 = call i32 @time(i32* null)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @stdout, align 4
  %16 = call i8* @ctime(i32* %8)
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.mg_sntp_message*, %struct.mg_sntp_message** %7, align 8
  %19 = getelementptr inbounds %struct.mg_sntp_message, %struct.mg_sntp_message* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @stdout, align 4
  %22 = load i8*, i8** @s_default_server, align 8
  %23 = call i8* @ctime(i32* %8)
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %23)
  store i32 1, i32* @s_exit_flag, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @s_exit_flag, align 4
  br label %28

28:                                               ; preds = %3, %25, %13
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
