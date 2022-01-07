; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_write_out_block.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_write_out_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_block = type { i64, i32* }
%struct.csum_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_block(i32* %0, %struct.fw_block* %1, %struct.csum_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fw_block*, align 8
  %7 = alloca %struct.csum_state*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.fw_block* %1, %struct.fw_block** %6, align 8
  store %struct.csum_state* %2, %struct.csum_state** %7, align 8
  %9 = load %struct.fw_block*, %struct.fw_block** %6, align 8
  %10 = icmp eq %struct.fw_block* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

12:                                               ; preds = %3
  %13 = load %struct.fw_block*, %struct.fw_block** %6, align 8
  %14 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %35

18:                                               ; preds = %12
  %19 = load %struct.fw_block*, %struct.fw_block** %6, align 8
  %20 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %35

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.fw_block*, %struct.fw_block** %6, align 8
  %27 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.fw_block*, %struct.fw_block** %6, align 8
  %30 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.csum_state*, %struct.csum_state** %7, align 8
  %33 = call i32 @write_out_file(i32* %25, i32* %28, i64 %31, %struct.csum_state* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %24, %23, %17, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @write_out_file(i32*, i32*, i64, %struct.csum_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
