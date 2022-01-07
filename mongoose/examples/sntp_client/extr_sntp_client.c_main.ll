; ModuleID = '/home/carl/AnghaBench/mongoose/examples/sntp_client/extr_sntp_client.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/sntp_client/extr_sntp_client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@ev_handler = common dso_local global i32 0, align 4
@s_default_server = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to connect to %s\0A\00", align 1
@s_exit_flag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32* null)
  %5 = load i32, i32* @ev_handler, align 4
  %6 = load i8*, i8** @s_default_server, align 8
  %7 = call %struct.mg_connection* @mg_sntp_get_time(%struct.mg_mgr* %2, i32 %5, i8* %6)
  store %struct.mg_connection* %7, %struct.mg_connection** %3, align 8
  %8 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %9 = icmp eq %struct.mg_connection* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** @s_default_server, align 8
  %13 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 -1, i32* %1, align 4
  br label %22

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %18, %14
  %16 = load i64, i64* @s_exit_flag, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 1000)
  br label %15

20:                                               ; preds = %15
  %21 = call i32 @mg_mgr_free(%struct.mg_mgr* %2)
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %10
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_sntp_get_time(%struct.mg_mgr*, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
