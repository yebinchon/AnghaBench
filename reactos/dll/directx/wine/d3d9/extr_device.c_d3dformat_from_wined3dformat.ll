; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_device.c_d3dformat_from_wined3dformat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_device.c_d3dformat_from_wined3dformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D3DFMT_UNKNOWN = common dso_local global i32 0, align 4
@D3DFMT_R8G8B8 = common dso_local global i32 0, align 4
@D3DFMT_A8R8G8B8 = common dso_local global i32 0, align 4
@D3DFMT_X8R8G8B8 = common dso_local global i32 0, align 4
@D3DFMT_R5G6B5 = common dso_local global i32 0, align 4
@D3DFMT_X1R5G5B5 = common dso_local global i32 0, align 4
@D3DFMT_A1R5G5B5 = common dso_local global i32 0, align 4
@D3DFMT_A4R4G4B4 = common dso_local global i32 0, align 4
@D3DFMT_R3G3B2 = common dso_local global i32 0, align 4
@D3DFMT_A8 = common dso_local global i32 0, align 4
@D3DFMT_A8R3G3B2 = common dso_local global i32 0, align 4
@D3DFMT_X4R4G4B4 = common dso_local global i32 0, align 4
@D3DFMT_A2B10G10R10 = common dso_local global i32 0, align 4
@D3DFMT_A8B8G8R8 = common dso_local global i32 0, align 4
@D3DFMT_X8B8G8R8 = common dso_local global i32 0, align 4
@D3DFMT_G16R16 = common dso_local global i32 0, align 4
@D3DFMT_A2R10G10B10 = common dso_local global i32 0, align 4
@D3DFMT_A16B16G16R16 = common dso_local global i32 0, align 4
@D3DFMT_A8P8 = common dso_local global i32 0, align 4
@D3DFMT_P8 = common dso_local global i32 0, align 4
@D3DFMT_L8 = common dso_local global i32 0, align 4
@D3DFMT_A8L8 = common dso_local global i32 0, align 4
@D3DFMT_A4L4 = common dso_local global i32 0, align 4
@D3DFMT_V8U8 = common dso_local global i32 0, align 4
@D3DFMT_L6V5U5 = common dso_local global i32 0, align 4
@D3DFMT_X8L8V8U8 = common dso_local global i32 0, align 4
@D3DFMT_Q8W8V8U8 = common dso_local global i32 0, align 4
@D3DFMT_V16U16 = common dso_local global i32 0, align 4
@D3DFMT_A2W10V10U10 = common dso_local global i32 0, align 4
@D3DFMT_D16_LOCKABLE = common dso_local global i32 0, align 4
@D3DFMT_D32 = common dso_local global i32 0, align 4
@D3DFMT_D15S1 = common dso_local global i32 0, align 4
@D3DFMT_D24S8 = common dso_local global i32 0, align 4
@D3DFMT_D24X8 = common dso_local global i32 0, align 4
@D3DFMT_D24X4S4 = common dso_local global i32 0, align 4
@D3DFMT_D16 = common dso_local global i32 0, align 4
@D3DFMT_L16 = common dso_local global i32 0, align 4
@D3DFMT_D32F_LOCKABLE = common dso_local global i32 0, align 4
@D3DFMT_D24FS8 = common dso_local global i32 0, align 4
@D3DFMT_INDEX16 = common dso_local global i32 0, align 4
@D3DFMT_INDEX32 = common dso_local global i32 0, align 4
@D3DFMT_Q16W16V16U16 = common dso_local global i32 0, align 4
@D3DFMT_R16F = common dso_local global i32 0, align 4
@D3DFMT_G16R16F = common dso_local global i32 0, align 4
@D3DFMT_A16B16G16R16F = common dso_local global i32 0, align 4
@D3DFMT_R32F = common dso_local global i32 0, align 4
@D3DFMT_G32R32F = common dso_local global i32 0, align 4
@D3DFMT_A32B32G32R32F = common dso_local global i32 0, align 4
@D3DFMT_CxV8U8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unhandled wined3d format %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3dformat_from_wined3dformat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %3, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @isprint(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @isprint(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @isprint(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @isprint(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* %2, align 4
  br label %134

30:                                               ; preds = %22, %16, %10, %1
  %31 = load i32, i32* %3, align 4
  switch i32 %31, label %130 [
    i32 129, label %32
    i32 165, label %34
    i32 167, label %36
    i32 166, label %38
    i32 168, label %40
    i32 169, label %42
    i32 170, label %44
    i32 172, label %46
    i32 173, label %48
    i32 176, label %50
    i32 174, label %52
    i32 171, label %54
    i32 153, label %56
    i32 137, label %58
    i32 136, label %60
    i32 146, label %62
    i32 175, label %64
    i32 149, label %66
    i32 154, label %68
    i32 155, label %70
    i32 156, label %72
    i32 157, label %74
    i32 158, label %76
    i32 135, label %78
    i32 139, label %80
    i32 133, label %82
    i32 138, label %84
    i32 147, label %86
    i32 152, label %88
    i32 164, label %90
    i32 160, label %92
    i32 132, label %94
    i32 162, label %96
    i32 128, label %98
    i32 131, label %100
    i32 163, label %102
    i32 159, label %104
    i32 161, label %106
    i32 130, label %108
    i32 144, label %110
    i32 140, label %112
    i32 150, label %114
    i32 145, label %116
    i32 148, label %118
    i32 151, label %120
    i32 141, label %122
    i32 142, label %124
    i32 143, label %126
    i32 134, label %128
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @D3DFMT_UNKNOWN, align 4
  store i32 %33, i32* %2, align 4
  br label %134

34:                                               ; preds = %30
  %35 = load i32, i32* @D3DFMT_R8G8B8, align 4
  store i32 %35, i32* %2, align 4
  br label %134

36:                                               ; preds = %30
  %37 = load i32, i32* @D3DFMT_A8R8G8B8, align 4
  store i32 %37, i32* %2, align 4
  br label %134

38:                                               ; preds = %30
  %39 = load i32, i32* @D3DFMT_X8R8G8B8, align 4
  store i32 %39, i32* %2, align 4
  br label %134

40:                                               ; preds = %30
  %41 = load i32, i32* @D3DFMT_R5G6B5, align 4
  store i32 %41, i32* %2, align 4
  br label %134

42:                                               ; preds = %30
  %43 = load i32, i32* @D3DFMT_X1R5G5B5, align 4
  store i32 %43, i32* %2, align 4
  br label %134

44:                                               ; preds = %30
  %45 = load i32, i32* @D3DFMT_A1R5G5B5, align 4
  store i32 %45, i32* %2, align 4
  br label %134

46:                                               ; preds = %30
  %47 = load i32, i32* @D3DFMT_A4R4G4B4, align 4
  store i32 %47, i32* %2, align 4
  br label %134

48:                                               ; preds = %30
  %49 = load i32, i32* @D3DFMT_R3G3B2, align 4
  store i32 %49, i32* %2, align 4
  br label %134

50:                                               ; preds = %30
  %51 = load i32, i32* @D3DFMT_A8, align 4
  store i32 %51, i32* %2, align 4
  br label %134

52:                                               ; preds = %30
  %53 = load i32, i32* @D3DFMT_A8R3G3B2, align 4
  store i32 %53, i32* %2, align 4
  br label %134

54:                                               ; preds = %30
  %55 = load i32, i32* @D3DFMT_X4R4G4B4, align 4
  store i32 %55, i32* %2, align 4
  br label %134

56:                                               ; preds = %30
  %57 = load i32, i32* @D3DFMT_A2B10G10R10, align 4
  store i32 %57, i32* %2, align 4
  br label %134

58:                                               ; preds = %30
  %59 = load i32, i32* @D3DFMT_A8B8G8R8, align 4
  store i32 %59, i32* %2, align 4
  br label %134

60:                                               ; preds = %30
  %61 = load i32, i32* @D3DFMT_X8B8G8R8, align 4
  store i32 %61, i32* %2, align 4
  br label %134

62:                                               ; preds = %30
  %63 = load i32, i32* @D3DFMT_G16R16, align 4
  store i32 %63, i32* %2, align 4
  br label %134

64:                                               ; preds = %30
  %65 = load i32, i32* @D3DFMT_A2R10G10B10, align 4
  store i32 %65, i32* %2, align 4
  br label %134

66:                                               ; preds = %30
  %67 = load i32, i32* @D3DFMT_A16B16G16R16, align 4
  store i32 %67, i32* %2, align 4
  br label %134

68:                                               ; preds = %30
  %69 = load i32, i32* @D3DFMT_A8P8, align 4
  store i32 %69, i32* %2, align 4
  br label %134

70:                                               ; preds = %30
  %71 = load i32, i32* @D3DFMT_P8, align 4
  store i32 %71, i32* %2, align 4
  br label %134

72:                                               ; preds = %30
  %73 = load i32, i32* @D3DFMT_L8, align 4
  store i32 %73, i32* %2, align 4
  br label %134

74:                                               ; preds = %30
  %75 = load i32, i32* @D3DFMT_A8L8, align 4
  store i32 %75, i32* %2, align 4
  br label %134

76:                                               ; preds = %30
  %77 = load i32, i32* @D3DFMT_A4L4, align 4
  store i32 %77, i32* %2, align 4
  br label %134

78:                                               ; preds = %30
  %79 = load i32, i32* @D3DFMT_V8U8, align 4
  store i32 %79, i32* %2, align 4
  br label %134

80:                                               ; preds = %30
  %81 = load i32, i32* @D3DFMT_L6V5U5, align 4
  store i32 %81, i32* %2, align 4
  br label %134

82:                                               ; preds = %30
  %83 = load i32, i32* @D3DFMT_X8L8V8U8, align 4
  store i32 %83, i32* %2, align 4
  br label %134

84:                                               ; preds = %30
  %85 = load i32, i32* @D3DFMT_Q8W8V8U8, align 4
  store i32 %85, i32* %2, align 4
  br label %134

86:                                               ; preds = %30
  %87 = load i32, i32* @D3DFMT_V16U16, align 4
  store i32 %87, i32* %2, align 4
  br label %134

88:                                               ; preds = %30
  %89 = load i32, i32* @D3DFMT_A2W10V10U10, align 4
  store i32 %89, i32* %2, align 4
  br label %134

90:                                               ; preds = %30
  %91 = load i32, i32* @D3DFMT_D16_LOCKABLE, align 4
  store i32 %91, i32* %2, align 4
  br label %134

92:                                               ; preds = %30
  %93 = load i32, i32* @D3DFMT_D32, align 4
  store i32 %93, i32* %2, align 4
  br label %134

94:                                               ; preds = %30
  %95 = load i32, i32* @D3DFMT_D15S1, align 4
  store i32 %95, i32* %2, align 4
  br label %134

96:                                               ; preds = %30
  %97 = load i32, i32* @D3DFMT_D24S8, align 4
  store i32 %97, i32* %2, align 4
  br label %134

98:                                               ; preds = %30
  %99 = load i32, i32* @D3DFMT_D24X8, align 4
  store i32 %99, i32* %2, align 4
  br label %134

100:                                              ; preds = %30
  %101 = load i32, i32* @D3DFMT_D24X4S4, align 4
  store i32 %101, i32* %2, align 4
  br label %134

102:                                              ; preds = %30
  %103 = load i32, i32* @D3DFMT_D16, align 4
  store i32 %103, i32* %2, align 4
  br label %134

104:                                              ; preds = %30
  %105 = load i32, i32* @D3DFMT_L16, align 4
  store i32 %105, i32* %2, align 4
  br label %134

106:                                              ; preds = %30
  %107 = load i32, i32* @D3DFMT_D32F_LOCKABLE, align 4
  store i32 %107, i32* %2, align 4
  br label %134

108:                                              ; preds = %30
  %109 = load i32, i32* @D3DFMT_D24FS8, align 4
  store i32 %109, i32* %2, align 4
  br label %134

110:                                              ; preds = %30
  %111 = load i32, i32* @D3DFMT_INDEX16, align 4
  store i32 %111, i32* %2, align 4
  br label %134

112:                                              ; preds = %30
  %113 = load i32, i32* @D3DFMT_INDEX32, align 4
  store i32 %113, i32* %2, align 4
  br label %134

114:                                              ; preds = %30
  %115 = load i32, i32* @D3DFMT_Q16W16V16U16, align 4
  store i32 %115, i32* %2, align 4
  br label %134

116:                                              ; preds = %30
  %117 = load i32, i32* @D3DFMT_R16F, align 4
  store i32 %117, i32* %2, align 4
  br label %134

118:                                              ; preds = %30
  %119 = load i32, i32* @D3DFMT_G16R16F, align 4
  store i32 %119, i32* %2, align 4
  br label %134

120:                                              ; preds = %30
  %121 = load i32, i32* @D3DFMT_A16B16G16R16F, align 4
  store i32 %121, i32* %2, align 4
  br label %134

122:                                              ; preds = %30
  %123 = load i32, i32* @D3DFMT_R32F, align 4
  store i32 %123, i32* %2, align 4
  br label %134

124:                                              ; preds = %30
  %125 = load i32, i32* @D3DFMT_G32R32F, align 4
  store i32 %125, i32* %2, align 4
  br label %134

126:                                              ; preds = %30
  %127 = load i32, i32* @D3DFMT_A32B32G32R32F, align 4
  store i32 %127, i32* %2, align 4
  br label %134

128:                                              ; preds = %30
  %129 = load i32, i32* @D3DFMT_CxV8U8, align 4
  store i32 %129, i32* %2, align 4
  br label %134

130:                                              ; preds = %30
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @D3DFMT_UNKNOWN, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %28
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
