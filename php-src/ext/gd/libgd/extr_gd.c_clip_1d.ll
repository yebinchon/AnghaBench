; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_clip_1d.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_clip_1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32)* @clip_1d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip_1d(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %5
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %178

21:                                               ; preds = %16
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %23, %25
  %27 = sitofp i32 %26 to double
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %29, %31
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %27, %33
  store double %34, double* %12, align 8
  %35 = load double, double* %12, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sitofp i32 %37 to double
  %39 = fmul double %35, %38
  %40 = fptosi double %39 to i32
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 0, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %21
  %50 = load double, double* %12, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %51, %53
  %55 = sitofp i32 %54 to double
  %56 = fmul double %50, %55
  %57 = fptosi double %56 to i32
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %49, %21
  store i32 1, i32* %6, align 4
  br label %178

64:                                               ; preds = %5
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %117

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %178

75:                                               ; preds = %69
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %77, %79
  %81 = sitofp i32 %80 to double
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %83, %85
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %81, %87
  store double %88, double* %12, align 8
  %89 = load double, double* %12, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %90, %92
  %94 = sitofp i32 %93 to double
  %95 = fmul double %89, %94
  %96 = fptosi double %95 to i32
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %75
  %106 = load double, double* %12, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sitofp i32 %108 to double
  %110 = fmul double %106, %109
  %111 = fptosi double %110 to i32
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, %111
  store i32 %114, i32* %112, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %105, %75
  store i32 1, i32* %6, align 4
  br label %178

117:                                              ; preds = %64
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %149

122:                                              ; preds = %117
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %124, %126
  %128 = sitofp i32 %127 to double
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %130, %132
  %134 = sitofp i32 %133 to double
  %135 = fdiv double %128, %134
  store double %135, double* %12, align 8
  %136 = load double, double* %12, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %137, %139
  %141 = sitofp i32 %140 to double
  %142 = fmul double %136, %141
  %143 = fptosi double %142 to i32
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %143
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32*, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  store i32 1, i32* %6, align 4
  br label %178

149:                                              ; preds = %117
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %149
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %155, %157
  %159 = sitofp i32 %158 to double
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %161, %163
  %165 = sitofp i32 %164 to double
  %166 = fdiv double %159, %165
  store double %166, double* %12, align 8
  %167 = load double, double* %12, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %168, align 4
  %170 = sitofp i32 %169 to double
  %171 = fmul double %167, %170
  %172 = fptosi double %171 to i32
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %174, %172
  store i32 %175, i32* %173, align 4
  %176 = load i32*, i32** %9, align 8
  store i32 0, i32* %176, align 4
  store i32 1, i32* %6, align 4
  br label %178

177:                                              ; preds = %149
  store i32 1, i32* %6, align 4
  br label %178

178:                                              ; preds = %177, %153, %122, %116, %74, %63, %20
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
