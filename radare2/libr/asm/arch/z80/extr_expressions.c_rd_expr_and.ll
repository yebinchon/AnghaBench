; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_expressions.c_rd_expr_and.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_expressions.c_rd_expr_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%5d (0x%04x): Starting to read and expression (string=%s).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%5d (0x%04x): rd_expr_and returned %d (%04x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32, i32*, i32)* @rd_expr_and to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_expr_and(i8** %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
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
  %24 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i8* %23)
  br label %25

25:                                               ; preds = %14, %5
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @rd_expr_equal(i8** %26, i32* %27, i32 %28, i32* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @delspc(i8* %33)
  %35 = load i8**, i8*** %6, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 38
  br i1 %40, label %41, label %54

41:                                               ; preds = %25
  %42 = load i32*, i32** %9, align 8
  store i32 0, i32* %42, align 4
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @rd_expr_and(i8** %46, i32* %47, i32 %48, i32* %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %41, %25
  %55 = load i32, i32* @verbose, align 4
  %56 = icmp sge i32 %55, 7
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %60 = load i64, i64* @sp, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @addr, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %54
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @rd_expr_equal(i8**, i32*, i32, i32*, i32) #1

declare dso_local i8* @delspc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
