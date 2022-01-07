; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_write_out_mmap.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkzynfw.c_write_out_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.fw_mmap = type { i64 }
%struct.csum_state = type { i32 }
%struct.zyn_mmt_hdr = type { i32, i8*, i8*, i64 }

@MMAP_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Vendor 1 %d\00", align 1
@board = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Model 1 %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"HwVerRange 2 %d %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_mmap(i32* %0, %struct.fw_mmap* %1, %struct.csum_state* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fw_mmap*, align 8
  %6 = alloca %struct.csum_state*, align 8
  %7 = alloca %struct.zyn_mmt_hdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.fw_mmap* %1, %struct.fw_mmap** %5, align 8
  store %struct.csum_state* %2, %struct.csum_state** %6, align 8
  %13 = load i32, i32* @MMAP_DATA_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = trunc i64 %14 to i32
  %18 = call i32 @memset(i8* %16, i32 0, i32 %17)
  %19 = bitcast i8* %16 to %struct.zyn_mmt_hdr*
  store %struct.zyn_mmt_hdr* %19, %struct.zyn_mmt_hdr** %7, align 8
  %20 = load %struct.zyn_mmt_hdr*, %struct.zyn_mmt_hdr** %7, align 8
  %21 = getelementptr inbounds %struct.zyn_mmt_hdr, %struct.zyn_mmt_hdr* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds i8, i8* %16, i64 32
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** %11, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %11, align 8
  store i8 0, i8* %31, align 1
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BE16_TO_HOST(i32 %36)
  %38 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i8*, i8** %11, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  store i8 0, i8* %42, align 1
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %46 = load i8*, i8** %11, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  store i8 0, i8* %49, align 1
  %51 = load i8*, i8** %11, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = ptrtoint i8* %16 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load %struct.fw_mmap*, %struct.fw_mmap** %5, align 8
  %57 = getelementptr inbounds %struct.fw_mmap, %struct.fw_mmap* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 32
  %60 = call i8* @HOST_TO_BE32(i64 %59)
  %61 = load %struct.zyn_mmt_hdr*, %struct.zyn_mmt_hdr** %7, align 8
  %62 = getelementptr inbounds %struct.zyn_mmt_hdr, %struct.zyn_mmt_hdr* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.fw_mmap*, %struct.fw_mmap** %5, align 8
  %64 = getelementptr inbounds %struct.fw_mmap, %struct.fw_mmap* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i8* @HOST_TO_BE32(i64 %68)
  %70 = load %struct.zyn_mmt_hdr*, %struct.zyn_mmt_hdr** %7, align 8
  %71 = getelementptr inbounds %struct.zyn_mmt_hdr, %struct.zyn_mmt_hdr* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = getelementptr inbounds i8, i8* %16, i64 32
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @csum_buf(i8* %72, i32 %73)
  %75 = call i32 @HOST_TO_BE16(i32 %74)
  %76 = load %struct.zyn_mmt_hdr*, %struct.zyn_mmt_hdr** %7, align 8
  %77 = getelementptr inbounds %struct.zyn_mmt_hdr, %struct.zyn_mmt_hdr* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = trunc i64 %14 to i32
  %80 = load %struct.csum_state*, %struct.csum_state** %6, align 8
  %81 = call i32 @write_out_data(i32* %78, i8* %16, i32 %79, %struct.csum_state* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %83)
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #2

declare dso_local i32 @BE16_TO_HOST(i32) #2

declare dso_local i8* @HOST_TO_BE32(i64) #2

declare dso_local i32 @HOST_TO_BE16(i32) #2

declare dso_local i32 @csum_buf(i8*, i32) #2

declare dso_local i32 @write_out_data(i32*, i8*, i32, %struct.csum_state*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
