; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_output.c_output_statement.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_output.c_output_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_yyout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"{ ECPGdo(__LINE__, %d, %d, %s, %d, \00", align 1
@compat = common dso_local global i32 0, align 4
@force_indicator = common dso_local global i32 0, align 4
@connection = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@questionmarks = common dso_local global i32 0, align 4
@ECPGst_prepnormal = common dso_local global i32 0, align 4
@auto_prepare = common dso_local global i32 0, align 4
@ECPGst_normal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@ecpg_statement_type_name = common dso_local global i8** null, align 8
@ECPGst_execute = common dso_local global i32 0, align 4
@ECPGst_exec_immediate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@argsinsert = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"ECPGt_EOIT, \00", align 1
@argsresult = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"ECPGt_EORT);\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_statement(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @base_yyout, align 4
  %8 = load i32, i32* @compat, align 4
  %9 = load i32, i32* @force_indicator, align 4
  %10 = load i8*, i8** @connection, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8*, i8** @connection, align 8
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i8* [ %13, %12 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %14 ]
  %17 = load i32, i32* @questionmarks, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i8* %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ECPGst_prepnormal, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32, i32* @auto_prepare, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ECPGst_normal, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %22, %15
  %28 = load i32, i32* @base_yyout, align 4
  %29 = load i8**, i8*** @ecpg_statement_type_name, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ECPGst_execute, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ECPGst_exec_immediate, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %27
  %43 = load i32, i32* @base_yyout, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %53

46:                                               ; preds = %38
  %47 = load i32, i32* @base_yyout, align 4
  %48 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @output_escaped_str(i8* %49, i32 0)
  %51 = load i32, i32* @base_yyout, align 4
  %52 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %42
  %54 = load i32, i32* @argsinsert, align 4
  %55 = call i32 @dump_variables(i32 %54, i32 1)
  %56 = load i32, i32* @base_yyout, align 4
  %57 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @argsresult, align 4
  %59 = call i32 @dump_variables(i32 %58, i32 1)
  %60 = load i32, i32* @base_yyout, align 4
  %61 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  %62 = call i32 (...) @reset_variables()
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, 2
  %65 = call i32 @whenever_action(i32 %64)
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i8*, i8** @connection, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %53
  %71 = load i8*, i8** @connection, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %70, %53
  store i8* null, i8** @connection, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @output_escaped_str(i8*, i32) #1

declare dso_local i32 @dump_variables(i32, i32) #1

declare dso_local i32 @reset_variables(...) #1

declare dso_local i32 @whenever_action(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
