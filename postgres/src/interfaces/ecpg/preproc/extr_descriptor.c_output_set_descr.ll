; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_output_set_descr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_output_set_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { i32, i32, %struct.assignment* }
%struct.variable = type { i32, i32, i32 }

@base_yyout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"{ ECPGset_desc(__LINE__, %s, %s,\00", align 1
@assignments = common dso_local global %struct.assignment* null, align 8
@PARSE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"descriptor item \22%s\22 is not implemented\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"descriptor item \22%s\22 cannot be set\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ECPGd_EODT);\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_set_descr(i8* %0, i8* %1) #0 {
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

13:                                               ; preds = %62, %2
  %14 = load %struct.assignment*, %struct.assignment** %5, align 8
  %15 = icmp ne %struct.assignment* %14, null
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load %struct.assignment*, %struct.assignment** %5, align 8
  %18 = getelementptr inbounds %struct.assignment, %struct.assignment* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.variable* @find_variable(i32 %19)
  store %struct.variable* %20, %struct.variable** %6, align 8
  %21 = load %struct.assignment*, %struct.assignment** %5, align 8
  %22 = getelementptr inbounds %struct.assignment, %struct.assignment* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %60 [
    i32 142, label %24
    i32 140, label %24
    i32 139, label %24
    i32 132, label %24
    i32 129, label %24
    i32 137, label %31
    i32 135, label %31
    i32 134, label %31
    i32 133, label %31
    i32 131, label %31
    i32 130, label %31
    i32 141, label %38
    i32 138, label %38
    i32 136, label %38
    i32 128, label %38
  ]

24:                                               ; preds = %16, %16, %16, %16, %16
  %25 = load i32, i32* @PARSE_ERROR, align 4
  %26 = load %struct.assignment*, %struct.assignment** %5, align 8
  %27 = getelementptr inbounds %struct.assignment, %struct.assignment* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @descriptor_item_name(i32 %28)
  %30 = call i32 @mmfatal(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %61

31:                                               ; preds = %16, %16, %16, %16, %16, %16
  %32 = load i32, i32* @PARSE_ERROR, align 4
  %33 = load %struct.assignment*, %struct.assignment** %5, align 8
  %34 = getelementptr inbounds %struct.assignment, %struct.assignment* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @descriptor_item_name(i32 %35)
  %37 = call i32 @mmfatal(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %61

38:                                               ; preds = %16, %16, %16, %16
  %39 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %39, i8** %7, align 8
  %40 = load i32, i32* @base_yyout, align 4
  %41 = load %struct.assignment*, %struct.assignment** %5, align 8
  %42 = getelementptr inbounds %struct.assignment, %struct.assignment* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @get_dtype(i32 %43)
  %45 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @base_yyout, align 4
  %47 = load %struct.variable*, %struct.variable** %6, align 8
  %48 = getelementptr inbounds %struct.variable, %struct.variable* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.variable*, %struct.variable** %6, align 8
  %51 = getelementptr inbounds %struct.variable, %struct.variable* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.variable*, %struct.variable** %6, align 8
  %54 = getelementptr inbounds %struct.variable, %struct.variable* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @ECPGdump_a_type(i32 %46, i32 %49, i32 %52, i32 %55, i32* null, i32* null, i32 -1, i32* null, i32* null, i8* %56, i32* null, i32* null)
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @free(i8* %58)
  br label %61

60:                                               ; preds = %16
  br label %61

61:                                               ; preds = %60, %38, %31, %24
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.assignment*, %struct.assignment** %5, align 8
  %64 = getelementptr inbounds %struct.assignment, %struct.assignment* %63, i32 0, i32 2
  %65 = load %struct.assignment*, %struct.assignment** %64, align 8
  store %struct.assignment* %65, %struct.assignment** %5, align 8
  br label %13

66:                                               ; preds = %13
  %67 = call i32 (...) @drop_assignments()
  %68 = load i32, i32* @base_yyout, align 4
  %69 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = call i32 @whenever_action(i32 3)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local %struct.variable* @find_variable(i32) #1

declare dso_local i32 @mmfatal(i32, i8*, i32) #1

declare dso_local i32 @descriptor_item_name(i32) #1

declare dso_local i8* @mm_strdup(i8*) #1

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
