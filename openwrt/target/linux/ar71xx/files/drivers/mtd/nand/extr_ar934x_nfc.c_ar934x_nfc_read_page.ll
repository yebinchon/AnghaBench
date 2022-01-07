; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_read_page.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ar934x_nfc = type { i64, i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"read_page: page:%d oob:%d\0A\00", align 1
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@AR934X_NFC_REG_ECC_CTRL = common dso_local global i32 0, align 4
@AR934X_NFC_ECC_CTRL_ERR_UNCORRECT = common dso_local global i32 0, align 4
@AR934X_NFC_ECC_CTRL_ERR_CORRECT = common dso_local global i32 0, align 4
@AR934X_NFC_ECC_CTRL_ERR_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32, i32)* @ar934x_nfc_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_read_page(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ar934x_nfc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %19 = call %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info* %18)
  store %struct.ar934x_nfc* %19, %struct.ar934x_nfc** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @nfc_dbg(%struct.ar934x_nfc* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %25 = call i32 @ar934x_nfc_enable_hwecc(%struct.ar934x_nfc* %24)
  %26 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %27 = load i32, i32* @NAND_CMD_READ0, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ar934x_nfc_send_read(%struct.ar934x_nfc* %26, i32 %27, i32 0, i32 %28, i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %34 = call i32 @ar934x_nfc_disable_hwecc(%struct.ar934x_nfc* %33)
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %6, align 4
  br label %160

39:                                               ; preds = %5
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %42 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32* %40, i32* %43, i32 %46)
  %48 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %49 = load i32, i32* @AR934X_NFC_REG_ECC_CTRL, align 4
  %50 = call i32 @ar934x_nfc_rr(%struct.ar934x_nfc* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @AR934X_NFC_ECC_CTRL_ERR_UNCORRECT, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @AR934X_NFC_ECC_CTRL_ERR_CORRECT, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %39
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %59, %39
  %63 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %64 = load i32, i32* @NAND_CMD_READ0, align 4
  %65 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ar934x_nfc_send_read(%struct.ar934x_nfc* %63, i32 %64, i32 %67, i32 %68, i32 %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %17, align 4
  store i32 %76, i32* %6, align 4
  br label %160

77:                                               ; preds = %62
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %85 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %88 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memcpy(i32* %83, i32* %86, i32 %89)
  br label %91

91:                                               ; preds = %80, %77
  br label %92

92:                                               ; preds = %91, %59
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %92
  %96 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %97 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %100 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %104 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @is_all_ff(i32* %102, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %95
  %110 = load i32*, i32** %9, align 8
  %111 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %112 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @is_all_ff(i32* %110, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %109, %95
  %117 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %118 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %109
  br label %158

123:                                              ; preds = %92
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @AR934X_NFC_ECC_CTRL_ERR_OVER, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %133 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %137 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %135, %139
  store i32 %140, i32* %14, align 4
  br label %150

141:                                              ; preds = %126
  %142 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %143 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %146 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %144, %148
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %141, %131
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %153 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %151
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %150, %123
  br label %158

158:                                              ; preds = %157, %122
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %158, %75, %37
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info*) #1

declare dso_local i32 @nfc_dbg(%struct.ar934x_nfc*, i8*, i32, i32) #1

declare dso_local i32 @ar934x_nfc_enable_hwecc(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_send_read(%struct.ar934x_nfc*, i32, i32, i32, i32) #1

declare dso_local i32 @ar934x_nfc_disable_hwecc(%struct.ar934x_nfc*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ar934x_nfc_rr(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @is_all_ff(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
