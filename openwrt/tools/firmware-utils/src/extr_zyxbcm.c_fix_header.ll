; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_zyxbcm.c_fix_header.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_zyxbcm.c_fix_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_tag = type { i32*, i32, i32, i32 }
%struct.zyxbcm_tag = type { i32*, i32*, i32*, i32*, i64* }

@CRC_LEN = common dso_local global i32 0, align 4
@ZYX_TAGINFO1_LEN = common dso_local global i32 0, align 4
@ADDRESS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@IMAGETAG_CRC_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_header(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bcm_tag*, align 8
  %4 = alloca %struct.zyxbcm_tag*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.bcm_tag*
  store %struct.bcm_tag* %12, %struct.bcm_tag** %3, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.zyxbcm_tag*
  store %struct.zyxbcm_tag* %14, %struct.zyxbcm_tag** %4, align 8
  %15 = load i32, i32* @CRC_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load %struct.bcm_tag*, %struct.bcm_tag** %3, align 8
  %20 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @strtoul(i32 %21, i32* null, i32 10)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.bcm_tag*, %struct.bcm_tag** %3, align 8
  %24 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strtoul(i32 %25, i32* null, i32 10)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.bcm_tag*, %struct.bcm_tag** %3, align 8
  %28 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @strtoul(i32 %29, i32* null, i32 10)
  store i64 %30, i64* %10, align 8
  %31 = load %struct.bcm_tag*, %struct.bcm_tag** %3, align 8
  %32 = getelementptr inbounds %struct.bcm_tag, %struct.bcm_tag* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @CRC_LEN, align 4
  %35 = call i32 @memcpy(i32* %18, i32* %33, i32 %34)
  %36 = load %struct.zyxbcm_tag*, %struct.zyxbcm_tag** %4, align 8
  %37 = getelementptr inbounds %struct.zyxbcm_tag, %struct.zyxbcm_tag* %36, i32 0, i32 4
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* @ZYX_TAGINFO1_LEN, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  store i64 0, i64* %42, align 8
  %43 = load %struct.zyxbcm_tag*, %struct.zyxbcm_tag** %4, align 8
  %44 = getelementptr inbounds %struct.zyxbcm_tag, %struct.zyxbcm_tag* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @ADDRESS_LEN, align 4
  %47 = call i32 @memset(i32* %45, i32 0, i32 %46)
  %48 = load %struct.zyxbcm_tag*, %struct.zyxbcm_tag** %4, align 8
  %49 = getelementptr inbounds %struct.zyxbcm_tag, %struct.zyxbcm_tag* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @CRC_LEN, align 4
  %52 = call i32 @memset(i32* %50, i32 0, i32 %51)
  %53 = load %struct.zyxbcm_tag*, %struct.zyxbcm_tag** %4, align 8
  %54 = getelementptr inbounds %struct.zyxbcm_tag, %struct.zyxbcm_tag* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @memset(i32* %55, i32 0, i32 2)
  %57 = load %struct.zyxbcm_tag*, %struct.zyxbcm_tag** %4, align 8
  %58 = getelementptr inbounds %struct.zyxbcm_tag, %struct.zyxbcm_tag* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @sprintf(i32* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load %struct.zyxbcm_tag*, %struct.zyxbcm_tag** %4, align 8
  %67 = getelementptr inbounds %struct.zyxbcm_tag, %struct.zyxbcm_tag* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @CRC_LEN, align 4
  %70 = call i32 @memcpy(i32* %68, i32* %18, i32 %69)
  %71 = load i32, i32* @IMAGETAG_CRC_START, align 4
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 @crc32(i32 %71, i8* %72, i32 236)
  %74 = call i32 @htonl(i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.zyxbcm_tag*, %struct.zyxbcm_tag** %4, align 8
  %76 = getelementptr inbounds %struct.zyxbcm_tag, %struct.zyxbcm_tag* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @memcpy(i32* %77, i32* %7, i32 4)
  %79 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strtoul(i32, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @sprintf(i32*, i8*, i64) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @crc32(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
