; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_clause.c_checkExprIsVarFree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_clause.c_checkExprIsVarFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_COLUMN_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"argument of %s must not contain variables\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @checkExprIsVarFree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkExprIsVarFree(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @contain_vars_of_level(i32* %7, i32 0)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load i32, i32* @ERROR, align 4
  %12 = load i32, i32* @ERRCODE_INVALID_COLUMN_REFERENCE, align 4
  %13 = call i32 @errcode(i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @locate_var_of_level(i32* %17, i32 0)
  %19 = call i32 @parser_errposition(i32* %16, i32 %18)
  %20 = call i32 @ereport(i32 %11, i32 %19)
  br label %21

21:                                               ; preds = %10, %3
  ret void
}

declare dso_local i64 @contain_vars_of_level(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i32 @locate_var_of_level(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
