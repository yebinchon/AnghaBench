; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_png.c_png_exp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_png.c_png_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@png_32bit_exp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @png_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_exp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %105

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %8, 1048575
  br i1 %9, label %10, label %105

10:                                               ; preds = %7
  %11 = load i32*, i32** @png_32bit_exp, align 8
  %12 = load i32, i32* %3, align 4
  %13 = ashr i32 %12, 12
  %14 = and i32 %13, 15
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 2048
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 16
  %24 = mul i32 %23, 44938
  %25 = add i32 %24, 16
  %26 = lshr i32 %25, 5
  %27 = load i32, i32* %4, align 4
  %28 = sub i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %10
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 1024
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 16
  %36 = mul i32 %35, 45181
  %37 = add i32 %36, 32
  %38 = lshr i32 %37, 6
  %39 = load i32, i32* %4, align 4
  %40 = sub i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %29
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 512
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 16
  %48 = mul i32 %47, 45303
  %49 = add i32 %48, 64
  %50 = lshr i32 %49, 7
  %51 = load i32, i32* %4, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %41
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, 256
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = ashr i32 %58, 16
  %60 = mul i32 %59, 45365
  %61 = add i32 %60, 128
  %62 = lshr i32 %61, 8
  %63 = load i32, i32* %4, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %57, %53
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = ashr i32 %70, 16
  %72 = mul i32 %71, 45395
  %73 = add i32 %72, 256
  %74 = lshr i32 %73, 9
  %75 = load i32, i32* %4, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %69, %65
  %78 = load i32, i32* %3, align 4
  %79 = and i32 %78, 64
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4
  %83 = ashr i32 %82, 16
  %84 = mul i32 %83, 45410
  %85 = add i32 %84, 512
  %86 = lshr i32 %85, 10
  %87 = load i32, i32* %4, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %81, %77
  %90 = load i32, i32* %4, align 4
  %91 = ashr i32 %90, 16
  %92 = mul i32 %91, 355
  %93 = load i32, i32* %3, align 4
  %94 = and i32 %93, 63
  %95 = mul i32 %92, %94
  %96 = add i32 %95, 256
  %97 = lshr i32 %96, 9
  %98 = load i32, i32* %4, align 4
  %99 = sub i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %3, align 4
  %101 = ashr i32 %100, 16
  %102 = load i32, i32* %4, align 4
  %103 = ashr i32 %102, %101
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %113

105:                                              ; preds = %7, %1
  %106 = load i32, i32* %3, align 4
  %107 = icmp sle i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32*, i32** @png_32bit_exp, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %108, %89
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
