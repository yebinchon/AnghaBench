; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_expressions.c_rd_expr_unequal.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_expressions.c_rd_expr_unequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"%5d (0x%04x): Starting to read unequality expression (string=%s).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%5d (0x%04x): rd_shift returned %d (%04x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32, i32*, i32)* @rd_expr_unequal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_expr_unequal(i8** %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
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
  %25 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i8* %24)
  br label %26

26:                                               ; preds = %15, %5
  %27 = load i8**, i8*** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @rd_expr_shift(i8** %27, i32* %28, i32 %29, i32* %30, i32 %31)
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
  %41 = icmp eq i32 %40, 60
  br i1 %41, label %42, label %63

42:                                               ; preds = %26
  %43 = load i8**, i8*** %7, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 61
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load i32*, i32** %10, align 8
  store i32 0, i32* %50, align 4
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %51, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i8**, i8*** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @rd_expr_unequal(i8** %55, i32* %56, i32 %57, i32* %58, i32 %59)
  %61 = icmp sle i32 %54, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %6, align 4
  br label %162

63:                                               ; preds = %42, %26
  %64 = load i8**, i8*** %7, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 62
  br i1 %68, label %69, label %90

69:                                               ; preds = %63
  %70 = load i8**, i8*** %7, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 61
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = load i32*, i32** %10, align 8
  store i32 0, i32* %77, align 4
  %78 = load i8**, i8*** %7, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %78, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i8**, i8*** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @rd_expr_unequal(i8** %82, i32* %83, i32 %84, i32* %85, i32 %86)
  %88 = icmp sge i32 %81, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %162

90:                                               ; preds = %69, %63
  br label %91

91:                                               ; preds = %90
  %92 = load i8**, i8*** %7, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 60
  br i1 %96, label %97, label %118

97:                                               ; preds = %91
  %98 = load i8**, i8*** %7, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 60
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load i32*, i32** %10, align 8
  store i32 0, i32* %105, align 4
  %106 = load i8**, i8*** %7, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %106, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i8**, i8*** %7, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @rd_expr_unequal(i8** %110, i32* %111, i32 %112, i32* %113, i32 %114)
  %116 = icmp slt i32 %109, %115
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %6, align 4
  br label %162

118:                                              ; preds = %97, %91
  %119 = load i8**, i8*** %7, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 62
  br i1 %123, label %124, label %145

124:                                              ; preds = %118
  %125 = load i8**, i8*** %7, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 62
  br i1 %130, label %131, label %145

131:                                              ; preds = %124
  %132 = load i32*, i32** %10, align 8
  store i32 0, i32* %132, align 4
  %133 = load i8**, i8*** %7, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %133, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i8**, i8*** %7, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @rd_expr_unequal(i8** %137, i32* %138, i32 %139, i32* %140, i32 %141)
  %143 = icmp sgt i32 %136, %142
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %6, align 4
  br label %162

145:                                              ; preds = %124, %118
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* @verbose, align 4
  %148 = icmp sge i32 %147, 7
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load i32, i32* @stderr, align 4
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %152 = load i64, i64* @sp, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @addr, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %149, %146
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %160, %131, %104, %76, %49
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @rd_expr_shift(i8**, i32*, i32, i32*, i32) #1

declare dso_local i8* @delspc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
