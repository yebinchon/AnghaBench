; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_hci.c_hci_patch_send.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_hci.c_hci_patch_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_HEADER_SIZE = common dso_local global i32 0, align 4
@HCI_TYPE_PATCH = common dso_local global i32 0, align 4
@SIMPLE_LINK_HCI_PATCH_HEADER_SIZE = common dso_local global i32 0, align 4
@SL_PATCH_PORTION_SIZE = common dso_local global i32 0, align 4
@HCI_PATCH_HEADER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_patch_send(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @SPI_HEADER_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @SPI_HEADER_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* @HCI_TYPE_PATCH, align 4
  %22 = call i32 @UINT8_TO_STREAM(i32* %20, i32 %21)
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @UINT8_TO_STREAM(i32* %23, i32 %24)
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SIMPLE_LINK_HCI_PATCH_HEADER_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i32* @UINT16_TO_STREAM(i32* %26, i32 %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SL_PATCH_PORTION_SIZE, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32* @UINT16_TO_STREAM(i32* %35, i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32* @UINT16_TO_STREAM(i32* %38, i32 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @SPI_HEADER_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* @HCI_PATCH_HEADER_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @memcpy(i32* %47, i32* %48, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @HCI_PATCH_HEADER_SIZE, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @SpiWrite(i32* %51, i32 %54)
  br label %129

56:                                               ; preds = %4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @SL_PATCH_PORTION_SIZE, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @SIMPLE_LINK_HCI_PATCH_HEADER_SIZE, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @SIMPLE_LINK_HCI_PATCH_HEADER_SIZE, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = call i32* @UINT16_TO_STREAM(i32* %60, i32 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* @SL_PATCH_PORTION_SIZE, align 4
  %71 = call i32* @UINT16_TO_STREAM(i32* %69, i32 %70)
  store i32* %71, i32** %11, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* @SPI_HEADER_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* @HCI_PATCH_HEADER_SIZE, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @SL_PATCH_PORTION_SIZE, align 4
  %81 = call i32 @memcpy(i32* %78, i32* %79, i32 %80)
  %82 = load i32, i32* @SL_PATCH_PORTION_SIZE, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @SL_PATCH_PORTION_SIZE, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %7, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @SL_PATCH_PORTION_SIZE, align 4
  %91 = load i32, i32* @HCI_PATCH_HEADER_SIZE, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @SpiWrite(i32* %89, i32 %92)
  br label %94

94:                                               ; preds = %108, %56
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @SL_PATCH_PORTION_SIZE, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %108

103:                                              ; preds = %97
  %104 = load i32, i32* @SL_PATCH_PORTION_SIZE, align 4
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %103, %101
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* @SIMPLE_LINK_HCI_PATCH_HEADER_SIZE, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @memcpy(i32* %114, i32* %115, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %7, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i32 @SpiWrite(i32* %122, i32 %126)
  br label %94

128:                                              ; preds = %94
  br label %129

129:                                              ; preds = %128, %34
  ret void
}

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32* @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SpiWrite(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
