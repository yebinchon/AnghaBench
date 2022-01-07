; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_init_tail.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_init_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, i32 }
%struct.ar934x_nfc = type { i32, i32, i32, i32, i32, %struct.nand_chip }
%struct.nand_chip = type { i32 }

@AR934X_NFC_REG_SPARE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unsupported OOB size: %d bytes\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_CUSTOM_SIZE_EN = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_BLOCK_SIZE_32 = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_BLOCK_SIZE_64 = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_BLOCK_SIZE_128 = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_BLOCK_SIZE_256 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported block size: %u\0A\00", align 1
@AR934X_NFC_CTRL_BLOCK_SIZE_S = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_PAGE_SIZE_256 = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_PAGE_SIZE_512 = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_PAGE_SIZE_1024 = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_PAGE_SIZE_2048 = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_PAGE_SIZE_4096 = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_PAGE_SIZE_8192 = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_PAGE_SIZE_16384 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unsupported write size: %d bytes\0A\00", align 1
@AR934X_NFC_CTRL_PAGE_SIZE_S = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_SMALL_PAGE = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_ADDR_CYCLE0_S = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_ADDR_CYCLE1_S = common dso_local global i32 0, align 4
@AR934X_NFC_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @ar934x_nfc_init_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_init_tail(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.ar934x_nfc*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = call %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info* %9)
  store %struct.ar934x_nfc* %10, %struct.ar934x_nfc** %4, align 8
  %11 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %12 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %11, i32 0, i32 5
  store %struct.nand_chip* %12, %struct.nand_chip** %5, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %23 [
    i32 16, label %16
    i32 64, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %1, %1, %1
  %17 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %18 = load i32, i32* @AR934X_NFC_REG_SPARE_SIZE, align 4
  %19 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %17, i32 %18, i32 %21)
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %25 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %204

33:                                               ; preds = %16
  %34 = load i32, i32* @AR934X_NFC_CTRL_CUSTOM_SIZE_EN, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  switch i32 %41, label %50 [
    i32 32, label %42
    i32 64, label %44
    i32 128, label %46
    i32 256, label %48
  ]

42:                                               ; preds = %33
  %43 = load i32, i32* @AR934X_NFC_CTRL_BLOCK_SIZE_32, align 4
  store i32 %43, i32* %7, align 4
  br label %64

44:                                               ; preds = %33
  %45 = load i32, i32* @AR934X_NFC_CTRL_BLOCK_SIZE_64, align 4
  store i32 %45, i32* %7, align 4
  br label %64

46:                                               ; preds = %33
  %47 = load i32, i32* @AR934X_NFC_CTRL_BLOCK_SIZE_128, align 4
  store i32 %47, i32* %7, align 4
  br label %64

48:                                               ; preds = %33
  %49 = load i32, i32* @AR934X_NFC_CTRL_BLOCK_SIZE_256, align 4
  store i32 %49, i32* %7, align 4
  br label %64

50:                                               ; preds = %33
  %51 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %52 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %55 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %56, %59
  %61 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %204

64:                                               ; preds = %48, %46, %44, %42
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @AR934X_NFC_CTRL_BLOCK_SIZE_S, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %91 [
    i32 256, label %73
    i32 512, label %77
    i32 1024, label %81
    i32 2048, label %83
    i32 4096, label %85
    i32 8192, label %87
    i32 16384, label %89
  ]

73:                                               ; preds = %64
  %74 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %75 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* @AR934X_NFC_CTRL_PAGE_SIZE_256, align 4
  store i32 %76, i32* %7, align 4
  br label %101

77:                                               ; preds = %64
  %78 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %79 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load i32, i32* @AR934X_NFC_CTRL_PAGE_SIZE_512, align 4
  store i32 %80, i32* %7, align 4
  br label %101

81:                                               ; preds = %64
  %82 = load i32, i32* @AR934X_NFC_CTRL_PAGE_SIZE_1024, align 4
  store i32 %82, i32* %7, align 4
  br label %101

