; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5pcxx_nand_correct_data.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5pcxx_nand_correct_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.s5p_nand_host* }
%struct.s5p_nand_host = type { i64 }

@S5P_NFECCSTAT = common dso_local global i64 0, align 8
@S5P_NFECCSECSTAT = common dso_local global i64 0, align 8
@S5P_NFECCERL = common dso_local global i64 0, align 8
@S5P_NFECCERP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"ECC uncorrectable error detected:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*, i32*)* @s5pcxx_nand_correct_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pcxx_nand_correct_data(%struct.mtd_info* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nand_chip*, align 8
  %18 = alloca %struct.s5p_nand_host*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 0
  %21 = load %struct.nand_chip*, %struct.nand_chip** %20, align 8
  store %struct.nand_chip* %21, %struct.nand_chip** %17, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %17, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %23, align 8
  store %struct.s5p_nand_host* %24, %struct.s5p_nand_host** %18, align 8
  br label %25

25:                                               ; preds = %34, %4
  %26 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %18, align 8
  %27 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @S5P_NFECCSTAT, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  %32 = and i32 %31, -2147483648
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %25

35:                                               ; preds = %25
  %36 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %18, align 8
  %37 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @S5P_NFECCSECSTAT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  %42 = and i32 %41, 31
  store i32 %42, i32* %10, align 4
  %43 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %18, align 8
  %44 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @S5P_NFECCERL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl(i64 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %18, align 8
  %50 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @S5P_NFECCERL, align 8
  %53 = add nsw i64 %51, %52
  %54 = add nsw i64 %53, 4
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %18, align 8
  %57 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @S5P_NFECCERL, align 8
  %60 = add nsw i64 %58, %59
  %61 = add nsw i64 %60, 8
  %62 = call i32 @readl(i64 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %18, align 8
  %64 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @S5P_NFECCERL, align 8
  %67 = add nsw i64 %65, %66
  %68 = add nsw i64 %67, 12
  %69 = call i32 @readl(i64 %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %18, align 8
  %71 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @S5P_NFECCERP, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @readl(i64 %74)
  store i32 %75, i32* %15, align 4
  %76 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %18, align 8
  %77 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @S5P_NFECCERP, align 8
  %80 = add nsw i64 %78, %79
  %81 = add nsw i64 %80, 4
  %82 = call i32 @readl(i64 %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %10, align 4
  switch i32 %83, label %175 [
    i32 8, label %84
    i32 7, label %96
    i32 6, label %107
    i32 5, label %119
    i32 4, label %129
    i32 3, label %141
    i32 2, label %152
    i32 1, label %164
    i32 0, label %174
  ]

84:                                               ; preds = %35
  %85 = load i32, i32* %16, align 4
  %86 = ashr i32 %85, 24
  %87 = and i32 %86, 255
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %14, align 4
  %90 = ashr i32 %89, 16
  %91 = and i32 %90, 1023
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, %87
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %35, %84
  %97 = load i32, i32* %16, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %101, 1023
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, %99
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %35, %96
  %108 = load i32, i32* %16, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 255
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %13, align 4
  %113 = ashr i32 %112, 16
  %114 = and i32 %113, 1023
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %117, %110
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %35, %107
  %120 = load i32, i32* %16, align 4
  %121 = and i32 %120, 255
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %123, 1023
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %127, %121
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %35, %119
  %130 = load i32, i32* %15, align 4
  %131 = ashr i32 %130, 24
  %132 = and i32 %131, 255
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %12, align 4
  %135 = ashr i32 %134, 16
  %136 = and i32 %135, 1023
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %139, %132
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %35, %129
  %142 = load i32, i32* %15, align 4
  %143 = ashr i32 %142, 16
  %144 = and i32 %143, 255
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %12, align 4
  %147 = and i32 %146, 1023
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %150, %144
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %35, %141
  %153 = load i32, i32* %15, align 4
  %154 = ashr i32 %153, 8
  %155 = and i32 %154, 255
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %11, align 4
  %158 = ashr i32 %157, 16
  %159 = and i32 %158, 1023
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = xor i32 %162, %155
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %35, %152
  %165 = load i32, i32* %15, align 4
  %166 = and i32 %165, 255
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %11, align 4
  %169 = and i32 %168, 1023
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %172, %166
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %35, %164
  br label %178

175:                                              ; preds = %35
  store i32 -1, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %175, %174
  %179 = load i32, i32* %9, align 4
  ret i32 %179
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
