; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_draw_ass_rgba.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_draw_ass_rgba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i8*, i64, i32, i32, i32)* @draw_ass_rgba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_ass_rgba(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = ashr i32 %36, 24
  %38 = and i32 %37, 255
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %18, align 4
  %40 = ashr i32 %39, 16
  %41 = and i32 %40, 255
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %18, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %18, align 4
  %46 = and i32 %45, 255
  %47 = sub nsw i32 255, %46
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %15, align 8
  %51 = mul i64 %49, %50
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %51, %54
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %14, align 8
  store i32 0, i32* %23, align 4
  br label %58

58:                                               ; preds = %157, %9
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %167

62:                                               ; preds = %58
  %63 = load i8*, i8** %14, align 8
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %24, align 8
  store i32 0, i32* %25, align 4
  br label %65

65:                                               ; preds = %153, %62
  %66 = load i32, i32* %25, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %156

69:                                               ; preds = %65
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %25, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  store i32 %75, i32* %26, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %22, align 4
  %78 = mul i32 %76, %77
  %79 = load i32, i32* %26, align 4
  %80 = mul i32 %78, %79
  store i32 %80, i32* %27, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %22, align 4
  %83 = mul i32 %81, %82
  %84 = load i32, i32* %26, align 4
  %85 = mul i32 %83, %84
  store i32 %85, i32* %28, align 4
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %22, align 4
  %88 = mul i32 %86, %87
  %89 = load i32, i32* %26, align 4
  %90 = mul i32 %88, %89
  store i32 %90, i32* %29, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %26, align 4
  %93 = mul i32 %91, %92
  store i32 %93, i32* %30, align 4
  %94 = load i32*, i32** %24, align 8
  %95 = load i32, i32* %25, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %31, align 4
  %99 = load i32, i32* %31, align 4
  %100 = and i32 %99, 255
  store i32 %100, i32* %32, align 4
  %101 = load i32, i32* %31, align 4
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 255
  store i32 %103, i32* %33, align 4
  %104 = load i32, i32* %31, align 4
  %105 = ashr i32 %104, 16
  %106 = and i32 %105, 255
  store i32 %106, i32* %34, align 4
  %107 = load i32, i32* %31, align 4
  %108 = ashr i32 %107, 24
  %109 = and i32 %108, 255
  store i32 %109, i32* %35, align 4
  %110 = load i32, i32* %29, align 4
  %111 = load i32, i32* %32, align 4
  %112 = load i32, i32* %30, align 4
  %113 = sub nsw i32 65025, %112
  %114 = mul i32 %111, %113
  %115 = add i32 %110, %114
  %116 = udiv i32 %115, 65025
  store i32 %116, i32* %32, align 4
  %117 = load i32, i32* %28, align 4
  %118 = load i32, i32* %33, align 4
  %119 = load i32, i32* %30, align 4
  %120 = sub nsw i32 65025, %119
  %121 = mul i32 %118, %120
  %122 = add i32 %117, %121
  %123 = udiv i32 %122, 65025
  store i32 %123, i32* %33, align 4
  %124 = load i32, i32* %27, align 4
  %125 = load i32, i32* %34, align 4
  %126 = load i32, i32* %30, align 4
  %127 = sub nsw i32 65025, %126
  %128 = mul i32 %125, %127
  %129 = add i32 %124, %128
  %130 = udiv i32 %129, 65025
  store i32 %130, i32* %34, align 4
  %131 = load i32, i32* %30, align 4
  %132 = mul nsw i32 %131, 255
  %133 = load i32, i32* %35, align 4
  %134 = load i32, i32* %30, align 4
  %135 = sub nsw i32 65025, %134
  %136 = mul i32 %133, %135
  %137 = add i32 %132, %136
  %138 = udiv i32 %137, 65025
  store i32 %138, i32* %35, align 4
  %139 = load i32, i32* %32, align 4
  %140 = load i32, i32* %33, align 4
  %141 = shl i32 %140, 8
  %142 = or i32 %139, %141
  %143 = load i32, i32* %34, align 4
  %144 = shl i32 %143, 16
  %145 = or i32 %142, %144
  %146 = load i32, i32* %35, align 4
  %147 = shl i32 %146, 24
  %148 = or i32 %145, %147
  %149 = load i32*, i32** %24, align 8
  %150 = load i32, i32* %25, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  br label %153

153:                                              ; preds = %69
  %154 = load i32, i32* %25, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %25, align 4
  br label %65

156:                                              ; preds = %65
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %23, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %23, align 4
  %160 = load i64, i64* %15, align 8
  %161 = load i8*, i8** %14, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 %160
  store i8* %162, i8** %14, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load i8*, i8** %10, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %10, align 8
  br label %58

167:                                              ; preds = %58
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
