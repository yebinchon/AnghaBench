; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/spi/extr_ar71xx_spi.c_spi_xfer.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/spi/extr_ar71xx_spi.c_spi_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_slave = type { i32 }
%struct.ar71xx_spi_slave = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"ar71xx_spi: spi_xfer: slave:%p bitlen:%08x dout:%p din:%p flags:%08x\0A\00", align 1
@SPI_XFER_BEGIN = common dso_local global i64 0, align 8
@SPI_FS_GPIO = common dso_local global i32 0, align 4
@AR71XX_SPI_BASE = common dso_local global i64 0, align 8
@SPI_REG_FS = common dso_local global i64 0, align 8
@SPI_IOC_CS_ALL = common dso_local global i32 0, align 4
@SPI_REG_IOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"ar71xx_spi: sending: data:%02x length:%d\0A\00", align 1
@SPI_IOC_DO = common dso_local global i32 0, align 4
@SPI_IOC_CLK = common dso_local global i32 0, align 4
@SPI_REG_RDS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"ar71xx_spi: received:%02x\0A\00", align 1
@SPI_XFER_END = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" ---> out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_xfer(%struct.spi_slave* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.spi_slave*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ar71xx_spi_slave*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.spi_slave* %0, %struct.spi_slave** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load %struct.spi_slave*, %struct.spi_slave** %6, align 8
  %21 = call %struct.ar71xx_spi_slave* @to_ar71xx_spi(%struct.spi_slave* %20)
  store %struct.ar71xx_spi_slave* %21, %struct.ar71xx_spi_slave** %11, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %13, align 8
  %26 = load i32, i32* %7, align 4
  %27 = udiv i32 %26, 8
  store i32 %27, i32* %17, align 4
  %28 = load %struct.spi_slave*, %struct.spi_slave** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 (i8*, ...) @PRINTD(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), %struct.spi_slave* %28, i32 %29, i8* %30, i8* %31, i64 %32)
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @SPI_XFER_BEGIN, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %5
  %39 = load i32, i32* @SPI_FS_GPIO, align 4
  %40 = load i64, i64* @AR71XX_SPI_BASE, align 8
  %41 = load i64, i64* @SPI_REG_FS, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @KSEG1ADDR(i64 %42)
  %44 = call i32 @__raw_writel(i32 %39, i32 %43)
  %45 = load i32, i32* @SPI_IOC_CS_ALL, align 4
  %46 = load i64, i64* @AR71XX_SPI_BASE, align 8
  %47 = load i64, i64* @SPI_REG_IOC, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @KSEG1ADDR(i64 %48)
  %50 = call i32 @__raw_writel(i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %38, %5
  %52 = load i32, i32* %7, align 4
  %53 = urem i32 %52, 8
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* @SPI_IOC_CS_ALL, align 4
  %61 = load %struct.spi_slave*, %struct.spi_slave** %6, align 8
  %62 = getelementptr inbounds %struct.spi_slave, %struct.spi_slave* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SPI_IOC_CS(i32 %63)
  %65 = xor i32 %64, -1
  %66 = and i32 %60, %65
  store i32 %66, i32* %18, align 4
  br label %67

67:                                               ; preds = %157, %59
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %17, align 4
  %70 = icmp ne i32 %68, 0
  br i1 %70, label %71, label %158

71:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %13, align 8
  %77 = load i32, i32* %75, align 4
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = sub nsw i32 8, %83
  %85 = load i32, i32* %14, align 4
  %86 = shl i32 %85, %84
  store i32 %86, i32* %14, align 4
  br label %88

87:                                               ; preds = %78
  store i32 8, i32* %15, align 4
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 (i8*, ...) @PRINTD(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* %15, align 4
  %93 = sub nsw i32 8, %92
  %94 = load i32, i32* %14, align 4
  %95 = shl i32 %94, %93
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %129, %88
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %96
  %100 = load i32, i32* %14, align 4
  %101 = and i32 %100, 128
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* @SPI_IOC_DO, align 4
  %105 = load i32, i32* %18, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %18, align 4
  br label %112

107:                                              ; preds = %99
  %108 = load i32, i32* @SPI_IOC_DO, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %18, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %18, align 4
  br label %112

112:                                              ; preds = %107, %103
  %113 = load i32, i32* %18, align 4
  %114 = load i64, i64* @AR71XX_SPI_BASE, align 8
  %115 = load i64, i64* @SPI_REG_IOC, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @KSEG1ADDR(i64 %116)
  %118 = call i32 @__raw_writel(i32 %113, i32 %117)
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @SPI_IOC_CLK, align 4
  %121 = or i32 %119, %120
  %122 = load i64, i64* @AR71XX_SPI_BASE, align 8
  %123 = load i64, i64* @SPI_REG_IOC, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @KSEG1ADDR(i64 %124)
  %126 = call i32 @__raw_writel(i32 %121, i32 %125)
  %127 = load i32, i32* %14, align 4
  %128 = shl i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %112
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %15, align 4
  br label %96

132:                                              ; preds = %96
  %133 = load i64, i64* @AR71XX_SPI_BASE, align 8
  %134 = load i64, i64* @SPI_REG_RDS, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @KSEG1ADDR(i64 %135)
  %137 = call i32 @__raw_readl(i32 %136)
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %19, align 4
  %139 = call i32 (i8*, ...) @PRINTD(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %12, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %157

142:                                              ; preds = %132
  %143 = load i32, i32* %16, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %19, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %12, align 8
  store i32 %146, i32* %147, align 4
  br label %156

149:                                              ; preds = %142
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %16, align 4
  %152 = sub nsw i32 8, %151
  %153 = shl i32 %150, %152
  %154 = load i32*, i32** %12, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %12, align 8
  store i32 %153, i32* %154, align 4
  br label %156

156:                                              ; preds = %149, %145
  br label %157

157:                                              ; preds = %156, %132
  br label %67

158:                                              ; preds = %67
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* @SPI_XFER_END, align 8
  %161 = and i64 %159, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %158
  %164 = load %struct.spi_slave*, %struct.spi_slave** %6, align 8
  %165 = getelementptr inbounds %struct.spi_slave, %struct.spi_slave* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @SPI_IOC_CS(i32 %166)
  %168 = load i64, i64* @AR71XX_SPI_BASE, align 8
  %169 = load i64, i64* @SPI_REG_IOC, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @KSEG1ADDR(i64 %170)
  %172 = call i32 @__raw_writel(i32 %167, i32 %171)
  %173 = load i32, i32* @SPI_IOC_CS_ALL, align 4
  %174 = load i64, i64* @AR71XX_SPI_BASE, align 8
  %175 = load i64, i64* @SPI_REG_IOC, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @KSEG1ADDR(i64 %176)
  %178 = call i32 @__raw_writel(i32 %173, i32 %177)
  %179 = load i64, i64* @AR71XX_SPI_BASE, align 8
  %180 = load i64, i64* @SPI_REG_FS, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @KSEG1ADDR(i64 %181)
  %183 = call i32 @__raw_writel(i32 0, i32 %182)
  br label %184

184:                                              ; preds = %163, %158
  %185 = call i32 (i8*, ...) @PRINTD(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.ar71xx_spi_slave* @to_ar71xx_spi(%struct.spi_slave*) #1

declare dso_local i32 @PRINTD(i8*, ...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @KSEG1ADDR(i64) #1

declare dso_local i32 @SPI_IOC_CS(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
