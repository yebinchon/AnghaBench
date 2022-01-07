; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_rd_expr_equal.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_rd_expr_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%5d (0x%04x): Starting to read equality epression (string=%s).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%5d (0x%04x): rd_equal returned %d (%04x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32, i32*, i32)* @rd_expr_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_expr_equal(i8** %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @verbose, align 4
  %14 = icmp sge i32 %13, 6
  br i1 %14, label %15, label %26

15:                                               ; preds = %5
  %16 = load i32, i32* @stderr, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %18 = load i64, i64* @sp, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @addr, align 4
  %23 = load i8**, i8*** %7, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i8* %24)
  br label %26

26:                                               ; preds = %15, %5
  %27 = load i8**, i8*** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @rd_expr_unequal(i8** %27, i32* %28, i32 %29, i32* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @delspc(i8* %34)
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 61
  br i1 %41, label %42, label %66

42:                                               ; preds = %26
  %43 = load i32*, i32** %10, align 8
  store i32 0, i32* %43, align 4
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 61
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i8**, i8*** %7, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %53, align 8
  br label %56

56:                                               ; preds = %52, %42
  %57 = load i32, i32* %12, align 4
  %58 = load i8**, i8*** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @rd_expr_equal(i8** %58, i32* %59, i32 %60, i32* %61, i32 %62)
  %64 = icmp eq i32 %57, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %110

66:                                               ; preds = %26
  %67 = load i8**, i8*** %7, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 33
  br i1 %71, label %72, label %93

72:                                               ; preds = %66
  %73 = load i8**, i8*** %7, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 61
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = load i32*, i32** %10, align 8
  store i32 0, i32* %80, align 4
  %81 = load i8**, i8*** %7, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %83, i8** %81, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i8**, i8*** %7, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @rd_expr_equal(i8** %85, i32* %86, i32 %87, i32* %88, i32 %89)
  %91 = icmp ne i32 %84, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %6, align 4
  br label %110

93:                                               ; preds = %72, %66
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* @verbose, align 4
  %96 = icmp sge i32 %95, 7
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %100 = load i64, i64* @sp, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @addr, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %97, %94
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %108, %79, %56
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @rd_expr_unequal(i8**, i32*, i32, i32*, i32) #1

declare dso_local i8* @delspc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
