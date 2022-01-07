; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_rd_factor.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_rd_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%5d (0x%04x): Starting to read factor (string=%s).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"division by zero\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%5d (0x%04x): rd_factor returned %d (%04x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32, i32*, i32)* @rd_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_factor(i8** %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @verbose, align 4
  %15 = icmp sge i32 %14, 6
  br i1 %15, label %16, label %27

16:                                               ; preds = %5
  %17 = load i32, i32* @stderr, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %19 = load i64, i64* @sp, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @addr, align 4
  %24 = load i8**, i8*** %7, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i8* %25)
  br label %27

27:                                               ; preds = %16, %5
  %28 = load i8**, i8*** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @rd_value(i8** %28, i32* %29, i32 %30, i32* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i8**, i8*** %7, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @delspc(i8* %35)
  %37 = load i8**, i8*** %7, align 8
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %96, %27
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8**, i8*** %7, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i1 [ true, %38 ], [ %49, %44 ]
  br i1 %51, label %52, label %101

52:                                               ; preds = %50
  %53 = load i32*, i32** %10, align 8
  store i32 0, i32* %53, align 4
  %54 = load i8**, i8*** %7, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 42
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load i8**, i8*** %7, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %60, align 8
  %63 = load i8**, i8*** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @rd_value(i8** %63, i32* %64, i32 %65, i32* %66, i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = mul nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %96

71:                                               ; preds = %52
  %72 = load i8**, i8*** %7, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 47
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load i8**, i8*** %7, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %78, align 8
  %81 = load i8**, i8*** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @rd_value(i8** %81, i32* %82, i32 %83, i32* %84, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = call i32 @printerr(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %117

91:                                               ; preds = %77
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sdiv i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %91, %71
  br label %96

96:                                               ; preds = %95, %59
  %97 = load i8**, i8*** %7, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @delspc(i8* %98)
  %100 = load i8**, i8*** %7, align 8
  store i8* %99, i8** %100, align 8
  br label %38

101:                                              ; preds = %50
  %102 = load i32, i32* @verbose, align 4
  %103 = icmp sge i32 %102, 7
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i32, i32* @stderr, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %107 = load i64, i64* @sp, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @addr, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %104, %101
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %89
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @rd_value(i8**, i32*, i32, i32*, i32) #1

declare dso_local i8* @delspc(i8*) #1

declare dso_local i32 @printerr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
