; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_write_out_header.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_write_out_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyn_rombin_hdr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@errno = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"fseek failed on output file\00", align 1
@ROMBIN_SIGNATURE = common dso_local global i32 0, align 4
@ROMBIN_SIG_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"hdr.addr      = 0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"hdr.type      = 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"hdr.osize     = 0x%08x\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"hdr.csize     = 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"hdr.flags     = 0x%02x\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"hdr.ocsum     = 0x%04x\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"hdr.ccsum     = 0x%04x\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"hdr.mmap_addr = 0x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_header(i32* %0, %struct.zyn_rombin_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.zyn_rombin_hdr*, align 8
  %6 = alloca %struct.zyn_rombin_hdr, align 8
  store i32* %0, i32** %4, align 8
  store %struct.zyn_rombin_hdr* %1, %struct.zyn_rombin_hdr** %5, align 8
  store i64 0, i64* @errno, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @SEEK_SET, align 4
  %9 = call i64 @fseek(i32* %7, i32 0, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %92

13:                                               ; preds = %2
  %14 = call i32 @memset(%struct.zyn_rombin_hdr* %6, i32 0, i32 72)
  %15 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %15, i32 0, i32 7
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @HOST_TO_BE32(i8* %17)
  %19 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 7
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 8
  %21 = load i32, i32* @ROMBIN_SIGNATURE, align 4
  %22 = load i32, i32* @ROMBIN_SIG_LEN, align 4
  %23 = call i32 @memcpy(i32* %20, i32 %21, i32 %22)
  %24 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %24, i32 0, i32 6
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 6
  store i8* %26, i8** %27, align 8
  %28 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %32, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @HOST_TO_BE32(i8* %34)
  %36 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 5
  store i8* %35, i8** %36, align 8
  %37 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @HOST_TO_BE32(i8* %39)
  %41 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 4
  store i8* %40, i8** %41, align 8
  %42 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %43 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @HOST_TO_BE16(i8* %44)
  %46 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %48 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @HOST_TO_BE16(i8* %49)
  %51 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @HOST_TO_BE32(i8* %54)
  %56 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %6, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %58 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %57, i32 0, i32 7
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %62 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %61, i32 0, i32 6
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %66 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %70 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  %73 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %74 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  %77 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %78 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  %81 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %82 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %83)
  %85 = load %struct.zyn_rombin_hdr*, %struct.zyn_rombin_hdr** %5, align 8
  %86 = getelementptr inbounds %struct.zyn_rombin_hdr, %struct.zyn_rombin_hdr* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %87)
  %89 = load i32*, i32** %4, align 8
  %90 = bitcast %struct.zyn_rombin_hdr* %6 to i32*
  %91 = call i32 @write_out_data(i32* %89, i32* %90, i32 72, i32* null)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %13, %11
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ERRS(i8*) #1

declare dso_local i32 @memset(%struct.zyn_rombin_hdr*, i32, i32) #1

declare dso_local i8* @HOST_TO_BE32(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @HOST_TO_BE16(i8*) #1

declare dso_local i32 @DBG(i32, i8*, i8*) #1

declare dso_local i32 @write_out_data(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
