; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzcfw.c_build_fw.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzcfw.c_build_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fw_header = type { i8*, i8* }
%struct.fw_tail = type { i8*, i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@kernel_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@rootfs_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@MAGIC_FIRMWARE = common dso_local global i32 0, align 4
@MAGIC_KERNEL = common dso_local global i32 0, align 4
@board = common dso_local global %struct.TYPE_6__* null, align 8
@MAGIC_ROOTFS = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @build_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_fw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_header*, align 8
  %8 = alloca %struct.fw_tail*, align 8
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_info, i32 0, i32 0), align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 48, %11
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = add i64 %15, 48
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i8* @malloc(i32 %18)
  store i8* %19, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %0
  %23 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %168

24:                                               ; preds = %0
  %25 = load i8*, i8** %2, align 8
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @memset(i8* %26, i32 0, i32 %27)
  %29 = load i8*, i8** %3, align 8
  %30 = bitcast i8* %29 to %struct.fw_header*
  store %struct.fw_header* %30, %struct.fw_header** %7, align 8
  %31 = load i32, i32* @MAGIC_FIRMWARE, align 4
  %32 = call i8* @HOST_TO_LE32(i32 %31)
  %33 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %34 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 16
  %38 = trunc i64 %37 to i32
  %39 = call i8* @HOST_TO_LE32(i32 %38)
  %40 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %41 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 16
  store i8* %43, i8** %3, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = bitcast i8* %44 to %struct.fw_header*
  store %struct.fw_header* %45, %struct.fw_header** %7, align 8
  %46 = load i32, i32* @MAGIC_KERNEL, align 4
  %47 = call i8* @HOST_TO_LE32(i32 %46)
  %48 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %49 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_info, i32 0, i32 0), align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 16
  %53 = trunc i64 %52 to i32
  %54 = call i8* @HOST_TO_LE32(i32 %53)
  %55 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %56 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 16
  store i8* %58, i8** %3, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @read_to_buf(%struct.TYPE_5__* @kernel_info, i8* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %24
  br label %165

64:                                               ; preds = %24
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_info, i32 0, i32 0), align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = bitcast i8* %68 to %struct.fw_tail*
  store %struct.fw_tail* %69, %struct.fw_tail** %8, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @board, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @HOST_TO_BE32(i32 %72)
  %74 = load %struct.fw_tail*, %struct.fw_tail** %8, align 8
  %75 = getelementptr inbounds %struct.fw_tail, %struct.fw_tail* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_info, i32 0, i32 0), align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, 16
  %80 = sub i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @cyg_crc32(i8* %76, i32 %81)
  %83 = call i8* @HOST_TO_BE32(i32 %82)
  %84 = load %struct.fw_tail*, %struct.fw_tail** %8, align 8
  %85 = getelementptr inbounds %struct.fw_tail, %struct.fw_tail* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_info, i32 0, i32 0), align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %87, 16
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %90, i8** %3, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = bitcast i8* %91 to %struct.fw_header*
  store %struct.fw_header* %92, %struct.fw_header** %7, align 8
  %93 = load i32, i32* @MAGIC_ROOTFS, align 4
  %94 = call i8* @HOST_TO_LE32(i32 %93)
  %95 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %96 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, 16
  %100 = trunc i64 %99 to i32
  %101 = call i8* @HOST_TO_LE32(i32 %100)
  %102 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %103 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 16
  store i8* %105, i8** %3, align 8
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 @read_to_buf(%struct.TYPE_5__* @rootfs_info, i8* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %64
  br label %165

111:                                              ; preds = %64
  %112 = load i8*, i8** %3, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = bitcast i8* %115 to %struct.fw_tail*
  store %struct.fw_tail* %116, %struct.fw_tail** %8, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @board, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @HOST_TO_BE32(i32 %119)
  %121 = load %struct.fw_tail*, %struct.fw_tail** %8, align 8
  %122 = getelementptr inbounds %struct.fw_tail, %struct.fw_tail* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, 16
  %127 = sub i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i32 @cyg_crc32(i8* %123, i32 %128)
  %130 = call i8* @HOST_TO_BE32(i32 %129)
  %131 = load %struct.fw_tail*, %struct.fw_tail** %8, align 8
  %132 = getelementptr inbounds %struct.fw_tail, %struct.fw_tail* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %134, 16
  %136 = load i8*, i8** %3, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8* %137, i8** %3, align 8
  %138 = load i8*, i8** %3, align 8
  %139 = bitcast i8* %138 to %struct.fw_tail*
  store %struct.fw_tail* %139, %struct.fw_tail** %8, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @board, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @HOST_TO_BE32(i32 %142)
  %144 = load %struct.fw_tail*, %struct.fw_tail** %8, align 8
  %145 = getelementptr inbounds %struct.fw_tail, %struct.fw_tail* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** %2, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 16
  %148 = load i32, i32* %1, align 4
  %149 = sext i32 %148 to i64
  %150 = sub i64 %149, 16
  %151 = sub i64 %150, 4
  %152 = trunc i64 %151 to i32
  %153 = call i32 @cyg_crc32(i8* %147, i32 %152)
  %154 = call i8* @HOST_TO_BE32(i32 %153)
  %155 = load %struct.fw_tail*, %struct.fw_tail** %8, align 8
  %156 = getelementptr inbounds %struct.fw_tail, %struct.fw_tail* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** %2, align 8
  %158 = load i32, i32* %1, align 4
  %159 = call i32 @write_fw(i8* %157, i32 %158)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %111
  br label %165

163:                                              ; preds = %111
  %164 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %163, %162, %110, %63
  %166 = load i8*, i8** %2, align 8
  %167 = call i32 @free(i8* %166)
  br label %168

168:                                              ; preds = %165, %22
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @HOST_TO_LE32(i32) #1

declare dso_local i32 @read_to_buf(%struct.TYPE_5__*, i8*) #1

declare dso_local i8* @HOST_TO_BE32(i32) #1

declare dso_local i32 @cyg_crc32(i8*, i32) #1

declare dso_local i32 @write_fw(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
