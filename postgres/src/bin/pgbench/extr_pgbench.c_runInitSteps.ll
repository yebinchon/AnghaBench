; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_runInitSteps.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_runInitSteps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"drop tables\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"create tables\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"client-side generate\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"server-side generate\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vacuum\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"primary keys\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"foreign keys\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"unrecognized initialization step \22%c\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s %.2f s\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"done in %.2f s (%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @runInitSteps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @runInitSteps(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  store double 0.000000e+00, double* %6, align 8
  store i32 1, i32* %7, align 4
  %12 = call i32 @initPQExpBuffer(%struct.TYPE_6__* %3)
  %13 = call i32* (...) @doConnect()
  store i32* %13, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %84, %17
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %19
  store i8* null, i8** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @INSTR_TIME_SET_CURRENT(i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %52 [
    i32 100, label %30
    i32 116, label %33
    i32 103, label %36
    i32 71, label %39
    i32 118, label %42
    i32 112, label %45
    i32 102, label %48
    i32 32, label %51
  ]

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @initDropTables(i32* %31)
  br label %60

33:                                               ; preds = %24
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @initCreateTables(i32* %34)
  br label %60

36:                                               ; preds = %24
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @initGenerateDataClientSide(i32* %37)
  br label %60

39:                                               ; preds = %24
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @initGenerateDataServerSide(i32* %40)
  br label %60

42:                                               ; preds = %24
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @initVacuum(i32* %43)
  br label %60

45:                                               ; preds = %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @initCreatePKeys(i32* %46)
  br label %60

48:                                               ; preds = %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @initCreateFKeys(i32* %49)
  br label %60

51:                                               ; preds = %24
  br label %60

52:                                               ; preds = %24
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8 signext %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @PQfinish(i32* %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %51, %48, %45, %42, %39, %36, %33, %30
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @INSTR_TIME_SET_CURRENT(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @INSTR_TIME_SUBTRACT(i32 %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = call double @INSTR_TIME_GET_DOUBLE(i32 %69)
  store double %70, double* %11, align 8
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %63
  %74 = call i32 @appendPQExpBufferStr(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %76

75:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %73
  %77 = load i8*, i8** %9, align 8
  %78 = load double, double* %11, align 8
  %79 = call i32 @appendPQExpBuffer(%struct.TYPE_6__* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %77, double %78)
  %80 = load double, double* %11, align 8
  %81 = load double, double* %6, align 8
  %82 = fadd double %81, %80
  store double %82, double* %6, align 8
  br label %83

83:                                               ; preds = %76, %60
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  br label %19

87:                                               ; preds = %19
  %88 = load i32, i32* @stderr, align 4
  %89 = load double, double* %6, align 8
  %90 = fptosi double %89 to i8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8 signext %90, i8* %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @PQfinish(i32* %94)
  %96 = call i32 @termPQExpBuffer(%struct.TYPE_6__* %3)
  ret void
}

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_6__*) #1

declare dso_local i32* @doConnect(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @initDropTables(i32*) #1

declare dso_local i32 @initCreateTables(i32*) #1

declare dso_local i32 @initGenerateDataClientSide(i32*) #1

declare dso_local i32 @initGenerateDataServerSide(i32*) #1

declare dso_local i32 @initVacuum(i32*) #1

declare dso_local i32 @initCreatePKeys(i32*) #1

declare dso_local i32 @initCreateFKeys(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext, ...) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local double @INSTR_TIME_GET_DOUBLE(i32) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_6__*, i8*, i8*, double) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
