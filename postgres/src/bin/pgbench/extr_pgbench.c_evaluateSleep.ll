; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_evaluateSleep.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_evaluateSleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: undefined variable \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32*)* @evaluateSleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evaluateSleep(i32* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8**, i8*** %8, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 58
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i8* @getVariable(i32* %19, i8* %23)
  store i8* %24, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8**, i8*** %8, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %8, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %33)
  store i32 0, i32* %5, align 4
  br label %72

35:                                               ; preds = %18
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* %11, align 4
  br label %43

38:                                               ; preds = %4
  %39 = load i8**, i8*** %8, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @atoi(i8* %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i8**, i8*** %8, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @pg_strcasecmp(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 1000
  store i32 %54, i32* %11, align 4
  br label %65

55:                                               ; preds = %46
  %56 = load i8**, i8*** %8, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @pg_strcasecmp(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %62, 1000000
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %55
  br label %65

65:                                               ; preds = %64, %52
  br label %69

66:                                               ; preds = %43
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 %67, 1000000
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %26
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i8* @getVariable(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
