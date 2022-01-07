; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_encode_control_status.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_encode_control_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64 }

@DMA_CTRL_STATUS_PAUSE = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_FAIR_SHARE_ARB = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_SRC_DREQ_SHIFT = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_DEST_DREQ_SHIFT = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_RESET = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_INTR_CLEAR_ENABLE = common dso_local global i64 0, align 8
@OXNAS_DMA_SIDE_A = common dso_local global i64 0, align 8
@OXNAS_DMA_TRANSFER_MODE_BURST = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_TRANSFER_MODE_A = common dso_local global i64 0, align 8
@OXNAS_DMA_A_TO_A = common dso_local global i64 0, align 8
@OXNAS_DMA_A_TO_B = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_TRANSFER_MODE_B = common dso_local global i64 0, align 8
@OXNAS_DMA_B_TO_A = common dso_local global i64 0, align 8
@OXNAS_DMA_B_TO_B = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_DIR_SHIFT = common dso_local global i64 0, align 8
@OXNAS_DMA_MODE_FIXED = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_SRC_ADR_MODE = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_SOURCE_ADDRESS_FIXED = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_DEST_ADR_MODE = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_DESTINATION_ADDRESS_FIXED = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_SRC_WIDTH_SHIFT = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_DEST_WIDTH_SHIFT = common dso_local global i64 0, align 8
@DMA_CTRL_STATUS_STARVE_LOW_PRIORITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @encode_control_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encode_control_status(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i64, i64* @DMA_CTRL_STATUS_PAUSE, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @DMA_CTRL_STATUS_FAIR_SHARE_ARB, align 8
  %9 = load i64, i64* %5, align 8
  %10 = or i64 %9, %8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DMA_CTRL_STATUS_SRC_DREQ_SHIFT, align 8
  %15 = shl i64 %13, %14
  %16 = load i64, i64* %5, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMA_CTRL_STATUS_DEST_DREQ_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = load i64, i64* %5, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* @DMA_CTRL_STATUS_RESET, align 8
  %26 = xor i64 %25, -1
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* @DMA_CTRL_STATUS_INTR_CLEAR_ENABLE, align 8
  %30 = load i64, i64* %5, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OXNAS_DMA_SIDE_A, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OXNAS_DMA_TRANSFER_MODE_BURST, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i64, i64* @DMA_CTRL_STATUS_TRANSFER_MODE_A, align 8
  %45 = load i64, i64* %5, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %52

47:                                               ; preds = %37
  %48 = load i64, i64* @DMA_CTRL_STATUS_TRANSFER_MODE_A, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %5, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %47, %43
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @OXNAS_DMA_SIDE_A, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i64, i64* @OXNAS_DMA_A_TO_A, align 8
  store i64 %59, i64* %6, align 8
  br label %77

60:                                               ; preds = %52
  %61 = load i64, i64* @OXNAS_DMA_A_TO_B, align 8
  store i64 %61, i64* %6, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @OXNAS_DMA_TRANSFER_MODE_BURST, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i64, i64* @DMA_CTRL_STATUS_TRANSFER_MODE_B, align 8
  %69 = load i64, i64* %5, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %5, align 8
  br label %76

71:                                               ; preds = %60
  %72 = load i64, i64* @DMA_CTRL_STATUS_TRANSFER_MODE_B, align 8
  %73 = xor i64 %72, -1
  %74 = load i64, i64* %5, align 8
  %75 = and i64 %74, %73
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %71, %67
  br label %77

77:                                               ; preds = %76, %58
  br label %119

78:                                               ; preds = %2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @OXNAS_DMA_TRANSFER_MODE_BURST, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i64, i64* @DMA_CTRL_STATUS_TRANSFER_MODE_B, align 8
  %86 = load i64, i64* %5, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %5, align 8
  br label %93

88:                                               ; preds = %78
  %89 = load i64, i64* @DMA_CTRL_STATUS_TRANSFER_MODE_B, align 8
  %90 = xor i64 %89, -1
  %91 = load i64, i64* %5, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %88, %84
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @OXNAS_DMA_SIDE_A, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %93
  %100 = load i64, i64* @OXNAS_DMA_B_TO_A, align 8
  store i64 %100, i64* %6, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @OXNAS_DMA_TRANSFER_MODE_BURST, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i64, i64* @DMA_CTRL_STATUS_TRANSFER_MODE_A, align 8
  %108 = load i64, i64* %5, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %5, align 8
  br label %115

110:                                              ; preds = %99
  %111 = load i64, i64* @DMA_CTRL_STATUS_TRANSFER_MODE_A, align 8
  %112 = xor i64 %111, -1
  %113 = load i64, i64* %5, align 8
  %114 = and i64 %113, %112
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %110, %106
  br label %118

116:                                              ; preds = %93
  %117 = load i64, i64* @OXNAS_DMA_B_TO_B, align 8
  store i64 %117, i64* %6, align 8
  br label %118

118:                                              ; preds = %116, %115
  br label %119

119:                                              ; preds = %118, %77
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* @DMA_CTRL_STATUS_DIR_SHIFT, align 8
  %122 = shl i64 %120, %121
  %123 = load i64, i64* %5, align 8
  %124 = or i64 %123, %122
  store i64 %124, i64* %5, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @OXNAS_DMA_MODE_FIXED, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %119
  %131 = load i64, i64* @DMA_CTRL_STATUS_SRC_ADR_MODE, align 8
  %132 = xor i64 %131, -1
  %133 = load i64, i64* %5, align 8
  %134 = and i64 %133, %132
  store i64 %134, i64* %5, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load i64, i64* @DMA_CTRL_STATUS_SOURCE_ADDRESS_FIXED, align 8
  %141 = load i64, i64* %5, align 8
  %142 = or i64 %141, %140
  store i64 %142, i64* %5, align 8
  br label %148

143:                                              ; preds = %130
  %144 = load i64, i64* @DMA_CTRL_STATUS_SOURCE_ADDRESS_FIXED, align 8
  %145 = xor i64 %144, -1
  %146 = load i64, i64* %5, align 8
  %147 = and i64 %146, %145
  store i64 %147, i64* %5, align 8
  br label %148

148:                                              ; preds = %143, %139
  br label %157

149:                                              ; preds = %119
  %150 = load i64, i64* @DMA_CTRL_STATUS_SRC_ADR_MODE, align 8
  %151 = load i64, i64* %5, align 8
  %152 = or i64 %151, %150
  store i64 %152, i64* %5, align 8
  %153 = load i64, i64* @DMA_CTRL_STATUS_SOURCE_ADDRESS_FIXED, align 8
  %154 = xor i64 %153, -1
  %155 = load i64, i64* %5, align 8
  %156 = and i64 %155, %154
  store i64 %156, i64* %5, align 8
  br label %157

157:                                              ; preds = %149, %148
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @OXNAS_DMA_MODE_FIXED, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %157
  %164 = load i64, i64* @DMA_CTRL_STATUS_DEST_ADR_MODE, align 8
  %165 = xor i64 %164, -1
  %166 = load i64, i64* %5, align 8
  %167 = and i64 %166, %165
  store i64 %167, i64* %5, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %163
  %173 = load i64, i64* @DMA_CTRL_STATUS_DESTINATION_ADDRESS_FIXED, align 8
  %174 = load i64, i64* %5, align 8
  %175 = or i64 %174, %173
  store i64 %175, i64* %5, align 8
  br label %181

176:                                              ; preds = %163
  %177 = load i64, i64* @DMA_CTRL_STATUS_DESTINATION_ADDRESS_FIXED, align 8
  %178 = xor i64 %177, -1
  %179 = load i64, i64* %5, align 8
  %180 = and i64 %179, %178
  store i64 %180, i64* %5, align 8
  br label %181

181:                                              ; preds = %176, %172
  br label %190

182:                                              ; preds = %157
  %183 = load i64, i64* @DMA_CTRL_STATUS_DEST_ADR_MODE, align 8
  %184 = load i64, i64* %5, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %5, align 8
  %186 = load i64, i64* @DMA_CTRL_STATUS_DESTINATION_ADDRESS_FIXED, align 8
  %187 = xor i64 %186, -1
  %188 = load i64, i64* %5, align 8
  %189 = and i64 %188, %187
  store i64 %189, i64* %5, align 8
  br label %190

190:                                              ; preds = %182, %181
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @DMA_CTRL_STATUS_SRC_WIDTH_SHIFT, align 8
  %195 = shl i64 %193, %194
  %196 = load i64, i64* %5, align 8
  %197 = or i64 %196, %195
  store i64 %197, i64* %5, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @DMA_CTRL_STATUS_DEST_WIDTH_SHIFT, align 8
  %202 = shl i64 %200, %201
  %203 = load i64, i64* %5, align 8
  %204 = or i64 %203, %202
  store i64 %204, i64* %5, align 8
  %205 = load i64, i64* @DMA_CTRL_STATUS_STARVE_LOW_PRIORITY, align 8
  %206 = xor i64 %205, -1
  %207 = load i64, i64* %5, align 8
  %208 = and i64 %207, %206
  store i64 %208, i64* %5, align 8
  %209 = load i64, i64* %5, align 8
  ret i64 %209
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
