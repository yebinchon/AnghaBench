; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client_cache.c_web_client_zero.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client_cache.c_web_client_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.web_client*)* @web_client_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @web_client_zero(%struct.web_client* %0) #0 {
  %2 = alloca %struct.web_client*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.web_client* %0, %struct.web_client** %2, align 8
  %6 = load %struct.web_client*, %struct.web_client** %2, align 8
  %7 = getelementptr inbounds %struct.web_client, %struct.web_client* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load %struct.web_client*, %struct.web_client** %2, align 8
  %11 = getelementptr inbounds %struct.web_client, %struct.web_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.web_client*, %struct.web_client** %2, align 8
  %15 = getelementptr inbounds %struct.web_client, %struct.web_client* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @buffer_flush(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @buffer_flush(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @buffer_flush(i32* %22)
  %24 = load %struct.web_client*, %struct.web_client** %2, align 8
  %25 = getelementptr inbounds %struct.web_client, %struct.web_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @freez(i32 %26)
  %28 = load %struct.web_client*, %struct.web_client** %2, align 8
  %29 = call i32 @memset(%struct.web_client* %28, i32 0, i32 32)
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.web_client*, %struct.web_client** %2, align 8
  %32 = getelementptr inbounds %struct.web_client, %struct.web_client* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32* %30, i32** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.web_client*, %struct.web_client** %2, align 8
  %36 = getelementptr inbounds %struct.web_client, %struct.web_client* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32* %34, i32** %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.web_client*, %struct.web_client** %2, align 8
  %40 = getelementptr inbounds %struct.web_client, %struct.web_client* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  ret void
}

declare dso_local i32 @buffer_flush(i32*) #1

declare dso_local i32 @freez(i32) #1

declare dso_local i32 @memset(%struct.web_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
