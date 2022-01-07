; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_target.c_transformAssignmentSubscripts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_target.c_transformAssignmentSubscripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@COERCION_ASSIGNMENT = common dso_local global i32 0, align 4
@COERCE_IMPLICIT_CAST = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CANNOT_COERCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot cast type %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i64, i32, i64, i32*, i32, i32*, i32*, i32*, i32)* @transformAssignmentSubscripts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transformAssignmentSubscripts(i32* %0, i32* %1, i8* %2, i64 %3, i32 %4, i64 %5, i32* %6, i32 %7, i32* %8, i32* %9, i32* %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i64 %5, i64* %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32 %11, i32* %24, align 4
  %32 = load i32*, i32** %19, align 8
  %33 = load i32*, i32** @NIL, align 8
  %34 = icmp ne i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i64, i64* %16, align 8
  store i64 %37, i64* %26, align 8
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %27, align 4
  %39 = call i64 @transformContainerType(i64* %26, i32* %27)
  store i64 %39, i64* %28, align 8
  %40 = load i32, i32* %20, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %12
  %43 = load i64, i64* %26, align 8
  br label %46

44:                                               ; preds = %12
  %45 = load i64, i64* %28, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  store i64 %47, i64* %29, align 8
  %48 = load i64, i64* %26, align 8
  %49 = load i64, i64* %16, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, i64* %18, align 8
  store i64 %52, i64* %30, align 8
  br label %56

53:                                               ; preds = %46
  %54 = load i64, i64* %26, align 8
  %55 = call i64 @get_typcollation(i64 %54)
  store i64 %55, i64* %30, align 8
  br label %56

56:                                               ; preds = %53, %51
  %57 = load i32*, i32** %13, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load i64, i64* %29, align 8
  %60 = load i32, i32* %27, align 4
  %61 = load i64, i64* %30, align 8
  %62 = load i32*, i32** %21, align 8
  %63 = load i32*, i32** %22, align 8
  %64 = load i32*, i32** %23, align 8
  %65 = load i32, i32* %24, align 4
  %66 = call i32* @transformAssignmentIndirection(i32* %57, i32* null, i8* %58, i32 1, i64 %59, i32 %60, i64 %61, i32* %62, i32* %63, i32* %64, i32 %65)
  store i32* %66, i32** %23, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i64, i64* %26, align 8
  %70 = load i64, i64* %28, align 8
  %71 = load i32, i32* %27, align 4
  %72 = load i32*, i32** %19, align 8
  %73 = load i32*, i32** %23, align 8
  %74 = call i64 @transformContainerSubscripts(i32* %67, i32* %68, i64 %69, i64 %70, i32 %71, i32* %72, i32* %73)
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %25, align 8
  %76 = load i64, i64* %26, align 8
  %77 = load i64, i64* %16, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %56
  %80 = load i32*, i32** %25, align 8
  %81 = call i64 @exprType(i32* %80)
  store i64 %81, i64* %31, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32*, i32** %25, align 8
  %84 = load i64, i64* %31, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @COERCION_ASSIGNMENT, align 4
  %88 = load i32, i32* @COERCE_IMPLICIT_CAST, align 4
  %89 = call i32* @coerce_to_target_type(i32* %82, i32* %83, i64 %84, i64 %85, i32 %86, i32 %87, i32 %88, i32 -1)
  store i32* %89, i32** %25, align 8
  %90 = load i32*, i32** %25, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %79
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_CANNOT_COERCE, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = load i64, i64* %31, align 8
  %97 = call i32 @format_type_be(i64 %96)
  %98 = load i64, i64* %16, align 8
  %99 = call i32 @format_type_be(i64 %98)
  %100 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %99)
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %24, align 4
  %103 = call i32 @parser_errposition(i32* %101, i32 %102)
  %104 = call i32 @ereport(i32 %93, i32 %103)
  br label %105

105:                                              ; preds = %92, %79
  br label %106

106:                                              ; preds = %105, %56
  %107 = load i32*, i32** %25, align 8
  ret i32* %107
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @transformContainerType(i64*, i32*) #1

declare dso_local i64 @get_typcollation(i64) #1

declare dso_local i32* @transformAssignmentIndirection(i32*, i32*, i8*, i32, i64, i32, i64, i32*, i32*, i32*, i32) #1

declare dso_local i64 @transformContainerSubscripts(i32*, i32*, i64, i64, i32, i32*, i32*) #1

declare dso_local i64 @exprType(i32*) #1

declare dso_local i32* @coerce_to_target_type(i32*, i32*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
