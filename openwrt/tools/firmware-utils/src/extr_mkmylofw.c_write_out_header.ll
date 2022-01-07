; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_write_out_header.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_write_out_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mylo_fw_header = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MYLO_MAGIC_FIRMWARE = common dso_local global i32 0, align 4
@fw_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"fseek failed on output file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_header(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mylo_fw_header, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i32 @memset(%struct.mylo_fw_header* %6, i32 0, i32 80)
  %8 = load i32, i32* @MYLO_MAGIC_FIRMWARE, align 4
  %9 = call i8* @HOST_TO_LE32(i32 %8)
  %10 = getelementptr inbounds %struct.mylo_fw_header, %struct.mylo_fw_header* %6, i32 0, i32 9
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 8), align 4
  %12 = call i8* @HOST_TO_LE32(i32 %11)
  %13 = getelementptr inbounds %struct.mylo_fw_header, %struct.mylo_fw_header* %6, i32 0, i32 8
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 7), align 4
  %15 = call i8* @HOST_TO_LE16(i32 %14)
  %16 = getelementptr inbounds %struct.mylo_fw_header, %struct.mylo_fw_header* %6, i32 0, i32 7
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 6), align 4
  %18 = call i8* @HOST_TO_LE16(i32 %17)
  %19 = getelementptr inbounds %struct.mylo_fw_header, %struct.mylo_fw_header* %6, i32 0, i32 6
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 5), align 4
  %21 = call i8* @HOST_TO_LE16(i32 %20)
  %22 = getelementptr inbounds %struct.mylo_fw_header, %struct.mylo_fw_header* %6, i32 0, i32 5
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 4), align 4
  %24 = call i8* @HOST_TO_LE16(i32 %23)
  %25 = getelementptr inbounds %struct.mylo_fw_header, %struct.mylo_fw_header* %6, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 3), align 4
  %27 = call i8* @HOST_TO_LE32(i32 %26)
  %28 = getelementptr inbounds %struct.mylo_fw_header, %struct.mylo_fw_header* %6, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 2), align 4
  %30 = call i8* @HOST_TO_LE32(i32 %29)
  %31 = getelementptr inbounds %struct.mylo_fw_header, %struct.mylo_fw_header* %6, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 1), align 4
  %33 = call i8* @HOST_TO_LE32(i32 %32)
  %34 = getelementptr inbounds %struct.mylo_fw_header, %struct.mylo_fw_header* %6, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 0), align 4
  %36 = call i8* @HOST_TO_LE32(i32 %35)
  %37 = getelementptr inbounds %struct.mylo_fw_header, %struct.mylo_fw_header* %6, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @SEEK_SET, align 4
  %40 = call i64 @fseek(i32* %38, i32 0, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = call i32 @errmsg(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %49

44:                                               ; preds = %2
  %45 = load i32*, i32** %4, align 8
  %46 = bitcast %struct.mylo_fw_header* %6 to i32*
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @write_out_data(i32* %45, i32* %46, i32 80, i32* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %42
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.mylo_fw_header*, i32, i32) #1

declare dso_local i8* @HOST_TO_LE32(i32) #1

declare dso_local i8* @HOST_TO_LE16(i32) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @errmsg(i32, i8*) #1

declare dso_local i32 @write_out_data(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
