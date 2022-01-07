; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_parse_banner.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_parse_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_ConnectionTable = type { i32 }
%struct.TCP_Control_Block = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.InteractiveData = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TCP_ConnectionTable*, %struct.TCP_Control_Block*, i8*, i64, %struct.InteractiveData*)* @parse_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_banner(%struct.TCP_ConnectionTable* %0, %struct.TCP_Control_Block* %1, i8* %2, i64 %3, %struct.InteractiveData* %4) #0 {
  %6 = alloca %struct.TCP_ConnectionTable*, align 8
  %7 = alloca %struct.TCP_Control_Block*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.InteractiveData*, align 8
  store %struct.TCP_ConnectionTable* %0, %struct.TCP_ConnectionTable** %6, align 8
  store %struct.TCP_Control_Block* %1, %struct.TCP_Control_Block** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.InteractiveData* %4, %struct.InteractiveData** %10, align 8
  %11 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %7, align 8
  %12 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %6, align 8
  %17 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %7, align 8
  %20 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %19, i32 0, i32 1
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %7, align 8
  %24 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %23, i32 0, i32 0
  %25 = load %struct.InteractiveData*, %struct.InteractiveData** %10, align 8
  %26 = call i32 @banner1_parse(i32 %18, i32* %20, i8* %21, i64 %22, %struct.TYPE_2__* %24, %struct.InteractiveData* %25)
  %27 = load i64, i64* %9, align 8
  ret i64 %27
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @banner1_parse(i32, i32*, i8*, i64, %struct.TYPE_2__*, %struct.InteractiveData*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
