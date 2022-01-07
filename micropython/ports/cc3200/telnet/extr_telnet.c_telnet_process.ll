; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_process.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@telnet_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TELNET_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@E_TELNET_RESULT_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @telnet_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @telnet_process() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 1), align 4
  %5 = icmp sge i32 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @TELNET_RX_BUFFER_SIZE, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %9 = sub nsw i32 %7, %8
  br label %15

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 1), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %13 = sub nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ %9, %6 ], [ %14, %10 ]
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 1), align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = sub nsw i32 %20, 1
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %21, %19 ], [ %23, %22 ]
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i64, i64* @E_TELNET_RESULT_OK, align 8
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 2), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @telnet_recv_text_non_blocking(i32* %33, i32 %34, i32* %1)
  %36 = icmp eq i64 %29, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @telnet_data, i32 0, i32 0), align 8
  br label %41

41:                                               ; preds = %37, %28
  br label %42

42:                                               ; preds = %41, %24
  ret void
}

declare dso_local i64 @telnet_recv_text_non_blocking(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
