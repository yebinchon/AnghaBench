; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_bd_cmp.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_bd_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LFS2_CMP_LT = common dso_local global i32 0, align 4
@LFS2_CMP_GT = common dso_local global i32 0, align 4
@LFS2_CMP_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64, i32, i64, i8*, i64)* @lfs2_bd_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_bd_cmp(i32* %0, i32* %1, i32* %2, i64 %3, i32 %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %22 = load i8*, i8** %16, align 8
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %18, align 8
  store i64 0, i64* %19, align 8
  br label %24

24:                                               ; preds = %65, %8
  %25 = load i64, i64* %19, align 8
  %26 = load i64, i64* %17, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %19, align 8
  %34 = sub i64 %32, %33
  %35 = load i32, i32* %14, align 4
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %19, align 8
  %38 = add i64 %36, %37
  %39 = call i32 @lfs2_bd_read(i32* %29, i32* %30, i32* %31, i64 %34, i32 %35, i64 %38, i64* %20, i32 1)
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %21, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %21, align 4
  store i32 %43, i32* %9, align 4
  br label %70

44:                                               ; preds = %28
  %45 = load i64, i64* %20, align 8
  %46 = load i64*, i64** %18, align 8
  %47 = load i64, i64* %19, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load i64, i64* %20, align 8
  %53 = load i64*, i64** %18, align 8
  %54 = load i64, i64* %19, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @LFS2_CMP_LT, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @LFS2_CMP_GT, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %9, align 4
  br label %70

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %19, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %19, align 8
  br label %24

68:                                               ; preds = %24
  %69 = load i32, i32* @LFS2_CMP_EQ, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %62, %42
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @lfs2_bd_read(i32*, i32*, i32*, i64, i32, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
