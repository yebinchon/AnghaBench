; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_md5.c_createPaddedCopyWithLength.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_md5.c_createPaddedCopyWithLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @createPaddedCopyWithLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @createPaddedCopyWithLength(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %18

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i32 [ 0, %14 ], [ %17, %15 ]
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 64
  %22 = load i32, i32* %8, align 4
  %23 = srem i32 %22, 64
  %24 = sub nsw i32 %21, %23
  %25 = sub nsw i32 %24, 8
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 64
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 8
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i64 @malloc(i32 %40)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %6, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32* null, i32** %3, align 8
  br label %150

45:                                               ; preds = %32
  %46 = load i32*, i32** %4, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(i32* %49, i32* %50, i32 %54)
  br label %56

56:                                               ; preds = %48, %45
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 128, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %72, %56
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %63

75:                                               ; preds = %63
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %8, align 4
  %78 = ashr i32 %77, 29
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 %79, 3
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, 255
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* %11, align 4
  %90 = ashr i32 %89, 8
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %91, 255
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load i32, i32* %11, align 4
  %99 = ashr i32 %98, 8
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, 255
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load i32, i32* %11, align 4
  %108 = ashr i32 %107, 8
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, 255
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %116, 255
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  %124 = ashr i32 %123, 8
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 255
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %126, i32* %131, align 4
  %132 = load i32, i32* %10, align 4
  %133 = ashr i32 %132, 8
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = and i32 %134, 255
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %135, i32* %140, align 4
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %141, 8
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = and i32 %143, 255
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %144, i32* %148, align 4
  %149 = load i32*, i32** %6, align 8
  store i32* %149, i32** %3, align 8
  br label %150

150:                                              ; preds = %75, %44
  %151 = load i32*, i32** %3, align 8
  ret i32* %151
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
