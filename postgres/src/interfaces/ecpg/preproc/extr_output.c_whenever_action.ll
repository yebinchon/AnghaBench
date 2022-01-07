; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_output.c_whenever_action.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_output.c_whenever_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@when_nf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@W_NOTHING = common dso_local global i64 0, align 8
@base_yyout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"\0Aif (sqlca.sqlcode == ECPG_NOT_FOUND) \00", align 1
@when_warn = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"\0Aif (sqlca.sqlwarn[0] == 'W') \00", align 1
@when_error = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"\0Aif (sqlca.sqlcode < 0) \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @whenever_action(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @when_nf, i32 0, i32 0), align 8
  %8 = load i64, i64* @W_NOTHING, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = call i32 (...) @output_line_number()
  %12 = load i32, i32* @base_yyout, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @print_action(%struct.TYPE_5__* @when_nf)
  br label %15

15:                                               ; preds = %10, %6, %1
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @when_warn, i32 0, i32 0), align 8
  %17 = load i64, i64* @W_NOTHING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = call i32 (...) @output_line_number()
  %21 = load i32, i32* @base_yyout, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @print_action(%struct.TYPE_5__* @when_warn)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @when_error, i32 0, i32 0), align 8
  %26 = load i64, i64* @W_NOTHING, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = call i32 (...) @output_line_number()
  %30 = load i32, i32* @base_yyout, align 4
  %31 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @print_action(%struct.TYPE_5__* @when_error)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %2, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @base_yyout, align 4
  %39 = call i32 @fputc(i8 signext 125, i32 %38)
  br label %40

40:                                               ; preds = %37, %33
  %41 = call i32 (...) @output_line_number()
  ret void
}

declare dso_local i32 @output_line_number(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @print_action(%struct.TYPE_5__*) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
