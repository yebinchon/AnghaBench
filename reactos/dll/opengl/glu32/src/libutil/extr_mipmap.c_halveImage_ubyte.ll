; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_ubyte.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_ubyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32)* @halveImage_ubyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halveImage_ubyte(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %8
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %50

30:                                               ; preds = %27, %8
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 1
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @halve1Dimage_ubyte(i32 %41, i32 %42, i32 %43, i32* %44, i32* %45, i32 %46, i32 %47, i32 %48)
  br label %138

50:                                               ; preds = %27
  %51 = load i32, i32* %10, align 4
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %16, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %22, align 4
  %60 = load i32*, i32** %13, align 8
  store i32* %60, i32** %23, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = bitcast i32* %61 to i8*
  store i8* %62, i8** %24, align 8
  store i32 0, i32* %17, align 4
  br label %63

63:                                               ; preds = %135, %50
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %138

67:                                               ; preds = %63
  store i32 0, i32* %18, align 4
  br label %68

68:                                               ; preds = %123, %67
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %126

72:                                               ; preds = %68
  store i32 0, i32* %19, align 4
  br label %73

73:                                               ; preds = %115, %72
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %118

77:                                               ; preds = %73
  %78 = load i8*, i8** %24, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %24, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = bitcast i8* %84 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %80, %86
  %88 = load i8*, i8** %24, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = bitcast i8* %91 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %87, %93
  %95 = load i8*, i8** %24, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %94, %103
  %105 = add nsw i32 %104, 2
  %106 = sdiv i32 %105, 4
  %107 = load i32*, i32** %23, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %23, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %23, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i8*, i8** %24, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %24, align 8
  br label %115

115:                                              ; preds = %77
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %19, align 4
  br label %73

118:                                              ; preds = %73
  %119 = load i32, i32* %16, align 4
  %120 = load i8*, i8** %24, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %24, align 8
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %18, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %18, align 4
  br label %68

126:                                              ; preds = %68
  %127 = load i32, i32* %22, align 4
  %128 = load i8*, i8** %24, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %24, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i8*, i8** %24, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %24, align 8
  br label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %17, align 4
  br label %63

138:                                              ; preds = %36, %63
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @halve1Dimage_ubyte(i32, i32, i32, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
