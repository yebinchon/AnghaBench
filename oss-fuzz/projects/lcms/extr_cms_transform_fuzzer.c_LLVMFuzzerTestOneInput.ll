; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/lcms/extr_cms_transform_fuzzer.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/lcms/extr_cms_transform_fuzzer.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigLabData = common dso_local global i64 0, align 8
@PT_Lab = common dso_local global i32 0, align 4
@PT_ANY = common dso_local global i32 0, align 4
@TYPE_BGR_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(double* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x double], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store i64 %1, i64* %5, align 8
  %21 = load double*, double** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @cmsOpenProfileFromMem(double* %21, i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

27:                                               ; preds = %2
  %28 = call i32 (...) @cmsCreate_sRGBProfile()
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @cmsCloseProfile(i32 %32)
  store i32 0, i32* %3, align 4
  br label %122

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @cmsGetColorSpace(i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @cmsChannelsOf(i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @cmsSigLabData, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32, i32* @PT_Lab, align 4
  %44 = call i32 @COLORSPACE_SH(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @CHANNELS_SH(i32 %45)
  %47 = or i32 %44, %46
  %48 = call i32 @BYTES_SH(i32 0)
  %49 = or i32 %47, %48
  store i32 %49, i32* %10, align 4
  br label %58

50:                                               ; preds = %34
  %51 = load i32, i32* @PT_ANY, align 4
  %52 = call i32 @COLORSPACE_SH(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @CHANNELS_SH(i32 %53)
  %55 = or i32 %52, %54
  %56 = call i32 @BYTES_SH(i32 1)
  %57 = or i32 %55, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %50, %42
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @TYPE_BGR_8, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @cmsCreateTransform(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @cmsCloseProfile(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @cmsCloseProfile(i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %122

73:                                               ; preds = %58
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @T_BYTES(i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = call i8* @llvm.stacksave()
  store i8* %80, i8** %15, align 8
  %81 = alloca double, i64 %79, align 16
  store i64 %79, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %90, %77
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %81, i64 %88
  store double 5.000000e-01, double* %89, align 8
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %82

93:                                               ; preds = %82
  %94 = load i32, i32* %13, align 4
  %95 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 0
  %96 = call i32 @cmsDoTransform(i32 %94, double* %81, double* %95, i32 1)
  %97 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %97)
  br label %119

98:                                               ; preds = %73
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = call i8* @llvm.stacksave()
  store i8* %101, i8** %18, align 8
  %102 = alloca double, i64 %100, align 16
  store i64 %100, i64* %19, align 8
  store i32 0, i32* %20, align 4
  br label %103

103:                                              ; preds = %111, %98
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %102, i64 %109
  store double 1.280000e+02, double* %110, align 8
  br label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %20, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %20, align 4
  br label %103

114:                                              ; preds = %103
  %115 = load i32, i32* %13, align 4
  %116 = getelementptr inbounds [4 x double], [4 x double]* %14, i64 0, i64 0
  %117 = call i32 @cmsDoTransform(i32 %115, double* %102, double* %116, i32 1)
  %118 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %118)
  br label %119

119:                                              ; preds = %114, %93
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @cmsDeleteTransform(i32 %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %119, %72, %31, %26
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @cmsOpenProfileFromMem(double*, i64) #1

declare dso_local i32 @cmsCreate_sRGBProfile(...) #1

declare dso_local i32 @cmsCloseProfile(i32) #1

declare dso_local i64 @cmsGetColorSpace(i32) #1

declare dso_local i32 @cmsChannelsOf(i64) #1

declare dso_local i32 @COLORSPACE_SH(i32) #1

declare dso_local i32 @CHANNELS_SH(i32) #1

declare dso_local i32 @BYTES_SH(i32) #1

declare dso_local i32 @cmsCreateTransform(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @T_BYTES(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cmsDoTransform(i32, double*, double*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @cmsDeleteTransform(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
