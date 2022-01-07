; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_read_byte.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.ar934x_nfc = type { i32, i32, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @ar934x_nfc_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_read_byte(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.ar934x_nfc*, align 8
  %4 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %6 = call %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info* %5)
  store %struct.ar934x_nfc* %6, %struct.ar934x_nfc** %3, align 8
  %7 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %8 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %11 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %17 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %22 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20, %1
  %26 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %27 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %30 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %46

36:                                               ; preds = %20
  %37 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %38 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %41 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %36, %25
  %47 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %48 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
