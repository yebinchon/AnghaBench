; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_vlan.c_mt753x_apply_vlan_config.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_vlan.c_mt753x_apply_vlan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MT753X_NUM_PORTS = common dso_local global i32 0, align 4
@PORT_MATRIX_M = common dso_local global i32 0, align 4
@SECURITY_MODE = common dso_local global i32 0, align 4
@MT753X_NUM_VLANS = common dso_local global i32 0, align 4
@STAG_VPID_S = common dso_local global i32 0, align 4
@VA_TRANSPARENT_PORT = common dso_local global i32 0, align 4
@VLAN_ATTR_S = common dso_local global i32 0, align 4
@GRP_PORT_VID_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt753x_apply_vlan_config(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MT753X_NUM_PORTS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @PCR(i32 %22)
  %24 = load i32, i32* @PORT_MATRIX_M, align 4
  %25 = load i32, i32* @SECURITY_MODE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %21, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %16

31:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %89, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MT753X_NUM_VLANS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %32
  %37 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %38 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %46 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %36
  br label %89

56:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @MT753X_NUM_PORTS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %85

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  %76 = shl i32 1, %75
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %84

79:                                               ; preds = %68
  %80 = load i32, i32* %4, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %74
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %57

88:                                               ; preds = %57
  br label %89

89:                                               ; preds = %88, %55
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %32

92:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %124, %92
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @MT753X_NUM_PORTS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %93
  %98 = load i32, i32* @STAG_VPID_S, align 4
  %99 = shl i32 33024, %98
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @BIT(i32 %101)
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %97
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @BIT(i32 %107)
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @STAG_VPID_S, align 4
  %113 = shl i32 33024, %112
  %114 = load i32, i32* @VA_TRANSPARENT_PORT, align 4
  %115 = load i32, i32* @VLAN_ATTR_S, align 4
  %116 = shl i32 %114, %115
  %117 = or i32 %113, %116
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %111, %105, %97
  %119 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @PVC(i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %119, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %93

127:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %137, %127
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @MT753X_NUM_VLANS, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @mt753x_write_vlan_entry(%struct.gsw_mt753x* %133, i32 %134, i32 %135, i32 0, i32 0)
  br label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %3, align 4
  br label %128

140:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %180, %140
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @MT753X_NUM_VLANS, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %183

145:                                              ; preds = %141
  %146 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %147 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %10, align 4
  %154 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %155 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %11, align 4
  %162 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %163 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %145
  %173 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @mt753x_write_vlan_entry(%struct.gsw_mt753x* %173, i32 %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %172, %145
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %3, align 4
  br label %141

183:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %236, %183
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @MT753X_NUM_PORTS, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %239

188:                                              ; preds = %184
  %189 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %190 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %189, i32 0, i32 1
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* @MT753X_NUM_VLANS, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %219

200:                                              ; preds = %188
  %201 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %202 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %201, i32 0, i32 0
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %200
  %211 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %212 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %211, i32 0, i32 0
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %14, align 4
  br label %219

219:                                              ; preds = %210, %200, %188
  %220 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @PPBV1(i32 %221)
  %223 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %220, i32 %222)
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* @GRP_PORT_VID_M, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %15, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %15, align 4
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %15, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %15, align 4
  %231 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %232 = load i32, i32* %3, align 4
  %233 = call i32 @PPBV1(i32 %232)
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %231, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %219
  %237 = load i32, i32* %3, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %3, align 4
  br label %184

239:                                              ; preds = %184
  ret void
}

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @PCR(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @PVC(i32) #1

declare dso_local i32 @mt753x_write_vlan_entry(%struct.gsw_mt753x*, i32, i32, i32, i32) #1

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @PPBV1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
