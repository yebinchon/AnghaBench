; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_DoExtension.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_in.c_DoExtension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8, i32 }

@FALSE = common dso_local global i32 0, align 4
@Gif89 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @DoExtension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoExtension(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [256 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %39 [
    i32 249, label %12
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 0, i32 4)
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %17 = load i32*, i32** %9, align 8
  %18 = call i64 @GetDataBlock(i32* %15, i8* %16, i32* %17)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %20 = load i8, i8* %19, align 16
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 3
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %12
  br label %30

30:                                               ; preds = %36, %29
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @GetDataBlock(i32* %31, i8* %32, i32* %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %30

37:                                               ; preds = %30
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %5, align 4
  br label %50

39:                                               ; preds = %4
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %47, %40
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @GetDataBlock(i32* %42, i8* %43, i32* %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %41

48:                                               ; preds = %41
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %37
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @GetDataBlock(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
