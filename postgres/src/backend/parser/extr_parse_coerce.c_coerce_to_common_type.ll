; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_coerce_to_common_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_coerce_to_common_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COERCION_IMPLICIT = common dso_local global i32 0, align 4
@COERCE_IMPLICIT_CAST = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CANNOT_COERCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s could not convert type %s to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @coerce_to_common_type(i32* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @exprType(i32* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  store i32* %17, i32** %5, align 8
  br label %47

18:                                               ; preds = %4
  %19 = load i32, i32* @COERCION_IMPLICIT, align 4
  %20 = call i64 @can_coerce_type(i32 1, i32* %10, i32* %8, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @COERCION_IMPLICIT, align 4
  %28 = load i32, i32* @COERCE_IMPLICIT_CAST, align 4
  %29 = call i32* @coerce_type(i32* %23, i32* %24, i32 %25, i32 %26, i32 -1, i32 %27, i32 %28, i32 -1)
  store i32* %29, i32** %7, align 8
  br label %45

30:                                               ; preds = %18
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_CANNOT_COERCE, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @format_type_be(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @format_type_be(i32 %37)
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %36, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @exprLocation(i32* %41)
  %43 = call i32 @parser_errposition(i32* %40, i32 %42)
  %44 = call i32 @ereport(i32 %31, i32 %43)
  br label %45

45:                                               ; preds = %30, %22
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %5, align 8
  br label %47

47:                                               ; preds = %45, %16
  %48 = load i32*, i32** %5, align 8
  ret i32* %48
}

declare dso_local i32 @exprType(i32*) #1

declare dso_local i64 @can_coerce_type(i32, i32*, i32*, i32) #1

declare dso_local i32* @coerce_type(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i32 @exprLocation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
