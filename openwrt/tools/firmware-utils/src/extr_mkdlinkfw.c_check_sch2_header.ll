; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw.c_check_sch2_header.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw.c_check_sch2_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sch2_header = type { i64, i32, i32, i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Find proper SCH2 header at: 0x%lX!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Kernel checksum ok.\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Kernel checksum incorrect! Stored: 0x%X Calculated: 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"SCH2 header checksum incorrect!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sch2_header*)* @check_sch2_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sch2_header(i8* %0, %struct.sch2_header* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sch2_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sch2_header* %1, %struct.sch2_header** %4, align 8
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %10 = getelementptr inbounds %struct.sch2_header, %struct.sch2_header* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %13 = getelementptr inbounds %struct.sch2_header, %struct.sch2_header* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %16 = bitcast %struct.sch2_header* %15 to i32*
  %17 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %18 = getelementptr inbounds %struct.sch2_header, %struct.sch2_header* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @crc32(i32 0, i32* %16, i32 %19)
  %21 = icmp eq i64 %14, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %2
  %23 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %24 = bitcast %struct.sch2_header* %23 to i8*
  %25 = load i8*, i8** %3, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %31 = bitcast %struct.sch2_header* %30 to i32*
  %32 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %33 = getelementptr inbounds %struct.sch2_header, %struct.sch2_header* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %38 = getelementptr inbounds %struct.sch2_header, %struct.sch2_header* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @crc32(i32 0, i32* %36, i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %42 = getelementptr inbounds %struct.sch2_header, %struct.sch2_header* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %22
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %50 = getelementptr inbounds %struct.sch2_header, %struct.sch2_header* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %52 = call i32 @print_sch2_header(%struct.sch2_header* %51)
  %53 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %53, i32* %5, align 4
  br label %60

54:                                               ; preds = %22
  %55 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %56 = getelementptr inbounds %struct.sch2_header, %struct.sch2_header* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %54, %46
  br label %63

61:                                               ; preds = %2
  %62 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %60
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.sch2_header*, %struct.sch2_header** %4, align 8
  %66 = getelementptr inbounds %struct.sch2_header, %struct.sch2_header* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @crc32(i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_sch2_header(%struct.sch2_header*) #1

declare dso_local i32 @ERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
