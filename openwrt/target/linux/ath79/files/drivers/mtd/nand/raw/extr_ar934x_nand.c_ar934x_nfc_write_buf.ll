; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_write_buf.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.ar934x_nfc = type { i32, i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @ar934x_nfc_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar934x_nfc_write_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar934x_nfc*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info* %9)
  store %struct.ar934x_nfc* %10, %struct.ar934x_nfc** %7, align 8
  %11 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %12 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %17 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %23 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %38 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %41 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %42, 3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32 %36, i32* %45, align 4
  %46 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %47 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %31
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %27

53:                                               ; preds = %27
  br label %81

54:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %77, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %66 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %69 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  store i32 %64, i32* %72, align 4
  %73 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %74 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %55

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80, %53
  ret void
}

declare dso_local %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
