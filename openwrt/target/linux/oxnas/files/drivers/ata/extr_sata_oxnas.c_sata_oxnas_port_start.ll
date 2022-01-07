; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_port_start.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.sata_oxnas_port_priv*, i8*, i8*, i64, %struct.TYPE_2__* }
%struct.sata_oxnas_port_priv = type { i8*, i8*, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.device*, %struct.sata_oxnas_host_priv* }
%struct.device = type { i32 }
%struct.sata_oxnas_host_priv = type { i32, i32, i8*, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT_SIZE = common dso_local global i32 0, align 4
@DMA_CORESIZE = common dso_local global i32 0, align 4
@SGDMA_CORESIZE = common dso_local global i32 0, align 4
@SATA_OXNAS_DMA_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"using preallocated DMA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @sata_oxnas_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_oxnas_port_start(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.sata_oxnas_host_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sata_oxnas_port_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %12, align 8
  store %struct.sata_oxnas_host_priv* %13, %struct.sata_oxnas_host_priv** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sata_oxnas_port_priv* @kzalloc(i32 48, i32 %20)
  store %struct.sata_oxnas_port_priv* %21, %struct.sata_oxnas_port_priv** %6, align 8
  %22 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  %23 = icmp ne %struct.sata_oxnas_port_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %143

27:                                               ; preds = %1
  %28 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %29 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @PORT_SIZE, align 4
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %30, %40
  %42 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  %43 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %42, i32 0, i32 5
  store i64 %41, i64* %43, align 8
  %44 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %45 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @DMA_CORESIZE, align 4
  br label %54

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %46, %56
  %58 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  %59 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %61 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %64 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* @SGDMA_CORESIZE, align 4
  br label %70

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %62, %72
  %74 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  %75 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %77 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  %80 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %82 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SATA_OXNAS_DMA_SIZE, align 4
  %85 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %86 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = icmp sge i32 %83, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %70
  %91 = call i32 @DPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %4, align 8
  %93 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %96 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* @SATA_OXNAS_DMA_SIZE, align 4
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ 0, %101 ]
  %104 = sext i32 %103 to i64
  %105 = getelementptr i8, i8* %94, i64 %104
  store i8* %105, i8** %8, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* @SATA_OXNAS_DMA_SIZE, align 4
  %108 = call i8* @ioremap(i8* %106, i32 %107)
  store i8* %108, i8** %7, align 8
  br label %114

109:                                              ; preds = %70
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = load i32, i32* @SATA_OXNAS_DMA_SIZE, align 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call i8* @dma_alloc_coherent(%struct.device* %110, i32 %111, i8** %8, i32 %112)
  store i8* %113, i8** %7, align 8
  br label %114

114:                                              ; preds = %109, %102
  %115 = load i8*, i8** %7, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  br label %138

118:                                              ; preds = %114
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  %121 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  %124 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr i8, i8* %125, i64 4
  %127 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %128 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr i8, i8* %129, i64 4
  %131 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %132 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  %134 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %135 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %134, i32 0, i32 0
  store %struct.sata_oxnas_port_priv* %133, %struct.sata_oxnas_port_priv** %135, align 8
  %136 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %137 = call i32 @sata_oxnas_post_reset_init(%struct.ata_port* %136)
  store i32 0, i32* %2, align 4
  br label %143

138:                                              ; preds = %117
  %139 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %6, align 8
  %140 = call i32 @kfree(%struct.sata_oxnas_port_priv* %139)
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %138, %118, %24
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local %struct.sata_oxnas_port_priv* @kzalloc(i32, i32) #1

declare dso_local i8* @ioremap(i8*, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i8**, i32) #1

declare dso_local i32 @sata_oxnas_post_reset_init(%struct.ata_port*) #1

declare dso_local i32 @kfree(%struct.sata_oxnas_port_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
