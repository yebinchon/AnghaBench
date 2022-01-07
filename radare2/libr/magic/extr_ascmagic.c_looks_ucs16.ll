; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_ascmagic.c_looks_ucs16.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_ascmagic.c_looks_ucs16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text_chars = common dso_local global i64* null, align 8
@T = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64*)* @looks_ucs16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @looks_ucs16(i32* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %121

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 254
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %39

26:                                               ; preds = %20, %15
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 254
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %38

37:                                               ; preds = %31, %26
  store i32 0, i32* %5, align 4
  br label %121

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i64*, i64** %9, align 8
  store i64 0, i64* %40, align 8
  store i64 2, i64* %11, align 8
  br label %41

41:                                               ; preds = %115, %39
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %42, 1
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %118

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 256, %58
  %60 = add nsw i32 %54, %59
  %61 = load i32*, i32** %8, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %65, align 4
  br label %83

66:                                               ; preds = %46
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 256, %75
  %77 = add nsw i32 %70, %76
  %78 = load i32*, i32** %8, align 8
  %79 = load i64*, i64** %9, align 8
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %82, align 4
  br label %83

83:                                               ; preds = %66, %49
  %84 = load i32*, i32** %8, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %86, 1
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 65534
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %121

92:                                               ; preds = %83
  %93 = load i32*, i32** %8, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %95, 1
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 128
  br i1 %99, label %100, label %114

100:                                              ; preds = %92
  %101 = load i64*, i64** @text_chars, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %104, 1
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %101, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @T, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %121

114:                                              ; preds = %100, %92
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %116, 2
  store i64 %117, i64* %11, align 8
  br label %41

118:                                              ; preds = %41
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 1, %119
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %118, %113, %91, %37, %14
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
