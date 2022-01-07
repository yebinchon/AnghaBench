; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_weld_component.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_weld_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"D3DDECLTYPE_UNUSED welding not implemented.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Welding of unknown declaration type %d is not implemented.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @weld_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @weld_component(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %107 [
    i32 143, label %15
    i32 140, label %20
    i32 139, label %25
    i32 138, label %30
    i32 145, label %35
    i32 133, label %40
    i32 137, label %45
    i32 135, label %50
    i32 132, label %55
    i32 136, label %60
    i32 134, label %65
    i32 129, label %70
    i32 128, label %75
    i32 131, label %80
    i32 144, label %85
    i32 142, label %90
    i32 141, label %95
    i32 130, label %100
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @weld_float1(i8* %16, i8* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %117

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @weld_float2(i8* %21, i8* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %117

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @weld_float3(i8* %26, i8* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %117

30:                                               ; preds = %4
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @weld_float4(i8* %31, i8* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %117

35:                                               ; preds = %4
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @weld_d3dcolor(i8* %36, i8* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %117

40:                                               ; preds = %4
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @weld_ubyte4(i8* %41, i8* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %117

45:                                               ; preds = %4
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @weld_short2(i8* %46, i8* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %117

50:                                               ; preds = %4
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @weld_short4(i8* %51, i8* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %117

55:                                               ; preds = %4
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @weld_ubyte4n(i8* %56, i8* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %117

60:                                               ; preds = %4
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @weld_short2n(i8* %61, i8* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %117

65:                                               ; preds = %4
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @weld_short4n(i8* %66, i8* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %117

70:                                               ; preds = %4
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @weld_ushort2n(i8* %71, i8* %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %117

75:                                               ; preds = %4
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @weld_ushort4n(i8* %76, i8* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %117

80:                                               ; preds = %4
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @weld_udec3(i8* %81, i8* %82, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %117

85:                                               ; preds = %4
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @weld_dec3n(i8* %86, i8* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %117

90:                                               ; preds = %4
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @weld_float16_2(i8* %91, i8* %92, i32 %93)
  store i32 %94, i32* %5, align 4
  br label %117

95:                                               ; preds = %4
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @weld_float16_4(i8* %96, i8* %97, i32 %98)
  store i32 %99, i32* %5, align 4
  br label %117

100:                                              ; preds = %4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %100
  br label %115

107:                                              ; preds = %4
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  %110 = icmp ne i32 %108, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %8, align 4
  %113 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %107
  br label %115

115:                                              ; preds = %114, %106
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @weld_float1(i8*, i8*, i32) #1

declare dso_local i32 @weld_float2(i8*, i8*, i32) #1

declare dso_local i32 @weld_float3(i8*, i8*, i32) #1

declare dso_local i32 @weld_float4(i8*, i8*, i32) #1

declare dso_local i32 @weld_d3dcolor(i8*, i8*, i32) #1

declare dso_local i32 @weld_ubyte4(i8*, i8*, i32) #1

declare dso_local i32 @weld_short2(i8*, i8*, i32) #1

declare dso_local i32 @weld_short4(i8*, i8*, i32) #1

declare dso_local i32 @weld_ubyte4n(i8*, i8*, i32) #1

declare dso_local i32 @weld_short2n(i8*, i8*, i32) #1

declare dso_local i32 @weld_short4n(i8*, i8*, i32) #1

declare dso_local i32 @weld_ushort2n(i8*, i8*, i32) #1

declare dso_local i32 @weld_ushort4n(i8*, i8*, i32) #1

declare dso_local i32 @weld_udec3(i8*, i8*, i32) #1

declare dso_local i32 @weld_dec3n(i8*, i8*, i32) #1

declare dso_local i32 @weld_float16_2(i8*, i8*, i32) #1

declare dso_local i32 @weld_float16_4(i8*, i8*, i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
