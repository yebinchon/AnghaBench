; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw.c_print_stag_header.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw.c_print_stag_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stag_header = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [131 x i8] c"\09cmark: 0x%02X\0A\09id: 0x%02X\0A\09magic: 0x%04X\0A\09time_stamp: 0x%08X\0A\09image_length: 0x%04X\0A\09image_checksum: 0x%04X\0A\09tag_checksum: 0x%04X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_stag_header(%struct.stag_header* %0) #0 {
  %2 = alloca %struct.stag_header*, align 8
  store %struct.stag_header* %0, %struct.stag_header** %2, align 8
  %3 = load %struct.stag_header*, %struct.stag_header** %2, align 8
  %4 = getelementptr inbounds %struct.stag_header, %struct.stag_header* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.stag_header*, %struct.stag_header** %2, align 8
  %7 = getelementptr inbounds %struct.stag_header, %struct.stag_header* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.stag_header*, %struct.stag_header** %2, align 8
  %10 = getelementptr inbounds %struct.stag_header, %struct.stag_header* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.stag_header*, %struct.stag_header** %2, align 8
  %13 = getelementptr inbounds %struct.stag_header, %struct.stag_header* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.stag_header*, %struct.stag_header** %2, align 8
  %16 = getelementptr inbounds %struct.stag_header, %struct.stag_header* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.stag_header*, %struct.stag_header** %2, align 8
  %19 = getelementptr inbounds %struct.stag_header, %struct.stag_header* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.stag_header*, %struct.stag_header** %2, align 8
  %22 = getelementptr inbounds %struct.stag_header, %struct.stag_header* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %23)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
