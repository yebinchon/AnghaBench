; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_fixEndian.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_fixEndian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.lsapi_req_header* }
%struct.lsapi_req_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @fixEndian to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixEndian(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.lsapi_req_header*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.lsapi_req_header*, %struct.lsapi_req_header** %5, align 8
  store %struct.lsapi_req_header* %6, %struct.lsapi_req_header** %3, align 8
  %7 = load %struct.lsapi_req_header*, %struct.lsapi_req_header** %3, align 8
  %8 = getelementptr inbounds %struct.lsapi_req_header, %struct.lsapi_req_header* %7, i32 0, i32 8
  %9 = call i32 @swapIntEndian(i32* %8)
  %10 = load %struct.lsapi_req_header*, %struct.lsapi_req_header** %3, align 8
  %11 = getelementptr inbounds %struct.lsapi_req_header, %struct.lsapi_req_header* %10, i32 0, i32 7
  %12 = call i32 @swapIntEndian(i32* %11)
  %13 = load %struct.lsapi_req_header*, %struct.lsapi_req_header** %3, align 8
  %14 = getelementptr inbounds %struct.lsapi_req_header, %struct.lsapi_req_header* %13, i32 0, i32 6
  %15 = call i32 @swapIntEndian(i32* %14)
  %16 = load %struct.lsapi_req_header*, %struct.lsapi_req_header** %3, align 8
  %17 = getelementptr inbounds %struct.lsapi_req_header, %struct.lsapi_req_header* %16, i32 0, i32 5
  %18 = call i32 @swapIntEndian(i32* %17)
  %19 = load %struct.lsapi_req_header*, %struct.lsapi_req_header** %3, align 8
  %20 = getelementptr inbounds %struct.lsapi_req_header, %struct.lsapi_req_header* %19, i32 0, i32 4
  %21 = call i32 @swapIntEndian(i32* %20)
  %22 = load %struct.lsapi_req_header*, %struct.lsapi_req_header** %3, align 8
  %23 = getelementptr inbounds %struct.lsapi_req_header, %struct.lsapi_req_header* %22, i32 0, i32 3
  %24 = call i32 @swapIntEndian(i32* %23)
  %25 = load %struct.lsapi_req_header*, %struct.lsapi_req_header** %3, align 8
  %26 = getelementptr inbounds %struct.lsapi_req_header, %struct.lsapi_req_header* %25, i32 0, i32 2
  %27 = call i32 @swapIntEndian(i32* %26)
  %28 = load %struct.lsapi_req_header*, %struct.lsapi_req_header** %3, align 8
  %29 = getelementptr inbounds %struct.lsapi_req_header, %struct.lsapi_req_header* %28, i32 0, i32 1
  %30 = call i32 @swapIntEndian(i32* %29)
  %31 = load %struct.lsapi_req_header*, %struct.lsapi_req_header** %3, align 8
  %32 = getelementptr inbounds %struct.lsapi_req_header, %struct.lsapi_req_header* %31, i32 0, i32 0
  %33 = call i32 @swapIntEndian(i32* %32)
  ret void
}

declare dso_local i32 @swapIntEndian(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
