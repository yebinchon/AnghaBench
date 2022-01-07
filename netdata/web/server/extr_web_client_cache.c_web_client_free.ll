; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client_cache.c_web_client_free.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client_cache.c_web_client_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { %struct.TYPE_4__, %struct.web_client*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@netdata_srv_ctx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.web_client*)* @web_client_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @web_client_free(%struct.web_client* %0) #0 {
  %2 = alloca %struct.web_client*, align 8
  store %struct.web_client* %0, %struct.web_client** %2, align 8
  %3 = load %struct.web_client*, %struct.web_client** %2, align 8
  %4 = getelementptr inbounds %struct.web_client, %struct.web_client* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @buffer_free(i32 %6)
  %8 = load %struct.web_client*, %struct.web_client** %2, align 8
  %9 = getelementptr inbounds %struct.web_client, %struct.web_client* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @buffer_free(i32 %11)
  %13 = load %struct.web_client*, %struct.web_client** %2, align 8
  %14 = getelementptr inbounds %struct.web_client, %struct.web_client* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @buffer_free(i32 %16)
  %18 = load %struct.web_client*, %struct.web_client** %2, align 8
  %19 = getelementptr inbounds %struct.web_client, %struct.web_client* %18, i32 0, i32 1
  %20 = load %struct.web_client*, %struct.web_client** %19, align 8
  %21 = call i32 @freez(%struct.web_client* %20)
  %22 = load %struct.web_client*, %struct.web_client** %2, align 8
  %23 = call i32 @freez(%struct.web_client* %22)
  ret void
}

declare dso_local i32 @buffer_free(i32) #1

declare dso_local i32 @freez(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
