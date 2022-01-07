; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_hspi.c_spi_transaction.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_hspi.c_spi_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_USR_MOSI = common dso_local global i32 0, align 4
@SPI_USR_MISO = common dso_local global i32 0, align 4
@SPI_USR_COMMAND = common dso_local global i32 0, align 4
@SPI_USR_ADDR = common dso_local global i32 0, align 4
@SPI_USR_DUMMY = common dso_local global i32 0, align 4
@SPI_DOUTDIN = common dso_local global i32 0, align 4
@SPI_USR_ADDR_BITLEN = common dso_local global i32 0, align 4
@SPI_USR_ADDR_BITLEN_S = common dso_local global i32 0, align 4
@SPI_USR_MOSI_BITLEN = common dso_local global i32 0, align 4
@SPI_USR_MOSI_BITLEN_S = common dso_local global i32 0, align 4
@SPI_USR_MISO_BITLEN = common dso_local global i32 0, align 4
@SPI_USR_MISO_BITLEN_S = common dso_local global i32 0, align 4
@SPI_USR_DUMMY_CYCLELEN = common dso_local global i32 0, align 4
@SPI_USR_DUMMY_CYCLELEN_S = common dso_local global i32 0, align 4
@SPI_USR_COMMAND_BITLEN = common dso_local global i32 0, align 4
@SPI_USR_COMMAND_BITLEN_S = common dso_local global i32 0, align 4
@SPI_USR_COMMAND_VALUE = common dso_local global i32 0, align 4
@SPI_WR_BYTE_ORDER = common dso_local global i32 0, align 4
@SPI_USR = common dso_local global i32 0, align 4
@SPI_RD_BYTE_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_transaction(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  br label %22

22:                                               ; preds = %26, %9
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @spi_busy(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %22

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @SPI_USER(i32 %28)
  %30 = load i32, i32* @SPI_USR_MOSI, align 4
  %31 = load i32, i32* @SPI_USR_MISO, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SPI_USR_COMMAND, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SPI_USR_ADDR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SPI_USR_DUMMY, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @CLEAR_PERI_REG_MASK(i32 %29, i32 %38)
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %27
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @SPI_USER(i32 %46)
  %48 = load i32, i32* @SPI_DOUTDIN, align 4
  %49 = call i32 @SET_PERI_REG_MASK(i32 %47, i32 %48)
  br label %55

50:                                               ; preds = %42
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @SPI_USER(i32 %51)
  %53 = load i32, i32* @SPI_USR_MISO, align 4
  %54 = call i32 @SET_PERI_REG_MASK(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %27
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @SPI_USER(i32 %60)
  %62 = load i32, i32* @SPI_USR_DUMMY, align 4
  %63 = call i32 @SET_PERI_REG_MASK(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @SPI_USER1(i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @SPI_USR_ADDR_BITLEN, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @SPI_USR_ADDR_BITLEN_S, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %16, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* @SPI_USR_MOSI_BITLEN, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @SPI_USR_MOSI_BITLEN_S, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %72, %78
  %80 = load i32, i32* %18, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* @SPI_USR_MISO_BITLEN, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @SPI_USR_MISO_BITLEN_S, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %79, %85
  %87 = load i32, i32* %19, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* @SPI_USR_DUMMY_CYCLELEN, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @SPI_USR_DUMMY_CYCLELEN_S, align 4
  %92 = shl i32 %90, %91
  %93 = or i32 %86, %92
  %94 = call i32 @WRITE_PERI_REG(i32 %66, i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %64
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @SPI_USER(i32 %98)
  %100 = load i32, i32* @SPI_USR_COMMAND, align 4
  %101 = call i32 @SET_PERI_REG_MASK(i32 %99, i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 16, %103
  %105 = shl i32 %102, %104
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = ashr i32 %106, 8
  %108 = and i32 %107, 255
  %109 = load i32, i32* %20, align 4
  %110 = shl i32 %109, 8
  %111 = and i32 %110, 65280
  %112 = or i32 %108, %111
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @SPI_USER2(i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* @SPI_USR_COMMAND_BITLEN, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @SPI_USR_COMMAND_BITLEN_S, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* @SPI_USR_COMMAND_VALUE, align 4
  %123 = and i32 %121, %122
  %124 = or i32 %120, %123
  %125 = call i32 @WRITE_PERI_REG(i32 %114, i32 %124)
  br label %126

126:                                              ; preds = %97, %64
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @SPI_USER(i32 %130)
  %132 = load i32, i32* @SPI_USR_ADDR, align 4
  %133 = call i32 @SET_PERI_REG_MASK(i32 %131, i32 %132)
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @SPI_ADDR(i32 %134)
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sub nsw i32 32, %137
  %139 = shl i32 %136, %138
  %140 = call i32 @WRITE_PERI_REG(i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %129, %126
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %196

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @SPI_USER(i32 %145)
  %147 = load i32, i32* @SPI_USR_MOSI, align 4
  %148 = call i32 @SET_PERI_REG_MASK(i32 %146, i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @SPI_USER(i32 %149)
  %151 = call i32 @READ_PERI_REG(i32 %150)
  %152 = load i32, i32* @SPI_WR_BYTE_ORDER, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %144
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @SPI_W0(i32 %156)
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %16, align 4
  %160 = sub nsw i32 32, %159
  %161 = shl i32 %158, %160
  %162 = call i32 @WRITE_PERI_REG(i32 %157, i32 %161)
  br label %195

163:                                              ; preds = %144
  %164 = load i32, i32* %16, align 4
  %165 = srem i32 %164, 8
  store i32 %165, i32* %21, align 4
  %166 = load i32, i32* %21, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %189

168:                                              ; preds = %163
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @SPI_W0(i32 %169)
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %21, align 4
  %173 = sub nsw i32 %171, %172
  %174 = shl i32 -1, %173
  %175 = load i32, i32* %17, align 4
  %176 = and i32 %174, %175
  %177 = load i32, i32* %21, align 4
  %178 = sub nsw i32 8, %177
  %179 = shl i32 %176, %178
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* %21, align 4
  %182 = sub nsw i32 %180, %181
  %183 = sub nsw i32 32, %182
  %184 = lshr i32 -1, %183
  %185 = load i32, i32* %17, align 4
  %186 = and i32 %184, %185
  %187 = or i32 %179, %186
  %188 = call i32 @WRITE_PERI_REG(i32 %170, i32 %187)
  br label %194

189:                                              ; preds = %163
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @SPI_W0(i32 %190)
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @WRITE_PERI_REG(i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %189, %168
  br label %195

195:                                              ; preds = %194, %155
  br label %196

196:                                              ; preds = %195, %141
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @SPI_CMD(i32 %197)
  %199 = load i32, i32* @SPI_USR, align 4
  %200 = call i32 @SET_PERI_REG_MASK(i32 %198, i32 %199)
  %201 = load i32, i32* %18, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %227

203:                                              ; preds = %196
  br label %204

204:                                              ; preds = %208, %203
  %205 = load i32, i32* %11, align 4
  %206 = call i64 @spi_busy(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %204

209:                                              ; preds = %204
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @SPI_USER(i32 %210)
  %212 = call i32 @READ_PERI_REG(i32 %211)
  %213 = load i32, i32* @SPI_RD_BYTE_ORDER, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %209
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @SPI_W0(i32 %217)
  %219 = call i32 @READ_PERI_REG(i32 %218)
  %220 = load i32, i32* %18, align 4
  %221 = sub nsw i32 32, %220
  %222 = ashr i32 %219, %221
  store i32 %222, i32* %10, align 4
  br label %228

223:                                              ; preds = %209
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @SPI_W0(i32 %224)
  %226 = call i32 @READ_PERI_REG(i32 %225)
  store i32 %226, i32* %10, align 4
  br label %228

227:                                              ; preds = %196
  store i32 1, i32* %10, align 4
  br label %228

228:                                              ; preds = %227, %223, %216
  %229 = load i32, i32* %10, align 4
  ret i32 %229
}

declare dso_local i64 @spi_busy(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SPI_USER(i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @SPI_USER1(i32) #1

declare dso_local i32 @SPI_USER2(i32) #1

declare dso_local i32 @SPI_ADDR(i32) #1

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @SPI_W0(i32) #1

declare dso_local i32 @SPI_CMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
