; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseExpr.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unsupported expression type for deparse: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @deparseExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deparseExpr(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %68

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @nodeTag(i32* %9)
  switch i32 %10, label %63 [
    i32 128, label %11
    i32 137, label %15
    i32 132, label %19
    i32 129, label %23
    i32 135, label %27
    i32 133, label %31
    i32 136, label %35
    i32 130, label %39
    i32 131, label %43
    i32 138, label %47
    i32 134, label %51
    i32 139, label %55
    i32 140, label %59
  ]

11:                                               ; preds = %8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @deparseVar(i32* %12, i32* %13)
  br label %68

15:                                               ; preds = %8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @deparseConst(i32* %16, i32* %17, i32 0)
  br label %68

19:                                               ; preds = %8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @deparseParam(i32* %20, i32* %21)
  br label %68

23:                                               ; preds = %8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @deparseSubscriptingRef(i32* %24, i32* %25)
  br label %68

27:                                               ; preds = %8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @deparseFuncExpr(i32* %28, i32* %29)
  br label %68

31:                                               ; preds = %8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @deparseOpExpr(i32* %32, i32* %33)
  br label %68

35:                                               ; preds = %8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @deparseDistinctExpr(i32* %36, i32* %37)
  br label %68

39:                                               ; preds = %8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @deparseScalarArrayOpExpr(i32* %40, i32* %41)
  br label %68

43:                                               ; preds = %8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @deparseRelabelType(i32* %44, i32* %45)
  br label %68

47:                                               ; preds = %8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @deparseBoolExpr(i32* %48, i32* %49)
  br label %68

51:                                               ; preds = %8
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @deparseNullTest(i32* %52, i32* %53)
  br label %68

55:                                               ; preds = %8
  %56 = load i32*, i32** %3, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @deparseArrayExpr(i32* %56, i32* %57)
  br label %68

59:                                               ; preds = %8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @deparseAggref(i32* %60, i32* %61)
  br label %68

63:                                               ; preds = %8
  %64 = load i32, i32* @ERROR, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @nodeTag(i32* %65)
  %67 = call i32 @elog(i32 %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %7, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11
  ret void
}

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i32 @deparseVar(i32*, i32*) #1

declare dso_local i32 @deparseConst(i32*, i32*, i32) #1

declare dso_local i32 @deparseParam(i32*, i32*) #1

declare dso_local i32 @deparseSubscriptingRef(i32*, i32*) #1

declare dso_local i32 @deparseFuncExpr(i32*, i32*) #1

declare dso_local i32 @deparseOpExpr(i32*, i32*) #1

declare dso_local i32 @deparseDistinctExpr(i32*, i32*) #1

declare dso_local i32 @deparseScalarArrayOpExpr(i32*, i32*) #1

declare dso_local i32 @deparseRelabelType(i32*, i32*) #1

declare dso_local i32 @deparseBoolExpr(i32*, i32*) #1

declare dso_local i32 @deparseNullTest(i32*, i32*) #1

declare dso_local i32 @deparseArrayExpr(i32*, i32*) #1

declare dso_local i32 @deparseAggref(i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
