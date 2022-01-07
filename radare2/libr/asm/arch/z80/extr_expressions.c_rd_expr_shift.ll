; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_expressions.c_rd_expr_shift.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_expressions.c_rd_expr_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%5d (0x%04x): Starting to read shift expression (string=%s).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%5d (0x%04x): rd_shift returned %d (%04x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32, i32*, i32)* @rd_expr_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_expr_shift(i8** %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
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
  %24 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i8* %23)
  br label %25

25:                                               ; preds = %14, %5
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @rd_term(i8** %26, i32* %27, i32 %28, i32* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @delspc(i8* %33)
  %35 = load i8**, i8*** %6, align 8
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %99, %25
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 60
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 62
  br i1 %47, label %48, label %59

48:                                               ; preds = %42, %36
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %53, %57
  br label %59

59:                                               ; preds = %48, %42
  %60 = phi i1 [ false, %42 ], [ %58, %48 ]
  br i1 %60, label %61, label %104

61:                                               ; preds = %59
  %62 = load i32*, i32** %9, align 8
  store i32 0, i32* %62, align 4
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 60
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load i8**, i8*** %6, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  store i8* %71, i8** %69, align 8
  %72 = load i8**, i8*** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @rd_term(i8** %72, i32* %73, i32 %74, i32* %75, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %99

80:                                               ; preds = %61
  %81 = load i8**, i8*** %6, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 62
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i8**, i8*** %6, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %87, align 8
  %90 = load i8**, i8*** %6, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @rd_term(i8** %90, i32* %91, i32 %92, i32* %93, i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = ashr i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %86, %80
  br label %99

99:                                               ; preds = %98, %68
  %100 = load i8**, i8*** %6, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @delspc(i8* %101)
  %103 = load i8**, i8*** %6, align 8
  store i8* %102, i8** %103, align 8
  br label %36

104:                                              ; preds = %59
  %105 = load i32, i32* @verbose, align 4
  %106 = icmp sge i32 %105, 7
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load i32, i32* @stderr, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %110 = load i64, i64* @sp, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @addr, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %107, %104
  %119 = load i32, i32* %11, align 4
  ret i32 %119
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @rd_term(i8**, i32*, i32, i32*, i32) #1

declare dso_local i8* @delspc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
