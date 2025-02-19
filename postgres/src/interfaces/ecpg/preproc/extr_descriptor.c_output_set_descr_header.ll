; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_output_set_descr_header.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_output_set_descr_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { i64, i32, %struct.assignment* }

@base_yyout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"{ ECPGset_desc_header(__LINE__, %s, (int)(\00", align 1
@assignments = common dso_local global %struct.assignment* null, align 8
@ECPGd_count = common dso_local global i64 0, align 8
@PARSE_ERROR = common dso_local global i32 0, align 4
@ET_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"descriptor header item \22%d\22 does not exist\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"));\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_set_descr_header(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.assignment*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @base_yyout, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load %struct.assignment*, %struct.assignment** @assignments, align 8
  store %struct.assignment* %7, %struct.assignment** %3, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load %struct.assignment*, %struct.assignment** %3, align 8
  %10 = icmp ne %struct.assignment* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load %struct.assignment*, %struct.assignment** %3, align 8
  %13 = getelementptr inbounds %struct.assignment, %struct.assignment* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ECPGd_count, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.assignment*, %struct.assignment** %3, align 8
  %19 = getelementptr inbounds %struct.assignment, %struct.assignment* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ECPGnumeric_lvalue(i32 %20)
  br label %29

22:                                               ; preds = %11
  %23 = load i32, i32* @PARSE_ERROR, align 4
  %24 = load i32, i32* @ET_WARNING, align 4
  %25 = load %struct.assignment*, %struct.assignment** %3, align 8
  %26 = getelementptr inbounds %struct.assignment, %struct.assignment* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mmerror(i32 %23, i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %22, %17
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.assignment*, %struct.assignment** %3, align 8
  %32 = getelementptr inbounds %struct.assignment, %struct.assignment* %31, i32 0, i32 2
  %33 = load %struct.assignment*, %struct.assignment** %32, align 8
  store %struct.assignment* %33, %struct.assignment** %3, align 8
  br label %8

34:                                               ; preds = %8
  %35 = call i32 (...) @drop_assignments()
  %36 = load i32, i32* @base_yyout, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @whenever_action(i32 3)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ECPGnumeric_lvalue(i32) #1

declare dso_local i32 @mmerror(i32, i32, i8*, i64) #1

declare dso_local i32 @drop_assignments(...) #1

declare dso_local i32 @whenever_action(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
