; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_PSQLexecWatch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_PSQLexecWatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i8* }

@pset = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"You are currently not connected to a database.\00", align 1
@cancel_pressed = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s\0A%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\\watch cannot be used with an empty query\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\\watch cannot be used with COPY\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"unexpected result status for \\watch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PSQLexecWatch(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store double 0.000000e+00, double* %7, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 3), align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @pg_log_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %89

14:                                               ; preds = %2
  %15 = call i32 (...) @SetCancelConn()
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @INSTR_TIME_SET_CURRENT(i32 %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 3), align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32* @PQexec(i32 %22, i8* %23)
  store i32* %24, i32** %6, align 8
  %25 = call i32 (...) @ResetCancelConn()
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @AcceptResult(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ClearOrSaveResult(i32* %30)
  store i32 0, i32* %3, align 4
  br label %89

32:                                               ; preds = %21
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @INSTR_TIME_SET_CURRENT(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @INSTR_TIME_SUBTRACT(i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call double @INSTR_TIME_GET_MILLISEC(i32 %41)
  store double %42, double* %7, align 8
  br label %43

43:                                               ; preds = %35, %32
  %44 = load i64, i64* @cancel_pressed, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @PQclear(i32* %47)
  store i32 0, i32* %3, align 4
  br label %89

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @PQresultStatus(i32* %50)
  switch i32 %51, label %74 [
    i32 128, label %52
    i32 133, label %58
    i32 129, label %66
    i32 130, label %70
    i32 131, label %70
    i32 132, label %70
  ]

52:                                               ; preds = %49
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 1), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 2), align 4
  %57 = call i32 @printQuery(i32* %53, %struct.TYPE_5__* %54, i32 %55, i32 0, i32 %56)
  br label %78

58:                                               ; preds = %49
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 1), align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i8* @PQcmdStatus(i32* %63)
  %65 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %64)
  br label %78

66:                                               ; preds = %49
  %67 = call i32 @pg_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @PQclear(i32* %68)
  store i32 -1, i32* %3, align 4
  br label %89

70:                                               ; preds = %49, %49, %49
  %71 = call i32 @pg_log_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @PQclear(i32* %72)
  store i32 -1, i32* %3, align 4
  br label %89

74:                                               ; preds = %49
  %75 = call i32 @pg_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @PQclear(i32* %76)
  store i32 -1, i32* %3, align 4
  br label %89

78:                                               ; preds = %58, %52
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @PQclear(i32* %79)
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 1), align 8
  %82 = call i32 @fflush(i32 %81)
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load double, double* %7, align 8
  %87 = call i32 @PrintTiming(double %86)
  br label %88

88:                                               ; preds = %85, %78
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %74, %70, %66, %46, %29, %12
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @pg_log_error(i8*) #1

declare dso_local i32 @SetCancelConn(...) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i32 @ResetCancelConn(...) #1

declare dso_local i32 @AcceptResult(i32*) #1

declare dso_local i32 @ClearOrSaveResult(i32*) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local double @INSTR_TIME_GET_MILLISEC(i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @printQuery(i32*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @PQcmdStatus(i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @PrintTiming(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
