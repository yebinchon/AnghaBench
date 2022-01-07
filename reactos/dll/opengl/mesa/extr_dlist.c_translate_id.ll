; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_translate_id.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_dlist.c_translate_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @translate_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_id(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %119 [
    i32 134, label %16
    i32 130, label %23
    i32 131, label %30
    i32 128, label %37
    i32 132, label %44
    i32 129, label %51
    i32 133, label %58
    i32 137, label %65
    i32 136, label %78
    i32 135, label %96
  ]

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %120

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %120

30:                                               ; preds = %3
  %31 = load i32*, i32** %7, align 8
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  br label %120

37:                                               ; preds = %3
  %38 = load i32*, i32** %7, align 8
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %120

44:                                               ; preds = %3
  %45 = load i32*, i32** %7, align 8
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %120

51:                                               ; preds = %3
  %52 = load i32*, i32** %7, align 8
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %4, align 4
  br label %120

58:                                               ; preds = %3
  %59 = load i32*, i32** %7, align 8
  store i32* %59, i32** %14, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %4, align 4
  br label %120

65:                                               ; preds = %3
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = mul nsw i32 2, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32* %70, i32** %9, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 256
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %73, %76
  store i32 %77, i32* %4, align 4
  br label %120

78:                                               ; preds = %3
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 3, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 65536
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 256
  %91 = add nsw i32 %86, %90
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %4, align 4
  br label %120

96:                                               ; preds = %3
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 4, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32* %101, i32** %9, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 16777216
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 65536
  %109 = add nsw i32 %104, %108
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, 256
  %114 = add nsw i32 %109, %113
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  store i32 %118, i32* %4, align 4
  br label %120

119:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %96, %78, %65, %58, %51, %44, %37, %30, %23, %16
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
