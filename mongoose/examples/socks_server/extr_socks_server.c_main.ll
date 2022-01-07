; ModuleID = '/home/carl/AnghaBench/mongoose/examples/socks_server/extr_socks_server.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/socks_server/extr_socks_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i32 }

@s_listening_addr = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mg_bind(%s) failed\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Starting socks5 proxy server on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca %struct.mg_connection*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32* null)
  %5 = load i8*, i8** @s_listening_addr, align 8
  %6 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %2, i8* %5, i32* null)
  store %struct.mg_connection* %6, %struct.mg_connection** %3, align 8
  %7 = icmp eq %struct.mg_connection* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32, i32* @stderr, align 4
  %10 = load i8*, i8** @s_listening_addr, align 8
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  %13 = call i32 @exit(i32 %12) #3
  unreachable

14:                                               ; preds = %0
  %15 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %16 = call i32 @mg_set_protocol_socks(%struct.mg_connection* %15)
  %17 = load i8*, i8** @s_listening_addr, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %19, %14
  %20 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 1000)
  br label %19
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @mg_set_protocol_socks(%struct.mg_connection*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
