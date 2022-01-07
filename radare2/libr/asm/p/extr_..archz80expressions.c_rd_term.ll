; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_rd_term.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_rd_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%5d (0x%04x): Starting to read term (string=%s).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%5d (0x%04x): rd_term returned %d (%04x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32, i32*, i32)* @rd_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_term(i8** %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @verbose, align 4
  %13 = icmp sge i32 %12, 6
  br i1 %13, label %14, label %25

14:                                               ; preds = %5
  %15 = load i32, i32* @stderr, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %17 = load i64, i64* @sp, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @addr, align 4
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i8* %23)
  br label %25

25:                                               ; preds = %14, %5
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @rd_factor(i8** %26, i32* %27, i32 %28, i32* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @delspc(i8* %33)
  %35 = load i8**, i8*** %6, align 8
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %88, %25
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 45
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi i1 [ true, %36 ], [ %47, %42 ]
  br i1 %49, label %50, label %93

50:                                               ; preds = %48
  %51 = load i32*, i32** %9, align 8
  store i32 0, i32* %51, align 4
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 43
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load i8**, i8*** %6, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %58, align 8
  %61 = load i8**, i8*** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @rd_factor(i8** %61, i32* %62, i32 %63, i32* %64, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %88

69:                                               ; preds = %50
  %70 = load i8**, i8*** %6, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 45
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %76, align 8
  %79 = load i8**, i8*** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @rd_factor(i8** %79, i32* %80, i32 %81, i32* %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %75, %69
  br label %88

88:                                               ; preds = %87, %57
  %89 = load i8**, i8*** %6, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @delspc(i8* %90)
  %92 = load i8**, i8*** %6, align 8
  store i8* %91, i8** %92, align 8
  br label %36

93:                                               ; preds = %48
  %94 = load i32, i32* @verbose, align 4
  %95 = icmp sge i32 %94, 7
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* @stderr, align 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %99 = load i64, i64* @sp, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @addr, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %96, %93
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @rd_factor(i8**, i32*, i32, i32*, i32) #1

declare dso_local i8* @delspc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
