; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcvideo.c_PcVideoCopyOffScreenBufferToVRAM.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcvideo.c_PcVideoCopyOffScreenBufferToVRAM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@VideoTextMode = common dso_local global i64 0, align 8
@DisplayMode = common dso_local global i64 0, align 8
@VIDEOTEXT_MEM_ADDRESS = common dso_local global i64 0, align 8
@VideoGraphicsMode = common dso_local global i64 0, align 8
@VesaVideoMode = common dso_local global i64 0, align 8
@VesaVideoModeInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VIDEOVGA_MEM_ADDRESS = common dso_local global i64 0, align 8
@UNIMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PcVideoCopyOffScreenBufferToVRAM(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i64, i64* @VideoTextMode, align 8
  %9 = load i64, i64* @DisplayMode, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i64, i64* @VIDEOTEXT_MEM_ADDRESS, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (...) @PcVideoGetBufferSize()
  %16 = call i32 @RtlCopyMemory(i8* %13, i8* %14, i32 %15)
  br label %73

17:                                               ; preds = %1
  %18 = load i64, i64* @VideoGraphicsMode, align 8
  %19 = load i64, i64* @DisplayMode, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = load i64, i64* @VesaVideoMode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VesaVideoModeInformation, i32 0, i32 0), align 4
  %26 = shl i32 %25, 10
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VesaVideoModeInformation, i32 0, i32 1), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VesaVideoModeInformation, i32 0, i32 2), align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VesaVideoModeInformation, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VesaVideoModeInformation, i32 0, i32 2), align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = srem i32 %34, %35
  store i32 %36, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %54, %24
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @PcVideoSetMemoryBank(i32 %42)
  %44 = load i64, i64* @VIDEOVGA_MEM_ADDRESS, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @RtlCopyMemory(i8* %45, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @PcVideoSetMemoryBank(i32 %58)
  %60 = load i64, i64* @VIDEOVGA_MEM_ADDRESS, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @RtlCopyMemory(i8* %61, i8* %67, i32 %68)
  br label %72

70:                                               ; preds = %21, %17
  %71 = load i32, i32* @UNIMPLEMENTED, align 4
  br label %72

72:                                               ; preds = %70, %57
  br label %73

73:                                               ; preds = %72, %11
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @RtlCopyMemory(i8*, i8*, i32) #1

declare dso_local i32 @PcVideoGetBufferSize(...) #1

declare dso_local i32 @PcVideoSetMemoryBank(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
