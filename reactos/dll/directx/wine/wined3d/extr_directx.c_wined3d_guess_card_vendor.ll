; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_guess_card_vendor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_guess_card_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"NVIDIA\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Nouveau\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"nouveau\00", align 1
@HW_VENDOR_NVIDIA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ATI\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Advanced Micro Devices, Inc.\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"X.Org R300 Project\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"AMD\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"FirePro\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Radeon\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"R100\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"R200\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"R300\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"R600\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"R700\00", align 1
@HW_VENDOR_AMD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"Intel(R)\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"i915\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Intel Inc.\00", align 1
@HW_VENDOR_INTEL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"SVGA3D\00", align 1
@HW_VENDOR_VMWARE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"Mesa\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Brian Paul\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Tungsten Graphics, Inc\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"VMware, Inc.\00", align 1
@HW_VENDOR_SOFTWARE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [65 x i8] c"Received unrecognized GL_VENDOR %s. Returning HW_VENDOR_NVIDIA.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @wined3d_guess_card_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_guess_card_vendor(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strstr(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strstr(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strstr(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %9, %2
  %18 = load i32, i32* @HW_VENDOR_NVIDIA, align 4
  store i32 %18, i32* %3, align 4
  br label %112

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strstr(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strstr(i8* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strstr(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strstr(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strstr(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strstr(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strstr(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @strstr(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strstr(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @strstr(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19
  %64 = load i32, i32* @HW_VENDOR_AMD, align 4
  store i32 %64, i32* %3, align 4
  br label %112

65:                                               ; preds = %59
  %66 = load i8*, i8** %4, align 8
  %67 = call i64 @strstr(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strstr(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = call i64 @strstr(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %4, align 8
  %79 = call i64 @strstr(i8* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %73, %69, %65
  %82 = load i32, i32* @HW_VENDOR_INTEL, align 4
  store i32 %82, i32* %3, align 4
  br label %112

83:                                               ; preds = %77
  %84 = load i8*, i8** %5, align 8
  %85 = call i64 @strstr(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @HW_VENDOR_VMWARE, align 4
  store i32 %88, i32* %3, align 4
  br label %112

89:                                               ; preds = %83
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @strstr(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %4, align 8
  %95 = call i64 @strstr(i8* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %4, align 8
  %99 = call i64 @strstr(i8* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** %4, align 8
  %103 = call i64 @strstr(i8* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %97, %93, %89
  %106 = load i32, i32* @HW_VENDOR_SOFTWARE, align 4
  store i32 %106, i32* %3, align 4
  br label %112

107:                                              ; preds = %101
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 @debugstr_a(i8* %108)
  %110 = call i32 @FIXME(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @HW_VENDOR_NVIDIA, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %105, %87, %81, %63, %17
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
