; ModuleID = '/home/carl/AnghaBench/mongoose/examples/udp_echo_server/extr_echo_server.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/udp_echo_server/extr_echo_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"udp://1234\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"udp://127.0.0.1:17000\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Starting echo mgr on ports %s, %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mg_mgr, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %5 = call i32 @mg_mgr_init(%struct.mg_mgr* %2, i32* null)
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @ev_handler, align 4
  %8 = call i32 @mg_bind(%struct.mg_mgr* %2, i8* %6, i32 %7)
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @ev_handler, align 4
  %11 = call i32 @mg_bind(%struct.mg_mgr* %2, i8* %9, i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %12, i8* %13)
  br label %15

15:                                               ; preds = %15, %0
  %16 = call i32 @mg_mgr_poll(%struct.mg_mgr* %2, i32 1000)
  br label %15
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
