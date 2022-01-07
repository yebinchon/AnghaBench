; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkporayfw.c_fill_header.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkporayfw.c_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_header = type { i8*, i8*, i8* }

@hw_id = common dso_local global i32 0, align 4
@firmware_len = common dso_local global i32 0, align 4
@HEADER_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @fill_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_header(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.fw_header*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.fw_header*
  store %struct.fw_header* %5, %struct.fw_header** %3, align 8
  %6 = load %struct.fw_header*, %struct.fw_header** %3, align 8
  %7 = call i32 @memset(%struct.fw_header* %6, i32 0, i32 24)
  %8 = load i32, i32* @hw_id, align 4
  %9 = call i8* @HOST_TO_LE32(i32 %8)
  %10 = load %struct.fw_header*, %struct.fw_header** %3, align 8
  %11 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @firmware_len, align 4
  %13 = call i8* @HOST_TO_LE32(i32 %12)
  %14 = load %struct.fw_header*, %struct.fw_header** %3, align 8
  %15 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @HEADER_FLAGS, align 4
  %17 = call i8* @HOST_TO_LE32(i32 %16)
  %18 = load %struct.fw_header*, %struct.fw_header** %3, align 8
  %19 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  ret void
}

declare dso_local i32 @memset(%struct.fw_header*, i32, i32) #1

declare dso_local i8* @HOST_TO_LE32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
