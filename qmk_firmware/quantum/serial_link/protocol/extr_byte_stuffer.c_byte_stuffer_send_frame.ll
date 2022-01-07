; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/protocol/extr_byte_stuffer.c_byte_stuffer_send_frame.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/protocol/extr_byte_stuffer.c_byte_stuffer_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @byte_stuffer_send_frame(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %3
  store i64 1, i64* %8, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64* %16, i64** %9, align 8
  %17 = load i64*, i64** %5, align 8
  store i64* %17, i64** %10, align 8
  br label %18

18:                                               ; preds = %50, %13
  %19 = load i64*, i64** %5, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = icmp ult i64* %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 255
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @send_block(i64 %26, i64* %27, i64* %28, i64 %29)
  %31 = load i64*, i64** %5, align 8
  store i64* %31, i64** %10, align 8
  store i64 1, i64* %8, align 8
  br label %50

32:                                               ; preds = %22
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @send_block(i64 %37, i64* %38, i64* %39, i64 %40)
  %42 = load i64*, i64** %5, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  store i64* %43, i64** %10, align 8
  store i64 1, i64* %8, align 8
  br label %47

44:                                               ; preds = %32
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %5, align 8
  br label %50

50:                                               ; preds = %47, %25
  br label %18

51:                                               ; preds = %18
  %52 = load i64, i64* %4, align 8
  %53 = load i64*, i64** %10, align 8
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @send_block(i64 %52, i64* %53, i64* %54, i64 %55)
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @send_data(i64 %57, i64* %7, i32 1)
  br label %59

59:                                               ; preds = %51, %3
  ret void
}

declare dso_local i32 @send_block(i64, i64*, i64*, i64) #1

declare dso_local i32 @send_data(i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
