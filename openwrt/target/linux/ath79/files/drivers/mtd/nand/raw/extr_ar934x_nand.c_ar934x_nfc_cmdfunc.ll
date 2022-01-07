; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_cmdfunc.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_cmdfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.ar934x_nfc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nand_chip }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NAND_ECC_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"unsupported command: %x, column:%d page_addr=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32, i32)* @ar934x_nfc_cmdfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar934x_nfc_cmdfunc(%struct.mtd_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ar934x_nfc*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = call %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info* %11)
  store %struct.ar934x_nfc* %12, %struct.ar934x_nfc** %9, align 8
  %13 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %14 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %13, i32 0, i32 10
  store %struct.nand_chip* %14, %struct.nand_chip** %10, align 8
  %15 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %16 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 136
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %21 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %212 [
    i32 131, label %24
    i32 133, label %28
    i32 135, label %34
    i32 134, label %34
    i32 132, label %74
    i32 130, label %98
    i32 138, label %124
    i32 137, label %128
    i32 128, label %135
    i32 129, label %138
    i32 136, label %180
  ]

24:                                               ; preds = %22
  %25 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ar934x_nfc_send_cmd(%struct.ar934x_nfc* %25, i32 %26)
  br label %220

28:                                               ; preds = %22
  %29 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %30 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ar934x_nfc_send_readid(%struct.ar934x_nfc* %31, i32 %32)
  br label %220

34:                                               ; preds = %22, %22
  %35 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %36 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = call i32 @ar934x_nfc_send_read(%struct.ar934x_nfc* %40, i32 %41, i32 %42, i32 %43, i32 %50)
  br label %73

52:                                               ; preds = %34
  %53 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %60 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = call i32 @ar934x_nfc_send_read(%struct.ar934x_nfc* %53, i32 %54, i32 0, i32 %55, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %66 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %69 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %72 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %52, %39
  br label %220

74:                                               ; preds = %22
  %75 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %76 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %84 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ar934x_nfc_send_read(%struct.ar934x_nfc* %80, i32 132, i32 %81, i32 %82, i32 %85)
  br label %97

87:                                               ; preds = %74
  %88 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %89 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %90 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %94 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ar934x_nfc_send_read(%struct.ar934x_nfc* %88, i32 135, i32 %91, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %87, %79
  br label %220

98:                                               ; preds = %22
  %99 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %100 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @WARN_ON(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %220

105:                                              ; preds = %98
  %106 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %107 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %108 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %111 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %114 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %117 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %115, %118
  %120 = call i32 @ar934x_nfc_send_read(%struct.ar934x_nfc* %106, i32 %109, i32 0, i32 %112, i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %123 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %220

124:                                              ; preds = %22
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %127 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  br label %220

128:                                              ; preds = %22
  %129 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %132 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ar934x_nfc_send_erase(%struct.ar934x_nfc* %129, i32 %130, i32 -1, i32 %133)
  br label %220

135:                                              ; preds = %22
  %136 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %137 = call i32 @ar934x_nfc_read_status(%struct.ar934x_nfc* %136)
  br label %220

138:                                              ; preds = %22
  %139 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %140 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %170

143:                                              ; preds = %138
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %146 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp sge i32 %144, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %143
  %150 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %151 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %7, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %156 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %155, i32 0, i32 5
  store i32 132, i32* %156, align 4
  br label %169

157:                                              ; preds = %143
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 256
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %162 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %161, i32 0, i32 5
  store i32 135, i32* %162, align 4
  br label %168

163:                                              ; preds = %157
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %164, 256
  store i32 %165, i32* %7, align 4
  %166 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %167 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %166, i32 0, i32 5
  store i32 134, i32* %167, align 4
  br label %168

168:                                              ; preds = %163, %160
  br label %169

169:                                              ; preds = %168, %149
  br label %173

170:                                              ; preds = %138
  %171 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %172 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %171, i32 0, i32 5
  store i32 135, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %169
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %176 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %179 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 4
  br label %220

180:                                              ; preds = %22
  %181 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %182 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @NAND_ECC_HW, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %220

188:                                              ; preds = %180
  %189 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %190 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %195 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %196 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ar934x_nfc_send_cmd(%struct.ar934x_nfc* %194, i32 %197)
  br label %199

199:                                              ; preds = %193, %188
  %200 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %201 = load i32, i32* %6, align 4
  %202 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %203 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %206 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %209 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ar934x_nfc_send_write(%struct.ar934x_nfc* %200, i32 %201, i32 %204, i32 %207, i32 %210)
  br label %220

212:                                              ; preds = %22
  %213 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %9, align 8
  %214 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @dev_err(i32 %215, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %212, %199, %187, %173, %135, %128, %124, %105, %104, %97, %73, %28, %24
  ret void
}

declare dso_local %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info*) #1

declare dso_local i32 @ar934x_nfc_send_cmd(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @ar934x_nfc_send_readid(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @ar934x_nfc_send_read(%struct.ar934x_nfc*, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ar934x_nfc_send_erase(%struct.ar934x_nfc*, i32, i32, i32) #1

declare dso_local i32 @ar934x_nfc_read_status(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_send_write(%struct.ar934x_nfc*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
