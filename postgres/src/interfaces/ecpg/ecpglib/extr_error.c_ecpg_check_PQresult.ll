; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_error.c_ecpg_check_PQresult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_error.c_ecpg_check_PQresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"ecpg_check_PQresult on line %d: no result - %s\00", align 1
@ECPG_EMPTY = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_ECPG_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"ecpg_check_PQresult on line %d: bad response - %s\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"ecpg_check_PQresult on line %d: COPY IN data transfer in progress\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"ecpg_check_PQresult on line %d: unknown execution status type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecpg_check_PQresult(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @PQerrorMessage(i32* %14)
  %16 = call i32 (i8*, i32, ...) @ecpg_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ecpg_raise_backend(i32 %17, i32* null, i32* %18, i32 %19)
  store i32 0, i32* %5, align 4
  br label %63

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @PQresultStatus(i32* %22)
  switch i32 %23, label %53 [
    i32 128, label %24
    i32 131, label %25
    i32 134, label %32
    i32 129, label %33
    i32 130, label %33
    i32 135, label %33
    i32 132, label %45
    i32 133, label %46
  ]

24:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %63

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ECPG_EMPTY, align 4
  %28 = load i32, i32* @ECPG_SQLSTATE_ECPG_INTERNAL_ERROR, align 4
  %29 = call i32 @ecpg_raise(i32 %26, i32 %27, i32 %28, i32* null)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @PQclear(i32* %30)
  store i32 0, i32* %5, align 4
  br label %63

32:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %63

33:                                               ; preds = %21, %21, %21
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @PQresultErrorMessage(i32* %35)
  %37 = call i32 (i8*, i32, ...) @ecpg_log(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ecpg_raise_backend(i32 %38, i32* %39, i32* %40, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @PQclear(i32* %43)
  store i32 0, i32* %5, align 4
  br label %63

45:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %63

46:                                               ; preds = %21
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i8*, i32, ...) @ecpg_log(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @PQendcopy(i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @PQclear(i32* %51)
  store i32 0, i32* %5, align 4
  br label %63

53:                                               ; preds = %21
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i8*, i32, ...) @ecpg_log(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ecpg_raise_backend(i32 %56, i32* %57, i32* %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @PQclear(i32* %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %53, %46, %45, %33, %32, %25, %24, %12
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @ecpg_log(i8*, i32, ...) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @ecpg_raise_backend(i32, i32*, i32*, i32) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @ecpg_raise(i32, i32, i32, i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQresultErrorMessage(i32*) #1

declare dso_local i32 @PQendcopy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
