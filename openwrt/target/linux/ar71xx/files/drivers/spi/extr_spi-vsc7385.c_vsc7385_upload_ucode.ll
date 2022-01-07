; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-vsc7385.c_vsc7385_upload_ucode.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-vsc7385.c_vsc7385_upload_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc7385 = type { %struct.TYPE_2__*, %struct.spi_device* }
%struct.TYPE_2__ = type { i8* }
%struct.spi_device = type { i32 }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"vsc7385_ucode.bin\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"request_firmware failed, err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"uploading microcode...\0A\00", align 1
@VSC73XX_BLOCK_SYSTEM = common dso_local global i32 0, align 4
@VSC73XX_ICPU_SRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"could not load microcode, err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"verifying microcode...\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"could not read microcode %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"bad val read: %04x : %02x  %02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"verify error: %04x : %02x  %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"microcode verification failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"microcode uploaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsc7385*)* @vsc7385_upload_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc7385_upload_ucode(%struct.vsc7385* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsc7385*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vsc7385* %0, %struct.vsc7385** %3, align 8
  %12 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %13 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %12, i32 0, i32 1
  %14 = load %struct.spi_device*, %struct.spi_device** %13, align 8
  store %struct.spi_device* %14, %struct.spi_device** %4, align 8
  %15 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %16 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %23 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi i8* [ %26, %21 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %27 ]
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = call i32 @request_firmware(%struct.firmware** %5, i8* %30, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %2, align 4
  br label %181

42:                                               ; preds = %28
  %43 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %44 = call i32 @vsc7385_icpu_stop(%struct.vsc7385* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %177

48:                                               ; preds = %42
  %49 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %50 = call i32 @vsc7385_icpu_reset(%struct.vsc7385* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %177

54:                                               ; preds = %48
  %55 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 0
  %57 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.firmware*, %struct.firmware** %5, align 8
  %59 = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %85, %54
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.firmware*, %struct.firmware** %5, align 8
  %65 = getelementptr inbounds %struct.firmware, %struct.firmware* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %62
  %69 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %70 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %71 = load i32, i32* @VSC73XX_ICPU_SRAM, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  %74 = load i8, i8* %72, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 @vsc7385_write(%struct.vsc7385* %69, i32 %70, i32 0, i32 %71, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 0
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %177

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %62

88:                                               ; preds = %62
  %89 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %90 = call i32 @vsc7385_icpu_reset(%struct.vsc7385* %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %177

94:                                               ; preds = %88
  %95 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %96 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %95, i32 0, i32 0
  %97 = call i32 @dev_info(i32* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.firmware*, %struct.firmware** %5, align 8
  %99 = getelementptr inbounds %struct.firmware, %struct.firmware* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %159, %94
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.firmware*, %struct.firmware** %5, align 8
  %105 = getelementptr inbounds %struct.firmware, %struct.firmware* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %162

108:                                              ; preds = %102
  %109 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %110 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %111 = load i32, i32* @VSC73XX_ICPU_SRAM, align 4
  %112 = call i32 @vsc7385_read(%struct.vsc7385* %109, i32 %110, i32 0, i32 %111, i32* %8)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %117 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %116, i32 0, i32 0
  %118 = load i32, i32* %11, align 4
  %119 = call i32 (i32*, i8*, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  br label %177

120:                                              ; preds = %108
  %121 = load i32, i32* %8, align 4
  %122 = icmp ugt i32 %121, 255
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %125 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %124, i32 0, i32 0
  %126 = load i32, i32* %9, align 4
  %127 = load i8*, i8** %7, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %126, i32 %129, i32 %130)
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %11, align 4
  br label %177

134:                                              ; preds = %120
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, 255
  %137 = load i8*, i8** %7, align 8
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %136, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %134
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  %144 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %145 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %144, i32 0, i32 0
  %146 = load i32, i32* %9, align 4
  %147 = load i8*, i8** %7, align 8
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %146, i32 %149, i32 %150)
  %152 = load i32, i32* %10, align 4
  %153 = icmp sgt i32 %152, 4
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  br label %162

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155, %134
  %157 = load i8*, i8** %7, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %7, align 8
  br label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %102

162:                                              ; preds = %154, %102
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %167 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %166, i32 0, i32 0
  %168 = call i32 (i32*, i8*, ...) @dev_err(i32* %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %169 = load i32, i32* @EIO, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %11, align 4
  br label %177

171:                                              ; preds = %162
  %172 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %173 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %172, i32 0, i32 0
  %174 = call i32 @dev_info(i32* %173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %175 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %176 = call i32 @vsc7385_icpu_start(%struct.vsc7385* %175)
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %171, %165, %123, %115, %93, %79, %53, %47
  %178 = load %struct.firmware*, %struct.firmware** %5, align 8
  %179 = call i32 @release_firmware(%struct.firmware* %178)
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %177, %36
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @vsc7385_icpu_stop(%struct.vsc7385*) #1

declare dso_local i32 @vsc7385_icpu_reset(%struct.vsc7385*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @vsc7385_write(%struct.vsc7385*, i32, i32, i32, i32) #1

declare dso_local i32 @vsc7385_read(%struct.vsc7385*, i32, i32, i32, i32*) #1

declare dso_local i32 @vsc7385_icpu_start(%struct.vsc7385*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
