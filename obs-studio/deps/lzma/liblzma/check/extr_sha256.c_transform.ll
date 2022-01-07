; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/check/extr_sha256.c_transform.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/check/extr_sha256.c_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @memcpy(i32* %8, i32* %9, i32 32)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %12, 64
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = call i32 @R(i32 0)
  %16 = call i32 @R(i32 1)
  %17 = call i32 @R(i32 2)
  %18 = call i32 @R(i32 3)
  %19 = call i32 @R(i32 4)
  %20 = call i32 @R(i32 5)
  %21 = call i32 @R(i32 6)
  %22 = call i32 @R(i32 7)
  %23 = call i32 @R(i32 8)
  %24 = call i32 @R(i32 9)
  %25 = call i32 @R(i32 10)
  %26 = call i32 @R(i32 11)
  %27 = call i32 @R(i32 12)
  %28 = call i32 @R(i32 13)
  %29 = call i32 @R(i32 14)
  %30 = call i32 @R(i32 15)
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 16
  store i32 %33, i32* %7, align 4
  br label %11

34:                                               ; preds = %11
  %35 = call i64 @a(i32 0)
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = call i64 @b(i32 0)
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = call i64 @c(i32 0)
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = call i64 @d(i32 0)
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = call i64 @e(i32 0)
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = call i64 @f(i32 0)
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = call i64 @g(i32 0)
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 6
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  %84 = call i64 @h(i32 0)
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 7
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @R(i32) #1

declare dso_local i64 @a(i32) #1

declare dso_local i64 @b(i32) #1

declare dso_local i64 @c(i32) #1

declare dso_local i64 @d(i32) #1

declare dso_local i64 @e(i32) #1

declare dso_local i64 @f(i32) #1

declare dso_local i64 @g(i32) #1

declare dso_local i64 @h(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
