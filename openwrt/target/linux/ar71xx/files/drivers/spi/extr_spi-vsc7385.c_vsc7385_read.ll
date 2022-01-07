; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-vsc7385.c_vsc7385_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-vsc7385.c_vsc7385_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc7385 = type { i32, i32 }
%struct.spi_transfer = type { i32, i64*, i64* }
%struct.spi_message = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VSC73XX_CMD_MODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsc7385*, i64, i64, i64, i32*)* @vsc7385_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc7385_read(%struct.vsc7385* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vsc7385*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i64], align 16
  %13 = alloca [4 x i64], align 16
  %14 = alloca [2 x %struct.spi_transfer], align 16
  %15 = alloca %struct.spi_message, align 4
  %16 = alloca i32, align 4
  store %struct.vsc7385* %0, %struct.vsc7385** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @vsc7385_is_addr_valid(i64 %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %85

24:                                               ; preds = %5
  %25 = call i32 @spi_message_init(%struct.spi_message* %15)
  %26 = bitcast [2 x %struct.spi_transfer]* %14 to %struct.spi_transfer**
  %27 = call i32 @memset(%struct.spi_transfer** %26, i32 0, i32 48)
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %29 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 2
  store i64* %28, i64** %30, align 16
  %31 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 0
  store i32 32, i32* %32, align 16
  %33 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %34 = call i32 @spi_message_add_tail(%struct.spi_transfer* %33, %struct.spi_message* %15)
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %36 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 1
  store i64* %35, i64** %37, align 8
  %38 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 0
  store i32 32, i32* %39, align 8
  %40 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %41 = call i32 @spi_message_add_tail(%struct.spi_transfer* %40, %struct.spi_message* %15)
  %42 = load i32, i32* @VSC73XX_CMD_MODE_READ, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @vsc7385_make_addr(i32 %42, i64 %43, i64 %44)
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %45, i64* %46, align 16
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 0, i64* %49, align 16
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.vsc7385*, %struct.vsc7385** %7, align 8
  %52 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.vsc7385*, %struct.vsc7385** %7, align 8
  %55 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @spi_sync(i32 %56, %struct.spi_message* %15)
  store i32 %57, i32* %16, align 4
  %58 = load %struct.vsc7385*, %struct.vsc7385** %7, align 8
  %59 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %24
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %6, align 4
  br label %85

65:                                               ; preds = %24
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %67 = load i64, i64* %66, align 16
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %68, 24
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 %72, 16
  %74 = or i32 %69, %73
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 2
  %76 = load i64, i64* %75, align 16
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 8
  %79 = or i32 %74, %78
  %80 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 3
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = or i32 %79, %82
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %65, %63, %21
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @vsc7385_is_addr_valid(i64, i64) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer**, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i64 @vsc7385_make_addr(i32, i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
