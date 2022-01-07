; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_server.c_web_server_log_connection.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_server.c_web_server_log_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%llu: %d '[%s]:%s' '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @web_server_log_connection(%struct.web_client* %0, i8* %1) #0 {
  %3 = alloca %struct.web_client*, align 8
  %4 = alloca i8*, align 8
  store %struct.web_client* %0, %struct.web_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.web_client*, %struct.web_client** %3, align 8
  %6 = getelementptr inbounds %struct.web_client, %struct.web_client* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (...) @gettid()
  %9 = load %struct.web_client*, %struct.web_client** %3, align 8
  %10 = getelementptr inbounds %struct.web_client, %struct.web_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.web_client*, %struct.web_client** %3, align 8
  %13 = getelementptr inbounds %struct.web_client, %struct.web_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @log_access(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i32 %11, i32 %14, i8* %15)
  ret void
}

declare dso_local i32 @log_access(i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @gettid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
