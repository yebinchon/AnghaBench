; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bitmap.c_bitmap_decompress4.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bitmap.c_bitmap_decompress4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32)* @bitmap_decompress4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_decompress4(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @CVAL(i32* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 16
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @False, align 4
  store i32 %20, i32* %6, align 4
  br label %86

21:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %14, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @process_plane(i32* %22, i32 %23, i32 %24, i32* %26, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @process_plane(i32* %38, i32 %39, i32 %40, i32* %42, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %14, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @process_plane(i32* %54, i32 %55, i32 %56, i32* %58, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @process_plane(i32* %70, i32 %71, i32 %72, i32* %74, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %21, %19
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @CVAL(i32*) #1

declare dso_local i32 @process_plane(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
