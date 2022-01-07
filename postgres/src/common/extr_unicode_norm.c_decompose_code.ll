; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_unicode_norm.c_decompose_code.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_unicode_norm.c_decompose_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBASE = common dso_local global i64 0, align 8
@SCOUNT = common dso_local global i64 0, align 8
@LBASE = common dso_local global i64 0, align 8
@VCOUNT = common dso_local global i64 0, align 8
@TCOUNT = common dso_local global i64 0, align 8
@VBASE = common dso_local global i64 0, align 8
@TBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64**, i32*)* @decompose_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompose_code(i64 %0, i64** %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64** %1, i64*** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @SBASE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %3
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @SBASE, align 8
  %24 = load i64, i64* @SCOUNT, align 8
  %25 = add nsw i64 %23, %24
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %21
  %28 = load i64**, i64*** %5, align 8
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %15, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @SBASE, align 8
  %32 = sub nsw i64 %30, %31
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* @LBASE, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @VCOUNT, align 8
  %36 = load i64, i64* @TCOUNT, align 8
  %37 = mul nsw i64 %35, %36
  %38 = sdiv i64 %34, %37
  %39 = add nsw i64 %33, %38
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* @VBASE, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @VCOUNT, align 8
  %43 = load i64, i64* @TCOUNT, align 8
  %44 = mul nsw i64 %42, %43
  %45 = srem i64 %41, %44
  %46 = load i64, i64* @TCOUNT, align 8
  %47 = sdiv i64 %45, %46
  %48 = add nsw i64 %40, %47
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @TCOUNT, align 8
  %51 = srem i64 %49, %50
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64*, i64** %15, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 %52, i64* %57, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i64, i64* %12, align 8
  %62 = load i64*, i64** %15, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  store i64 %61, i64* %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %27
  %73 = load i64, i64* @TBASE, align 8
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64*, i64** %15, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  store i64 %75, i64* %80, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %72, %27
  br label %125

85:                                               ; preds = %21, %3
  %86 = load i64, i64* %4, align 8
  %87 = call i32* @get_code_entry(i64 %86)
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** %7, align 8
  %92 = call i64 @DECOMPOSITION_SIZE(i32* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %90, %85
  %95 = load i64**, i64*** %5, align 8
  %96 = load i64*, i64** %95, align 8
  store i64* %96, i64** %16, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64*, i64** %16, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  store i64 %97, i64* %102, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %125

106:                                              ; preds = %90
  %107 = load i32*, i32** %7, align 8
  %108 = call i64* @get_code_decomposition(i32* %107, i32* %10)
  store i64* %108, i64** %9, align 8
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %122, %106
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load i64*, i64** %9, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %17, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i64**, i64*** %5, align 8
  %121 = load i32*, i32** %6, align 8
  call void @decompose_code(i64 %119, i64** %120, i32* %121)
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %109

125:                                              ; preds = %84, %94, %109
  ret void
}

declare dso_local i32* @get_code_entry(i64) #1

declare dso_local i64 @DECOMPOSITION_SIZE(i32*) #1

declare dso_local i64* @get_code_decomposition(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
