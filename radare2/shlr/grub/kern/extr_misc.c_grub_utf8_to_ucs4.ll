; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_misc.c_grub_utf8_to_ucs4.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_misc.c_grub_utf8_to_ucs4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @grub_utf8_to_ucs4(i32* %0, i64 %1, i32* %2, i64 %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32** %4, i32*** %10, align 8
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32**, i32*** %10, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = load i32**, i32*** %10, align 8
  store i32* %19, i32** %20, align 8
  br label %21

21:                                               ; preds = %18, %5
  br label %22

22:                                               ; preds = %126, %21
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br i1 %29, label %30, label %127

30:                                               ; preds = %28
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %8, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  %44 = and i32 %43, 192
  %45 = icmp ne i32 %44, 128
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  store i32 63, i32* %13, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 -1
  store i32* %48, i32** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %51, %46
  store i32 0, i32* %12, align 4
  br label %64

55:                                               ; preds = %42
  %56 = load i32, i32* %13, align 4
  %57 = shl i32 %56, 6
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = and i32 %58, 63
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %55, %54
  br label %117

65:                                               ; preds = %39
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %127

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = and i32 %70, 128
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %13, align 4
  br label %116

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = and i32 %76, 224
  %78 = icmp eq i32 %77, 192
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  store i32 1, i32* %12, align 4
  %80 = load i32, i32* %14, align 4
  %81 = and i32 %80, 31
  store i32 %81, i32* %13, align 4
  br label %115

82:                                               ; preds = %75
  %83 = load i32, i32* %14, align 4
  %84 = and i32 %83, 240
  %85 = icmp eq i32 %84, 224
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  store i32 2, i32* %12, align 4
  %87 = load i32, i32* %14, align 4
  %88 = and i32 %87, 15
  store i32 %88, i32* %13, align 4
  br label %114

89:                                               ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = and i32 %90, 248
  %92 = icmp eq i32 %91, 240
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  store i32 3, i32* %12, align 4
  %94 = load i32, i32* %14, align 4
  %95 = and i32 %94, 7
  store i32 %95, i32* %13, align 4
  br label %113

96:                                               ; preds = %89
  %97 = load i32, i32* %14, align 4
  %98 = and i32 %97, 252
  %99 = icmp eq i32 %98, 248
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  store i32 4, i32* %12, align 4
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %101, 3
  store i32 %102, i32* %13, align 4
  br label %112

103:                                              ; preds = %96
  %104 = load i32, i32* %14, align 4
  %105 = and i32 %104, 254
  %106 = icmp eq i32 %105, 252
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  store i32 5, i32* %12, align 4
  %108 = load i32, i32* %14, align 4
  %109 = and i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %111

110:                                              ; preds = %103
  store i32 63, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %110, %107
  br label %112

112:                                              ; preds = %111, %100
  br label %113

113:                                              ; preds = %112, %93
  br label %114

114:                                              ; preds = %113, %86
  br label %115

115:                                              ; preds = %114, %79
  br label %116

116:                                              ; preds = %115, %73
  br label %117

117:                                              ; preds = %116, %64
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %13, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  %124 = load i64, i64* %7, align 8
  %125 = add nsw i64 %124, -1
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %120, %117
  br label %22

127:                                              ; preds = %68, %28
  %128 = load i32**, i32*** %10, align 8
  %129 = icmp ne i32** %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32*, i32** %8, align 8
  %132 = load i32**, i32*** %10, align 8
  store i32* %131, i32** %132, align 8
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32*, i32** %11, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = ptrtoint i32* %134 to i64
  %137 = ptrtoint i32* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 4
  ret i64 %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
