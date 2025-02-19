; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numericvar_to_double_no_overflow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numericvar_to_double_no_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"double precision\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*)* @numericvar_to_double_no_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @numericvar_to_double_no_overflow(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @get_str_from_var(i32* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call double @strtod(i8* %8, i8** %5)
  store double %9, double* %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = call i32 @ereport(i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @pfree(i8* %22)
  %24 = load double, double* %4, align 8
  ret double %24
}

declare dso_local i8* @get_str_from_var(i32*) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
