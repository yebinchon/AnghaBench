; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/hello-no-meta/extr_main.c_hello_world.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/hello-no-meta/extr_main.c_hello_world.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type { i32 }
%struct.lwan_response = type { i8*, i32 }

@hello_world.message = internal constant [14 x i8] c"Hello, World!\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@HTTP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwan_request*, %struct.lwan_response*, i8*)* @hello_world to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hello_world(%struct.lwan_request* %0, %struct.lwan_response* %1, i8* %2) #0 {
  %4 = alloca %struct.lwan_request*, align 8
  %5 = alloca %struct.lwan_response*, align 8
  %6 = alloca i8*, align 8
  store %struct.lwan_request* %0, %struct.lwan_request** %4, align 8
  store %struct.lwan_response* %1, %struct.lwan_response** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lwan_response*, %struct.lwan_response** %5, align 8
  %8 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.lwan_response*, %struct.lwan_response** %5, align 8
  %10 = getelementptr inbounds %struct.lwan_response, %struct.lwan_response* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @lwan_strbuf_set_static(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @hello_world.message, i64 0, i64 0), i32 13)
  %13 = load i32, i32* @HTTP_OK, align 4
  ret i32 %13
}

declare dso_local i32 @lwan_strbuf_set_static(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
