; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgquadtreeproc.c_getQuadrant.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgquadtreeproc.c_getQuadrant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@point_above = common dso_local global i32 0, align 4
@point_horiz = common dso_local global i32 0, align 4
@point_right = common dso_local global i32 0, align 4
@point_vert = common dso_local global i32 0, align 4
@point_below = common dso_local global i32 0, align 4
@point_left = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"getQuadrant: impossible case\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @getQuadrant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getQuadrant(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* @point_above, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @SPTEST(i32 %6, i32* %7, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @point_horiz, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @SPTEST(i32 %12, i32* %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @point_right, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @SPTEST(i32 %18, i32* %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @point_vert, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @SPTEST(i32 %24, i32* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %17
  store i32 1, i32* %3, align 4
  br label %84

30:                                               ; preds = %23, %11
  %31 = load i32, i32* @point_below, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @SPTEST(i32 %31, i32* %32, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load i32, i32* @point_right, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @SPTEST(i32 %37, i32* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @point_vert, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @SPTEST(i32 %43, i32* %44, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %36
  store i32 2, i32* %3, align 4
  br label %84

49:                                               ; preds = %42, %30
  %50 = load i32, i32* @point_below, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @SPTEST(i32 %50, i32* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @point_horiz, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i64 @SPTEST(i32 %56, i32* %57, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55, %49
  %62 = load i32, i32* @point_left, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i64 @SPTEST(i32 %62, i32* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 3, i32* %3, align 4
  br label %84

68:                                               ; preds = %61, %55
  %69 = load i32, i32* @point_above, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i64 @SPTEST(i32 %69, i32* %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i32, i32* @point_left, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i64 @SPTEST(i32 %75, i32* %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 4, i32* %3, align 4
  br label %84

81:                                               ; preds = %74, %68
  %82 = load i32, i32* @ERROR, align 4
  %83 = call i32 @elog(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %80, %67, %48, %29
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @SPTEST(i32, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
