; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_md5.c_calculateDigestFromBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_md5.c_calculateDigestFromBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @calculateDigestFromBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculateDigestFromBuffer(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [16 x i32], align 16
  %16 = alloca [4 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 1732584193, i32* %18, align 16
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 -271733879, i32* %19, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 -1732584194, i32* %20, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 271733878, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @createPaddedCopyWithLength(i32* %22, i32* %12)
  store i32* %23, i32** %13, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %145

26:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %91, %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 64
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %96

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 3
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %88, %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 16
  br i1 %38, label %39, label %91

39:                                               ; preds = %36
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %14, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %10, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %14, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %10, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  store i32 %65, i32* %63, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %10, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  store i32 %77, i32* %75, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 7
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %39
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %36

91:                                               ; preds = %36
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %94 = call i32 @doTheRounds(i32* %92, i32* %93)
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %8, align 4
  br label %27

96:                                               ; preds = %32
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @free(i32* %97)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %141, %96
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %144

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, 255
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* %10, align 4
  %115 = ashr i32 %114, 8
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %116, 255
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  %124 = ashr i32 %123, 8
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 255
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %126, i32* %131, align 4
  %132 = load i32, i32* %10, align 4
  %133 = ashr i32 %132, 8
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = and i32 %134, 255
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %135, i32* %140, align 4
  br label %141

141:                                              ; preds = %102
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %99

144:                                              ; preds = %99
  store i32 1, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %25
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32* @createPaddedCopyWithLength(i32*, i32*) #1

declare dso_local i32 @doTheRounds(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
