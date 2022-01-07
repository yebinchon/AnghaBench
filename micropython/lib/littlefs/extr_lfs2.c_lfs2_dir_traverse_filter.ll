; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_traverse_filter.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_traverse_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LFS2_TYPE_DELETE = common dso_local global i32 0, align 4
@LFS2_TYPE_SPLICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @lfs2_dir_traverse_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_dir_traverse_filter(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @LFS2_MKTAG(i32 256, i32 0, i32 0)
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @LFS2_MKTAG(i32 2047, i32 1023, i32 0)
  br label %21

19:                                               ; preds = %3
  %20 = call i32 @LFS2_MKTAG(i32 1792, i32 1023, i32 0)
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %48, label %31

31:                                               ; preds = %21
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @lfs2_tag_isdelete(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  %37 = call i32 @LFS2_MKTAG(i32 2047, i32 1023, i32 0)
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @LFS2_TYPE_DELETE, align 4
  %41 = call i32 @LFS2_MKTAG(i32 %40, i32 0, i32 0)
  %42 = call i32 @LFS2_MKTAG(i32 0, i32 1023, i32 0)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %42, %44
  %46 = or i32 %41, %45
  %47 = icmp eq i32 %39, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36, %31, %21
  store i32 1, i32* %4, align 4
  br label %69

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @lfs2_tag_type1(i32 %50)
  %52 = load i64, i64* @LFS2_TYPE_SPLICE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @lfs2_tag_id(i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @lfs2_tag_id(i32 %58)
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @lfs2_tag_splice(i32 %62)
  %64 = call i32 @LFS2_MKTAG(i32 0, i32 %63, i32 0)
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %54, %49
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @LFS2_MKTAG(i32, i32, i32) #1

declare dso_local i64 @lfs2_tag_isdelete(i32) #1

declare dso_local i64 @lfs2_tag_type1(i32) #1

declare dso_local i64 @lfs2_tag_id(i32) #1

declare dso_local i32 @lfs2_tag_splice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
