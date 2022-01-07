; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_flexible_vertex_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_flexible_vertex_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WINED3DFVF_TEXCOUNT_MASK = common dso_local global i32 0, align 4
@WINED3DFVF_TEXCOUNT_SHIFT = common dso_local global i32 0, align 4
@WINED3DFVF_NORMAL = common dso_local global i32 0, align 4
@WINED3DFVF_DIFFUSE = common dso_local global i32 0, align 4
@WINED3DFVF_SPECULAR = common dso_local global i32 0, align 4
@WINED3DFVF_PSIZE = common dso_local global i32 0, align 4
@WINED3DFVF_POSITION_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected position mask\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_flexible_vertex_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @WINED3DFVF_TEXCOUNT_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @WINED3DFVF_TEXCOUNT_SHIFT, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @WINED3DFVF_NORMAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 12
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @WINED3DFVF_DIFFUSE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @WINED3DFVF_SPECULAR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @WINED3DFVF_PSIZE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @WINED3DFVF_POSITION_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %94 [
    i32 135, label %54
    i32 129, label %59
    i32 134, label %64
    i32 133, label %69
    i32 132, label %74
    i32 131, label %79
    i32 130, label %84
    i32 128, label %89
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 12
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %96

59:                                               ; preds = %50
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 16
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %96

64:                                               ; preds = %50
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 16
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %96

69:                                               ; preds = %50
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 20
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %96

74:                                               ; preds = %50
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, 24
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %96

79:                                               ; preds = %50
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 28
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %96

84:                                               ; preds = %50
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, 32
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %3, align 4
  br label %96

89:                                               ; preds = %50
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, 16
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %3, align 4
  br label %96

94:                                               ; preds = %50
  %95 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %89, %84, %79, %74, %69, %64, %59, %54
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %111, %96
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @GET_TEXCOORD_SIZE_FROM_FVF(i32 %102, i32 %103)
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %97

114:                                              ; preds = %97
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @GET_TEXCOORD_SIZE_FROM_FVF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
