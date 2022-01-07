; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_output_get_descr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_output_get_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { i32, i32, %struct.assignment* }
%struct.variable = type { i32, i32, i32 }

@base_yyout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"{ ECPGget_desc(__LINE__, %s, %s,\00", align 1
@assignments = common dso_local global %struct.assignment* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@PARSE_ERROR = common dso_local global i32 0, align 4
@ET_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"nullable is always 1\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"key_member is always 0\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ECPGd_EODT);\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_get_descr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.assignment*, align 8
  %6 = alloca %struct.variable*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @base_yyout, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %10)
  %12 = load %struct.assignment*, %struct.assignment** @assignments, align 8
  store %struct.assignment* %12, %struct.assignment** %5, align 8
  br label %13

13:                                               ; preds = %55, %2
  %14 = load %struct.assignment*, %struct.assignment** %5, align 8
  %15 = icmp ne %struct.assignment* %14, null
  br i1 %15, label %16, label %59

16:                                               ; preds = %13
  %17 = load %struct.assignment*, %struct.assignment** %5, align 8
  %18 = getelementptr inbounds %struct.assignment, %struct.assignment* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.variable* @find_variable(i32 %19)
  store %struct.variable* %20, %struct.variable** %6, align 8
  %21 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %7, align 8
  %22 = load %struct.assignment*, %struct.assignment** %5, align 8
  %23 = getelementptr inbounds %struct.assignment, %struct.assignment* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %33 [
    i32 128, label %25
    i32 129, label %29
  ]

25:                                               ; preds = %16
  %26 = load i32, i32* @PARSE_ERROR, align 4
  %27 = load i32, i32* @ET_WARNING, align 4
  %28 = call i32 @mmerror(i32 %26, i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %34

29:                                               ; preds = %16
  %30 = load i32, i32* @PARSE_ERROR, align 4
  %31 = load i32, i32* @ET_WARNING, align 4
  %32 = call i32 @mmerror(i32 %30, i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %34

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %29, %25
  %35 = load i32, i32* @base_yyout, align 4
  %36 = load %struct.assignment*, %struct.assignment** %5, align 8
  %37 = getelementptr inbounds %struct.assignment, %struct.assignment* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @get_dtype(i32 %38)
  %40 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @base_yyout, align 4
  %42 = load %struct.variable*, %struct.variable** %6, align 8
  %43 = getelementptr inbounds %struct.variable, %struct.variable* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.variable*, %struct.variable** %6, align 8
  %46 = getelementptr inbounds %struct.variable, %struct.variable* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.variable*, %struct.variable** %6, align 8
  %49 = getelementptr inbounds %struct.variable, %struct.variable* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @ECPGdump_a_type(i32 %41, i32 %44, i32 %47, i32 %50, i32* null, i32* null, i32 -1, i32* null, i32* null, i8* %51, i32* null, i32* null)
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %34
  %56 = load %struct.assignment*, %struct.assignment** %5, align 8
  %57 = getelementptr inbounds %struct.assignment, %struct.assignment* %56, i32 0, i32 2
  %58 = load %struct.assignment*, %struct.assignment** %57, align 8
  store %struct.assignment* %58, %struct.assignment** %5, align 8
  br label %13

59:                                               ; preds = %13
  %60 = call i32 (...) @drop_assignments()
  %61 = load i32, i32* @base_yyout, align 4
  %62 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = call i32 @whenever_action(i32 3)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local %struct.variable* @find_variable(i32) #1

declare dso_local i8* @mm_strdup(i8*) #1

declare dso_local i32 @mmerror(i32, i32, i8*) #1

declare dso_local i8* @get_dtype(i32) #1

declare dso_local i32 @ECPGdump_a_type(i32, i32, i32, i32, i32*, i32*, i32, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @drop_assignments(...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @whenever_action(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
