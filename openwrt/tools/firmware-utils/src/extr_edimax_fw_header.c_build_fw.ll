; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_edimax_fw_header.c_build_fw.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_edimax_fw_header.c_build_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edimax_header = type { i8*, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@data_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@ifname = common dso_local global i32 0, align 4
@model = common dso_local global i32 0, align 4
@magic = common dso_local global i32 0, align 4
@fw_version = common dso_local global i32 0, align 4
@mtd_name = common dso_local global i32 0, align 4
@force = common dso_local global i32 0, align 4
@start_addr = common dso_local global i32 0, align 4
@end_addr = common dso_local global i32 0, align 4
@image_type = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @build_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_fw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.edimax_header*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @data_size, align 4
  %8 = sext i32 %7 to i64
  %9 = add i64 72, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i8* @malloc(i32 %11)
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %91

17:                                               ; preds = %0
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 72
  store i8* %19, i8** %3, align 8
  %20 = load i32, i32* @ifname, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @data_size, align 4
  %23 = call i32 @read_to_buf(i32 %20, i8* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %88

27:                                               ; preds = %17
  %28 = load i8*, i8** %2, align 8
  %29 = bitcast i8* %28 to %struct.edimax_header*
  store %struct.edimax_header* %29, %struct.edimax_header** %4, align 8
  %30 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %31 = call i32 @memset(%struct.edimax_header* %30, i32 0, i32 72)
  %32 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %33 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @model, align 4
  %36 = call i32 @strncpy(i32 %34, i32 %35, i32 4)
  %37 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %38 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @magic, align 4
  %41 = call i32 @strncpy(i32 %39, i32 %40, i32 4)
  %42 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %43 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @fw_version, align 4
  %46 = call i32 @strncpy(i32 %44, i32 %45, i32 4)
  %47 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %48 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @mtd_name, align 4
  %51 = call i32 @strncpy(i32 %49, i32 %50, i32 4)
  %52 = load i32, i32* @force, align 4
  %53 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %54 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @start_addr, align 4
  %56 = call i8* @htonl(i32 %55)
  %57 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %58 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @end_addr, align 4
  %60 = call i8* @htonl(i32 %59)
  %61 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %62 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @data_size, align 4
  %64 = call i8* @htonl(i32 %63)
  %65 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %66 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @image_type, align 4
  %68 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %69 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* @data_size, align 4
  %72 = call i8* @checksum(i8* %70, i32 %71)
  %73 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %74 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %76 = bitcast %struct.edimax_header* %75 to i8*
  %77 = call i8* @checksum(i8* %76, i32 72)
  %78 = load %struct.edimax_header*, %struct.edimax_header** %4, align 8
  %79 = getelementptr inbounds %struct.edimax_header, %struct.edimax_header* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %2, align 8
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @write_fw(i8* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %27
  br label %88

86:                                               ; preds = %27
  %87 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %85, %26
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 @free(i8* %89)
  br label %91

91:                                               ; preds = %88, %15
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @read_to_buf(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.edimax_header*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @checksum(i8*, i32) #1

declare dso_local i32 @write_fw(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
