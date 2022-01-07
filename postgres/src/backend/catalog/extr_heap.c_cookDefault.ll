; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_cookDefault.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_cookDefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPR_KIND_GENERATED_COLUMN = common dso_local global i32 0, align 4
@EXPR_KIND_COLUMN_DEFAULT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"generation expression is not immutable\00", align 1
@COERCION_ASSIGNMENT = common dso_local global i32 0, align 4
@COERCE_IMPLICIT_CAST = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"column \22%s\22 is of type %s but default expression is of type %s\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"You will need to rewrite or cast the expression.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cookDefault(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8 signext %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8 %5, i8* %12, align 1
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i8, i8* %12, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @EXPR_KIND_GENERATED_COLUMN, align 4
  br label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @EXPR_KIND_COLUMN_DEFAULT, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32* @transformExpr(i32* %19, i32* %20, i32 %29)
  store i32* %30, i32** %13, align 8
  %31 = load i8, i8* %12, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @check_nested_generated(i32* %34, i32* %35)
  %37 = load i32*, i32** %13, align 8
  %38 = call i64 @contain_mutable_functions(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %33
  br label %54

47:                                               ; preds = %28
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @contain_var_clause(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  br label %54

54:                                               ; preds = %47, %46
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @OidIsValid(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @exprType(i32* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @COERCION_ASSIGNMENT, align 4
  %67 = load i32, i32* @COERCE_IMPLICIT_CAST, align 4
  %68 = call i32* @coerce_to_target_type(i32* %61, i32* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 -1)
  store i32* %68, i32** %13, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %58
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @format_type_be(i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @format_type_be(i32 %78)
  %80 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %77, i32 %79)
  %81 = call i32 @errhint(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 @ereport(i32 %72, i32 %81)
  br label %83

83:                                               ; preds = %71, %58
  br label %84

84:                                               ; preds = %83, %54
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @assign_expr_collations(i32* %85, i32* %86)
  %88 = load i32*, i32** %13, align 8
  ret i32* %88
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @transformExpr(i32*, i32*, i32) #1

declare dso_local i32 @check_nested_generated(i32*, i32*) #1

declare dso_local i64 @contain_mutable_functions(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @contain_var_clause(i32*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32* @coerce_to_target_type(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @assign_expr_collations(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
