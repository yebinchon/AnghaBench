; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dispatch.c_add_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dispatch.c_add_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol = type { i32, {}*, %struct.protocol*, i8* }

@.str = private unnamed_addr constant [38 x i8] c"can't allocate protocol struct for %s\00", align 1
@protocols = common dso_local global %struct.protocol* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_protocol(i8* %0, i32 %1, void (%struct.protocol*)* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.protocol*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.protocol*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (%struct.protocol*)* %2, void (%struct.protocol*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call %struct.protocol* @malloc(i32 32)
  store %struct.protocol* %10, %struct.protocol** %9, align 8
  %11 = load %struct.protocol*, %struct.protocol** %9, align 8
  %12 = icmp ne %struct.protocol* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.protocol*, %struct.protocol** %9, align 8
  %19 = getelementptr inbounds %struct.protocol, %struct.protocol* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load void (%struct.protocol*)*, void (%struct.protocol*)** %7, align 8
  %21 = load %struct.protocol*, %struct.protocol** %9, align 8
  %22 = getelementptr inbounds %struct.protocol, %struct.protocol* %21, i32 0, i32 1
  %23 = bitcast {}** %22 to void (%struct.protocol*)**
  store void (%struct.protocol*)* %20, void (%struct.protocol*)** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.protocol*, %struct.protocol** %9, align 8
  %26 = getelementptr inbounds %struct.protocol, %struct.protocol* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.protocol*, %struct.protocol** @protocols, align 8
  %28 = load %struct.protocol*, %struct.protocol** %9, align 8
  %29 = getelementptr inbounds %struct.protocol, %struct.protocol* %28, i32 0, i32 2
  store %struct.protocol* %27, %struct.protocol** %29, align 8
  %30 = load %struct.protocol*, %struct.protocol** %9, align 8
  store %struct.protocol* %30, %struct.protocol** @protocols, align 8
  ret void
}

declare dso_local %struct.protocol* @malloc(i32) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
