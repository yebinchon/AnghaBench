; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_output.c_output_deallocate_prepare_statement.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_output.c_output_deallocate_prepare_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@connection = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@base_yyout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"{ ECPGdeallocate(__LINE__, %d, %s, \00", align 1
@compat = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"{ ECPGdeallocate_all(__LINE__, %d, %s);\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_deallocate_prepare_statement(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** @connection, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i8*, i8** @connection, align 8
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i8* [ %7, %6 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %8 ]
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* @base_yyout, align 4
  %16 = load i32, i32* @compat, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %16, i8* %17)
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @output_escaped_str(i8* %19, i32 1)
  %21 = load i32, i32* @base_yyout, align 4
  %22 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  br label %28

23:                                               ; preds = %9
  %24 = load i32, i32* @base_yyout, align 4
  %25 = load i32, i32* @compat, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %25, i8* %26)
  br label %28

28:                                               ; preds = %23, %14
  %29 = call i32 @whenever_action(i32 2)
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i8*, i8** @connection, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** @connection, align 8
  %36 = call i32 @free(i8* %35)
  br label %37

37:                                               ; preds = %34, %28
  store i8* null, i8** @connection, align 8
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @output_escaped_str(i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @whenever_action(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
