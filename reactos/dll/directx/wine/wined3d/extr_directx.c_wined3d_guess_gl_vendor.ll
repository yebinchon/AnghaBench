; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_guess_gl_vendor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_wined3d_guess_gl_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i64* }

@APPLE_FENCE = common dso_local global i64 0, align 8
@APPLE_YCBCR_422 = common dso_local global i64 0, align 8
@GL_VENDOR_APPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"NVIDIA\00", align 1
@GL_VENDOR_NVIDIA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ATI\00", align 1
@GL_VENDOR_FGLRX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Mesa\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Brian Paul\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"X.Org\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Advanced Micro Devices, Inc.\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"DRI R300 Project\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Tungsten Graphics, Inc\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"VMware, Inc.\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Gallium\00", align 1
@GL_VENDOR_MESA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [66 x i8] c"Received unrecognized GL_VENDOR %s. Returning GL_VENDOR_UNKNOWN.\0A\00", align 1
@GL_VENDOR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*, i8*, i8*, i8*)* @wined3d_guess_gl_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_guess_gl_vendor(%struct.wined3d_gl_info* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %11 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @APPLE_FENCE, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %19 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @APPLE_YCBCR_422, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @GL_VENDOR_APPLE, align 4
  store i32 %26, i32* %5, align 4
  br label %94

27:                                               ; preds = %17, %4
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @GL_VENDOR_NVIDIA, align 4
  store i32 %32, i32* %5, align 4
  br label %94

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strstr(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @GL_VENDOR_FGLRX, align 4
  store i32 %38, i32* %5, align 4
  br label %94

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @strstr(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %87, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strstr(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %87, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strstr(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %87, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strstr(i8* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strstr(i8* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strstr(i8* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @strstr(i8* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @strstr(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @strstr(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = load i8*, i8** %8, align 8
  %77 = call i64 @strstr(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @strstr(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %9, align 8
  %85 = call i64 @strstr(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39
  %88 = load i32, i32* @GL_VENDOR_MESA, align 4
  store i32 %88, i32* %5, align 4
  br label %94

89:                                               ; preds = %83
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @debugstr_a(i8* %90)
  %92 = call i32 @FIXME(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @GL_VENDOR_UNKNOWN, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %87, %37, %31, %25
  %95 = load i32, i32* %5, align 4
  ret i32 %95
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
