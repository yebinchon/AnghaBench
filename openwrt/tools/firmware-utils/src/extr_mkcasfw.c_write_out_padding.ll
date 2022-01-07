; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_write_out_padding.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_write_out_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csum_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_padding(i32* %0, i64 %1, i32 %2, %struct.csum_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.csum_state*, align 8
  %10 = alloca [512 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.csum_state* %3, %struct.csum_state** %9, align 8
  store i64 2048, i64* %11, align 8
  %13 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %14 = load i32, i32* %8, align 4
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @memset(i32* %13, i32 %14, i64 %15)
  br label %17

17:                                               ; preds = %36, %4
  %18 = load i64, i64* %7, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.csum_state*, %struct.csum_state** %9, align 8
  %31 = call i32 @write_out_data(i32* %27, i32* %28, i64 %29, %struct.csum_state* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %7, align 8
  br label %17

40:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @write_out_data(i32*, i32*, i64, %struct.csum_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
