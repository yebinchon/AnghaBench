; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_flush_banners.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_tcpcon_flush_banners.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_ConnectionTable = type { i32, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i64)* }
%struct.TCP_Control_Block = type { %struct.BannerOutput, i32, i32, i32 }
%struct.BannerOutput = type { i32, i64, i32, %struct.BannerOutput* }

@global_now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TCP_ConnectionTable*, %struct.TCP_Control_Block*)* @tcpcon_flush_banners to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpcon_flush_banners(%struct.TCP_ConnectionTable* %0, %struct.TCP_Control_Block* %1) #0 {
  %3 = alloca %struct.TCP_ConnectionTable*, align 8
  %4 = alloca %struct.TCP_Control_Block*, align 8
  %5 = alloca %struct.BannerOutput*, align 8
  store %struct.TCP_ConnectionTable* %0, %struct.TCP_ConnectionTable** %3, align 8
  store %struct.TCP_Control_Block* %1, %struct.TCP_Control_Block** %4, align 8
  %6 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %7 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %6, i32 0, i32 0
  store %struct.BannerOutput* %7, %struct.BannerOutput** %5, align 8
  br label %8

8:                                                ; preds = %50, %2
  %9 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %10 = icmp ne %struct.BannerOutput* %9, null
  br i1 %10, label %11, label %54

11:                                               ; preds = %8
  %12 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %13 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %11
  %17 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %18 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %16
  %22 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %3, align 8
  %23 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %22, i32 0, i32 1
  %24 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i64)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i64)** %23, align 8
  %25 = load %struct.TCP_ConnectionTable*, %struct.TCP_ConnectionTable** %3, align 8
  %26 = getelementptr inbounds %struct.TCP_ConnectionTable, %struct.TCP_ConnectionTable* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @global_now, align 4
  %29 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %30 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %33 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %36 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 268435455
  %39 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %40 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %43 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %46 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 %24(i32 %27, i32 %28, i32 %31, i32 6, i32 %34, i32 %38, i32 %41, i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %21, %16, %11
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %52 = getelementptr inbounds %struct.BannerOutput, %struct.BannerOutput* %51, i32 0, i32 3
  %53 = load %struct.BannerOutput*, %struct.BannerOutput** %52, align 8
  store %struct.BannerOutput* %53, %struct.BannerOutput** %5, align 8
  br label %8

54:                                               ; preds = %8
  %55 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %56 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %55, i32 0, i32 0
  %57 = call i32 @banout_release(%struct.BannerOutput* %56)
  ret void
}

declare dso_local i32 @banout_release(%struct.BannerOutput*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
