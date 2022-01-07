; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_utils.c_get_flexible_vertex_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_utils.c_get_flexible_vertex_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D3DFVF_NORMAL = common dso_local global i32 0, align 4
@D3DFVF_DIFFUSE = common dso_local global i32 0, align 4
@D3DFVF_SPECULAR = common dso_local global i32 0, align 4
@D3DFVF_RESERVED1 = common dso_local global i32 0, align 4
@D3DFVF_POSITION_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected position mask\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_flexible_vertex_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @D3DFVF_NORMAL, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 12
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @D3DFVF_DIFFUSE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @D3DFVF_SPECULAR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @D3DFVF_RESERVED1, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @D3DFVF_POSITION_MASK, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %83 [
    i32 134, label %48
    i32 128, label %53
    i32 133, label %58
    i32 132, label %63
    i32 131, label %68
    i32 130, label %73
    i32 129, label %78
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 12
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %85

53:                                               ; preds = %44
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 16
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %85

58:                                               ; preds = %44
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 16
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %85

63:                                               ; preds = %44
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 20
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %85

68:                                               ; preds = %44
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, 24
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %85

73:                                               ; preds = %44
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, 28
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %85

78:                                               ; preds = %44
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 32
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %3, align 4
  br label %85

83:                                               ; preds = %44
  %84 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %78, %73, %68, %63, %58, %53, %48
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %101, %85
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @GET_TEXCOUNT_FROM_FVF(i32 %88)
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @GET_TEXCOORD_SIZE_FROM_FVF(i32 %92, i32 %93)
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %86

104:                                              ; preds = %86
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @GET_TEXCOUNT_FROM_FVF(i32) #1

declare dso_local i32 @GET_TEXCOORD_SIZE_FROM_FVF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
