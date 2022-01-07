; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_mast_transaction.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_mast_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_USR = common dso_local global i32 0, align 4
@SPI_USR_COMMAND = common dso_local global i32 0, align 4
@SPI_USR_ADDR = common dso_local global i32 0, align 4
@SPI_USR_MOSI = common dso_local global i32 0, align 4
@SPI_USR_DUMMY = common dso_local global i32 0, align 4
@SPI_USR_MISO = common dso_local global i32 0, align 4
@SPI_DOUTDIN = common dso_local global i32 0, align 4
@SPI_USR_ADDR_BITLEN = common dso_local global i32 0, align 4
@SPI_USR_ADDR_BITLEN_S = common dso_local global i32 0, align 4
@SPI_USR_MOSI_BITLEN = common dso_local global i32 0, align 4
@SPI_USR_MOSI_BITLEN_S = common dso_local global i32 0, align 4
@SPI_USR_DUMMY_CYCLELEN = common dso_local global i32 0, align 4
@SPI_USR_DUMMY_CYCLELEN_S = common dso_local global i32 0, align 4
@SPI_USR_MISO_BITLEN = common dso_local global i32 0, align 4
@SPI_USR_MISO_BITLEN_S = common dso_local global i32 0, align 4
@SPI_USR_COMMAND_BITLEN = common dso_local global i32 0, align 4
@SPI_USR_COMMAND_BITLEN_S = common dso_local global i32 0, align 4
@SPI_USR_COMMAND_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_mast_transaction(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  br label %165

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %29, %21
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @SPI_CMD(i32 %23)
  %25 = call i32 @READ_PERI_REG(i32 %24)
  %26 = load i32, i32* @SPI_USR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %22

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @SPI_USER(i32 %31)
  %33 = load i32, i32* @SPI_USR_COMMAND, align 4
  %34 = load i32, i32* @SPI_USR_ADDR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SPI_USR_MOSI, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SPI_USR_DUMMY, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SPI_USR_MISO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SPI_DOUTDIN, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @CLEAR_PERI_REG_MASK(i32 %32, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @SPI_USER1(i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @SPI_USR_ADDR_BITLEN, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @SPI_USR_ADDR_BITLEN_S, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* @SPI_USR_MOSI_BITLEN, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @SPI_USR_MOSI_BITLEN_S, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %52, %58
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* @SPI_USR_DUMMY_CYCLELEN, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @SPI_USR_DUMMY_CYCLELEN_S, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %59, %65
  %67 = load i32, i32* %16, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @SPI_USR_MISO_BITLEN, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @SPI_USR_MISO_BITLEN_S, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %66, %72
  %74 = call i32 @WRITE_PERI_REG(i32 %46, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %30
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 16, %79
  %81 = shl i32 %78, %80
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = ashr i32 %82, 8
  %84 = load i32, i32* %17, align 4
  %85 = shl i32 %84, 8
  %86 = or i32 %83, %85
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @SPI_USER2(i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* @SPI_USR_COMMAND_BITLEN, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @SPI_USR_COMMAND_BITLEN_S, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @SPI_USR_COMMAND_VALUE, align 4
  %97 = and i32 %95, %96
  %98 = or i32 %94, %97
  %99 = call i32 @WRITE_PERI_REG(i32 %88, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @SPI_USER(i32 %100)
  %102 = load i32, i32* @SPI_USR_COMMAND, align 4
  %103 = call i32 @SET_PERI_REG_MASK(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %77, %30
  %105 = load i32, i32* %12, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @SPI_ADDR(i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 32, %111
  %113 = shl i32 %110, %112
  %114 = call i32 @WRITE_PERI_REG(i32 %109, i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @SPI_USER(i32 %115)
  %117 = load i32, i32* @SPI_USR_ADDR, align 4
  %118 = call i32 @SET_PERI_REG_MASK(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %107, %104
  %120 = load i32, i32* %14, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @SPI_USER(i32 %123)
  %125 = load i32, i32* @SPI_USR_MOSI, align 4
  %126 = call i32 @SET_PERI_REG_MASK(i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %119
  %128 = load i32, i32* %15, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @SPI_USER(i32 %131)
  %133 = load i32, i32* @SPI_USR_DUMMY, align 4
  %134 = call i32 @SET_PERI_REG_MASK(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %127
  %136 = load i32, i32* %16, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @SPI_USER(i32 %139)
  %141 = load i32, i32* @SPI_USR_MISO, align 4
  %142 = call i32 @SET_PERI_REG_MASK(i32 %140, i32 %141)
  br label %152

143:                                              ; preds = %135
  %144 = load i32, i32* %16, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @SPI_USER(i32 %147)
  %149 = load i32, i32* @SPI_DOUTDIN, align 4
  %150 = call i32 @SET_PERI_REG_MASK(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %143
  br label %152

152:                                              ; preds = %151, %138
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @SPI_CMD(i32 %153)
  %155 = load i32, i32* @SPI_USR, align 4
  %156 = call i32 @SET_PERI_REG_MASK(i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %164, %152
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @SPI_CMD(i32 %158)
  %160 = call i32 @READ_PERI_REG(i32 %159)
  %161 = load i32, i32* @SPI_USR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %157

165:                                              ; preds = %20, %157
  ret void
}

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @SPI_CMD(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_USER(i32) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @SPI_USER1(i32) #1

declare dso_local i32 @SPI_USER2(i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
