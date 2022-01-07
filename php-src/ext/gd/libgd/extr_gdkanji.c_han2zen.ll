; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdkanji.c_han2zen.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdkanji.c_han2zen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@__const.han2zen.mtable = private unnamed_addr constant [63 x [2 x i32]] [[2 x i32] [i32 129, i32 66], [2 x i32] [i32 129, i32 117], [2 x i32] [i32 129, i32 118], [2 x i32] [i32 129, i32 65], [2 x i32] [i32 129, i32 69], [2 x i32] [i32 131, i32 146], [2 x i32] [i32 131, i32 64], [2 x i32] [i32 131, i32 66], [2 x i32] [i32 131, i32 68], [2 x i32] [i32 131, i32 70], [2 x i32] [i32 131, i32 72], [2 x i32] [i32 131, i32 131], [2 x i32] [i32 131, i32 133], [2 x i32] [i32 131, i32 135], [2 x i32] [i32 131, i32 98], [2 x i32] [i32 129, i32 91], [2 x i32] [i32 131, i32 65], [2 x i32] [i32 131, i32 67], [2 x i32] [i32 131, i32 69], [2 x i32] [i32 131, i32 71], [2 x i32] [i32 131, i32 73], [2 x i32] [i32 131, i32 74], [2 x i32] [i32 131, i32 76], [2 x i32] [i32 131, i32 78], [2 x i32] [i32 131, i32 80], [2 x i32] [i32 131, i32 82], [2 x i32] [i32 131, i32 84], [2 x i32] [i32 131, i32 86], [2 x i32] [i32 131, i32 88], [2 x i32] [i32 131, i32 90], [2 x i32] [i32 131, i32 92], [2 x i32] [i32 131, i32 94], [2 x i32] [i32 131, i32 96], [2 x i32] [i32 131, i32 99], [2 x i32] [i32 131, i32 101], [2 x i32] [i32 131, i32 103], [2 x i32] [i32 131, i32 105], [2 x i32] [i32 131, i32 106], [2 x i32] [i32 131, i32 107], [2 x i32] [i32 131, i32 108], [2 x i32] [i32 131, i32 109], [2 x i32] [i32 131, i32 110], [2 x i32] [i32 131, i32 113], [2 x i32] [i32 131, i32 116], [2 x i32] [i32 131, i32 119], [2 x i32] [i32 131, i32 122], [2 x i32] [i32 131, i32 125], [2 x i32] [i32 131, i32 126], [2 x i32] [i32 131, i32 128], [2 x i32] [i32 131, i32 129], [2 x i32] [i32 131, i32 130], [2 x i32] [i32 131, i32 132], [2 x i32] [i32 131, i32 134], [2 x i32] [i32 131, i32 136], [2 x i32] [i32 131, i32 137], [2 x i32] [i32 131, i32 138], [2 x i32] [i32 131, i32 139], [2 x i32] [i32 131, i32 140], [2 x i32] [i32 131, i32 141], [2 x i32] [i32 131, i32 143], [2 x i32] [i32 131, i32 147], [2 x i32] [i32 129, i32 74], [2 x i32] [i32 129, i32 75]], align 16
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @han2zen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @han2zen(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [63 x [2 x i32]], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %7, align 4
  %13 = bitcast [63 x [2 x i32]]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([63 x [2 x i32]]* @__const.han2zen.mtable to i8*), i64 504, i1 false)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 222
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_DAKU(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %6, align 4
  br label %36

24:                                               ; preds = %17, %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 223
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_HANDAKU(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %28, %24
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 161
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* %8, i64 0, i64 %39
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %3, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 161
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [63 x [2 x i32]], [63 x [2 x i32]]* %8, i64 0, i64 %46
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %36
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 74
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %59, 103
  br i1 %60, label %69, label %61

61:                                               ; preds = %57, %53
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 110
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %67, 122
  br i1 %68, label %69, label %73

69:                                               ; preds = %65, %57
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %84

73:                                               ; preds = %65, %61
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 131
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 69
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %73
  %82 = load i32*, i32** %4, align 8
  store i32 148, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83, %69
  br label %101

85:                                               ; preds = %36
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 110
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %94, 122
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %96, %92, %88, %85
  br label %101

101:                                              ; preds = %100, %84
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IS_DAKU(i32) #2

declare dso_local i64 @IS_HANDAKU(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
