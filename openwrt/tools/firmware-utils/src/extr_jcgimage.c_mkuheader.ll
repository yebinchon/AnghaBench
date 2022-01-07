; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_jcgimage.c_mkuheader.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_jcgimage.c_mkuheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uimage_header = type { i32, i32, i32, i32, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8* }

@IH_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Linux Kernel Image\00", align 1
@Z_NULL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"CRC1: %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"CRC2: %08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mkuheader(%struct.uimage_header* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.uimage_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.uimage_header* %0, %struct.uimage_header** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %10 = bitcast %struct.uimage_header* %9 to i8*
  %11 = getelementptr i8, i8* %10, i64 88
  store i8* %11, i8** %8, align 8
  %12 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %13 = call i32 @memset(%struct.uimage_header* %12, i32 0, i32 88)
  %14 = load i64, i64* @IH_MAGIC, align 8
  %15 = call i8* @htonl(i64 %14)
  %16 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %17 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %16, i32 0, i32 12
  store i8* %15, i8** %17, align 8
  %18 = call i64 @time(i32* null)
  %19 = call i8* @htonl(i64 %18)
  %20 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %21 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %20, i32 0, i32 11
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %22, %23
  %25 = call i8* @htonl(i64 %24)
  %26 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %27 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = call i8* @htonl(i64 2147483648)
  %29 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %30 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = call i8* @htonl(i64 2150178816)
  %32 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %33 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %32, i32 0, i32 9
  store i8* %31, i8** %33, align 8
  %34 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %35 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %34, i32 0, i32 0
  store i32 5, i32* %35, align 8
  %36 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %37 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %36, i32 0, i32 1
  store i32 5, i32* %37, align 4
  %38 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %39 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %38, i32 0, i32 2
  store i32 2, i32* %39, align 8
  %40 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %41 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %40, i32 0, i32 3
  store i32 3, i32* %41, align 4
  %42 = load i64, i64* %5, align 8
  %43 = add i64 88, %42
  %44 = call i8* @htonl(i64 %43)
  %45 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %46 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %48 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** @Z_NULL, align 8
  %53 = call i64 @crc32(i64 0, i8* %52, i32 0)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %57 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %56, i32 0, i32 6
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @ntohl(i8* %58)
  %60 = call i64 @crc32(i64 %54, i8* %55, i32 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i8* @htonl(i64 %61)
  %63 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %64 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i8*, i8** @Z_NULL, align 8
  %68 = call i64 @crc32(i64 0, i8* %67, i32 0)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %71 = bitcast %struct.uimage_header* %70 to i8*
  %72 = call i64 @crc32(i64 %69, i8* %71, i32 88)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i8* @htonl(i64 %73)
  %75 = load %struct.uimage_header*, %struct.uimage_header** %4, align 8
  %76 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  ret void
}

declare dso_local i32 @memset(%struct.uimage_header*, i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @crc32(i64, i8*, i32) #1

declare dso_local i32 @ntohl(i8*) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