83:                                               ; preds = %64
  %84 = load i32, i32* @AR934X_NFC_CTRL_PAGE_SIZE_2048, align 4
  store i32 %84, i32* %7, align 4
  br label %101

85:                                               ; preds = %64
  %86 = load i32, i32* @AR934X_NFC_CTRL_PAGE_SIZE_4096, align 4
  store i32 %86, i32* %7, align 4
  br label %101

87:                                               ; preds = %64
  %88 = load i32, i32* @AR934X_NFC_CTRL_PAGE_SIZE_8192, align 4
  store i32 %88, i32* %7, align 4
  br label %101

89:                                               ; preds = %64
  %90 = load i32, i32* @AR934X_NFC_CTRL_PAGE_SIZE_16384, align 4
  store i32 %90, i32* %7, align 4
  br label %101

91:                                               ; preds = %64
  %92 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %93 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %96 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @ENXIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %204

101:                                              ; preds = %89, %87, %85, %83, %81, %77, %73
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @AR934X_NFC_CTRL_PAGE_SIZE_S, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %108 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %141

111:                                              ; preds = %101
  %112 = load i32, i32* @AR934X_NFC_CTRL_SMALL_PAGE, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %116 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 33554432
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %121 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %120, i32 0, i32 1
  store i32 4, i32* %121, align 4
  %122 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %123 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %122, i32 0, i32 2
  store i32 3, i32* %123, align 4
  br label %140

124:                                              ; preds = %111
  %125 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %126 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %127, 131072
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %131 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %130, i32 0, i32 1
  store i32 3, i32* %131, align 4
  %132 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %133 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %132, i32 0, i32 2
  store i32 2, i32* %133, align 4
  br label %139

134:                                              ; preds = %124
  %135 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %136 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %135, i32 0, i32 1
  store i32 2, i32* %136, align 4
  %137 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %138 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %137, i32 0, i32 2
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %129
  br label %140

140:                                              ; preds = %139, %119
  br label %168

141:                                              ; preds = %101
  %142 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %143 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %144, 134217728
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %148 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %147, i32 0, i32 1
  store i32 5, i32* %148, align 4
  %149 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %150 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %149, i32 0, i32 2
  store i32 3, i32* %150, align 4
  br label %167

151:                                              ; preds = %141
  %152 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %153 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 524288
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %158 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %157, i32 0, i32 1
  store i32 4, i32* %158, align 4
  %159 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %160 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %159, i32 0, i32 2
  store i32 2, i32* %160, align 4
  br label %166

161:                                              ; preds = %151
  %162 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %163 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %162, i32 0, i32 1
  store i32 3, i32* %163, align 4
  %164 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %165 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %164, i32 0, i32 2
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %156
  br label %167

167:                                              ; preds = %166, %146
  br label %168

168:                                              ; preds = %167, %140
  %169 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %170 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @AR934X_NFC_CTRL_ADDR_CYCLE0_S, align 4
  %173 = shl i32 %171, %172
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %6, align 4
  %176 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %177 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @AR934X_NFC_CTRL_ADDR_CYCLE1_S, align 4
  %180 = shl i32 %178, %179
  %181 = load i32, i32* %6, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %185 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %187 = load i32, i32* @AR934X_NFC_REG_CTRL, align 4
  %188 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %189 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %186, i32 %187, i32 %190)
  %192 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %193 = call i32 @ar934x_nfc_free_buf(%struct.ar934x_nfc* %192)
  %194 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %4, align 8
  %195 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %196 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %199 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %197, %200
  %202 = call i32 @ar934x_nfc_alloc_buf(%struct.ar934x_nfc* %194, i32 %201)
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %168, %91, %50, %23
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info*) #1

declare dso_local i32 @ar934x_nfc_wr(%struct.ar934x_nfc*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ar934x_nfc_free_buf(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_alloc_buf(%struct.ar934x_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
