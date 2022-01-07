; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5pcxx_nand_read_page_hwecc.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s5pcxx_nand_read_page_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_3__, i32 (%struct.mtd_info.5*, i32*, i32)*, i32 (%struct.mtd_info.6*, i32*, i32)*, i32 (%struct.mtd_info.7*, i32, i32, i32)*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 (%struct.mtd_info.0*, i32*, i32*, i32*)*, i32 (%struct.mtd_info.1*, i32*, i32*)*, i32 (%struct.mtd_info.2*, i32)*, i32 (%struct.mtd_info.3*, %struct.nand_chip.4*, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque
%struct.mtd_info.3 = type opaque
%struct.nand_chip.4 = type opaque
%struct.mtd_info.5 = type opaque
%struct.mtd_info.6 = type opaque
%struct.mtd_info.7 = type opaque
%struct.mtd_oob_region = type { i32 }

@NAND_CMD_RNDOUT = common dso_local global i32 0, align 4
@NAND_ECC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32, i32)* @s5pcxx_nand_read_page_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pcxx_nand_read_page_hwecc(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mtd_oob_region, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = bitcast %struct.mtd_oob_region* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %13, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %15, align 4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  %35 = load i32 (%struct.mtd_info.3*, %struct.nand_chip.4*, i32)*, i32 (%struct.mtd_info.3*, %struct.nand_chip.4*, i32)** %34, align 8
  %36 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %37 = bitcast %struct.mtd_info* %36 to %struct.mtd_info.3*
  %38 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %39 = bitcast %struct.nand_chip* %38 to %struct.nand_chip.4*
  %40 = load i32, i32* %10, align 4
  %41 = call i32 %35(%struct.mtd_info.3* %37, %struct.nand_chip.4* %39, i32 %40)
  %42 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %43 = call i32 @mtd_ooblayout_ecc(%struct.mtd_info* %42, i32 0, %struct.mtd_oob_region* %11)
  %44 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32* %50, i32** %16, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %121, %5
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %134

54:                                               ; preds = %51
  %55 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 3
  %57 = load i32 (%struct.mtd_info.7*, i32, i32, i32)*, i32 (%struct.mtd_info.7*, i32, i32, i32)** %56, align 8
  %58 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %59 = bitcast %struct.mtd_info* %58 to %struct.mtd_info.7*
  %60 = load i32, i32* @NAND_CMD_RNDOUT, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call i32 %57(%struct.mtd_info.7* %59, i32 %60, i32 %61, i32 -1)
  %63 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = load i32 (%struct.mtd_info.2*, i32)*, i32 (%struct.mtd_info.2*, i32)** %65, align 8
  %67 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %68 = bitcast %struct.mtd_info* %67 to %struct.mtd_info.2*
  %69 = load i32, i32* @NAND_ECC_READ, align 4
  %70 = call i32 %66(%struct.mtd_info.2* %68, i32 %69)
  %71 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %72 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 2
  %73 = load i32 (%struct.mtd_info.6*, i32*, i32)*, i32 (%struct.mtd_info.6*, i32*, i32)** %72, align 8
  %74 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %75 = bitcast %struct.mtd_info* %74 to %struct.mtd_info.6*
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 %73(%struct.mtd_info.6* %75, i32* %76, i32 %77)
  %79 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %79, i32 0, i32 1
  %81 = load i32 (%struct.mtd_info.5*, i32*, i32)*, i32 (%struct.mtd_info.5*, i32*, i32)** %80, align 8
  %82 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %83 = bitcast %struct.mtd_info* %82 to %struct.mtd_info.5*
  %84 = load i32*, i32** %16, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %14, align 4
  %89 = call i32 %81(%struct.mtd_info.5* %83, i32* %87, i32 %88)
  %90 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %91 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i32 (%struct.mtd_info.1*, i32*, i32*)*, i32 (%struct.mtd_info.1*, i32*, i32*)** %92, align 8
  %94 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %95 = bitcast %struct.mtd_info* %94 to %struct.mtd_info.1*
  %96 = call i32 %93(%struct.mtd_info.1* %95, i32* null, i32* null)
  %97 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %98 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32 (%struct.mtd_info.0*, i32*, i32*, i32*)*, i32 (%struct.mtd_info.0*, i32*, i32*, i32*)** %99, align 8
  %101 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %102 = bitcast %struct.mtd_info* %101 to %struct.mtd_info.0*
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 %100(%struct.mtd_info.0* %102, i32* %103, i32* null, i32* null)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %54
  %108 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %109 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %120

113:                                              ; preds = %54
  %114 = load i32, i32* %18, align 4
  %115 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %116 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %114
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %113, %107
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %8, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %17, align 4
  br label %51

134:                                              ; preds = %51
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mtd_ooblayout_ecc(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
