; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_cnt_sml.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_cnt_sml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cnt_sml(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @GETARR(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @GETARR(i32* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @ARRNELEM(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @ARRNELEM(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %3
  store i32 0, i32* %4, align 4
  br label %89

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %76, %28
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @GETARR(i32* %31)
  %33 = ptrtoint i32* %30 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %29
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32* @GETARR(i32* %42)
  %44 = ptrtoint i32* %41 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br label %51

51:                                               ; preds = %40, %29
  %52 = phi i1 [ false, %29 ], [ %50, %40 ]
  br i1 %52, label %53, label %77

53:                                               ; preds = %51
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @CMPTRGM(i32* %54, i32* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %8, align 8
  br label %76

62:                                               ; preds = %53
  %63 = load i32, i32* %13, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %9, align 8
  br label %75

68:                                               ; preds = %62
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %68, %65
  br label %76

76:                                               ; preds = %75, %59
  br label %29

77:                                               ; preds = %51
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %10, align 4
  br label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = call i32 @CALCSML(i32 %78, i32 %79, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %27
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32* @GETARR(i32*) #1

declare dso_local i32 @ARRNELEM(i32*) #1

declare dso_local i32 @CMPTRGM(i32*, i32*) #1

declare dso_local i32 @CALCSML(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
