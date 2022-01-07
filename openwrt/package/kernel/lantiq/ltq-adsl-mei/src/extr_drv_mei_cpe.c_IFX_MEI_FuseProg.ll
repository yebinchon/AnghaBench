; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_FuseProg.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_FuseProg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LTQ_RCU_RST = common dso_local global i64 0, align 8
@RX_DILV_ADDR_BIT_MASK = common dso_local global i32 0, align 4
@ADSL_DILV_BASE = common dso_local global i32 0, align 4
@IRAM0_ADDR_BIT_MASK = common dso_local global i32 0, align 4
@IRAM0_BASE = common dso_local global i32 0, align 4
@IRAM1_ADDR_BIT_MASK = common dso_local global i32 0, align 4
@IRAM1_BASE = common dso_local global i32 0, align 4
@BRAM_ADDR_BIT_MASK = common dso_local global i32 0, align 4
@BRAM_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @IFX_MEI_FuseProg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IFX_MEI_FuseProg(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* @LTQ_RCU_RST, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i32 @IFX_MEI_LongWordRead(i32 %7, i32* %3)
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 268435456
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i64, i64* @LTQ_RCU_RST, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @IFX_MEI_LongWordRead(i32 %15, i32* %3)
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 16384
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %146

22:                                               ; preds = %13
  br label %9

23:                                               ; preds = %9
  %24 = load i64, i64* @LTQ_RCU_RST, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @IFX_MEI_LongWordRead(i32 %25, i32* %3)
  %27 = load i64, i64* @LTQ_RCU_RST, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, 16777216
  %31 = call i32 @IFX_MEI_LongWordWrite(i32 %28, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @IFX_MEI_FuseInit(i32* %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %131, %23
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %134

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = trunc i64 %39 to i32
  %41 = mul nsw i32 %40, 4
  %42 = call i32 @IFX_MEI_LongWordRead(i32 %41, i32* %4)
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 983040
  switch i32 %44, label %129 [
    i32 524288, label %45
    i32 589824, label %55
    i32 655360, label %66
    i32 720896, label %76
    i32 786432, label %87
    i32 851968, label %97
    i32 917504, label %108
    i32 983040, label %118
  ]

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @RX_DILV_ADDR_BIT_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @RX_DILV_ADDR_BIT_MASK, align 4
  %50 = add nsw i32 %49, 1
  %51 = or i32 %48, %50
  store i32 %51, i32* %3, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @ADSL_DILV_BASE, align 4
  %54 = call i32 @IFX_MEI_DMAWrite(i32* %52, i32 %53, i32* %3, i32 1)
  br label %130

55:                                               ; preds = %37
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @RX_DILV_ADDR_BIT_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @RX_DILV_ADDR_BIT_MASK, align 4
  %60 = add nsw i32 %59, 1
  %61 = or i32 %58, %60
  store i32 %61, i32* %3, align 4
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @ADSL_DILV_BASE, align 4
  %64 = add nsw i32 %63, 4
  %65 = call i32 @IFX_MEI_DMAWrite(i32* %62, i32 %64, i32* %3, i32 1)
  br label %130

66:                                               ; preds = %37
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @IRAM0_ADDR_BIT_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @IRAM0_ADDR_BIT_MASK, align 4
  %71 = add nsw i32 %70, 1
  %72 = or i32 %69, %71
  store i32 %72, i32* %3, align 4
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* @IRAM0_BASE, align 4
  %75 = call i32 @IFX_MEI_DMAWrite(i32* %73, i32 %74, i32* %3, i32 1)
  br label %130

76:                                               ; preds = %37
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @IRAM0_ADDR_BIT_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @IRAM0_ADDR_BIT_MASK, align 4
  %81 = add nsw i32 %80, 1
  %82 = or i32 %79, %81
  store i32 %82, i32* %3, align 4
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* @IRAM0_BASE, align 4
  %85 = add nsw i32 %84, 4
  %86 = call i32 @IFX_MEI_DMAWrite(i32* %83, i32 %85, i32* %3, i32 1)
  br label %130

87:                                               ; preds = %37
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @IRAM1_ADDR_BIT_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @IRAM1_ADDR_BIT_MASK, align 4
  %92 = add nsw i32 %91, 1
  %93 = or i32 %90, %92
  store i32 %93, i32* %3, align 4
  %94 = load i32*, i32** %2, align 8
  %95 = load i32, i32* @IRAM1_BASE, align 4
  %96 = call i32 @IFX_MEI_DMAWrite(i32* %94, i32 %95, i32* %3, i32 1)
  br label %130

97:                                               ; preds = %37
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @IRAM1_ADDR_BIT_MASK, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @IRAM1_ADDR_BIT_MASK, align 4
  %102 = add nsw i32 %101, 1
  %103 = or i32 %100, %102
  store i32 %103, i32* %3, align 4
  %104 = load i32*, i32** %2, align 8
  %105 = load i32, i32* @IRAM1_BASE, align 4
  %106 = add nsw i32 %105, 4
  %107 = call i32 @IFX_MEI_DMAWrite(i32* %104, i32 %106, i32* %3, i32 1)
  br label %130

108:                                              ; preds = %37
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @BRAM_ADDR_BIT_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @BRAM_ADDR_BIT_MASK, align 4
  %113 = add nsw i32 %112, 1
  %114 = or i32 %111, %113
  store i32 %114, i32* %3, align 4
  %115 = load i32*, i32** %2, align 8
  %116 = load i32, i32* @BRAM_BASE, align 4
  %117 = call i32 @IFX_MEI_DMAWrite(i32* %115, i32 %116, i32* %3, i32 1)
  br label %130

118:                                              ; preds = %37
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @BRAM_ADDR_BIT_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @BRAM_ADDR_BIT_MASK, align 4
  %123 = add nsw i32 %122, 1
  %124 = or i32 %121, %123
  store i32 %124, i32* %3, align 4
  %125 = load i32*, i32** %2, align 8
  %126 = load i32, i32* @BRAM_BASE, align 4
  %127 = add nsw i32 %126, 4
  %128 = call i32 @IFX_MEI_DMAWrite(i32* %125, i32 %127, i32* %3, i32 1)
  br label %130

129:                                              ; preds = %37
  br label %130

130:                                              ; preds = %129, %118, %108, %97, %87, %76, %66, %55, %45
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %34

134:                                              ; preds = %34
  %135 = load i64, i64* @LTQ_RCU_RST, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 @IFX_MEI_LongWordRead(i32 %136, i32* %3)
  %138 = load i64, i64* @LTQ_RCU_RST, align 8
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* %3, align 4
  %141 = and i32 %140, -16777217
  %142 = call i32 @IFX_MEI_LongWordWrite(i32 %139, i32 %141)
  %143 = load i64, i64* @LTQ_RCU_RST, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @IFX_MEI_LongWordRead(i32 %144, i32* %3)
  br label %146

146:                                              ; preds = %134, %21
  ret void
}

declare dso_local i32 @IFX_MEI_LongWordRead(i32, i32*) #1

declare dso_local i32 @IFX_MEI_LongWordWrite(i32, i32) #1

declare dso_local i32 @IFX_MEI_FuseInit(i32*) #1

declare dso_local i32 @IFX_MEI_DMAWrite(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
