; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_DescribeQuery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_DescribeQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@pset = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"SELECT name AS \22%s\22, pg_catalog.format_type(tp, tpm) AS \22%s\22\0AFROM (VALUES \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Column\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"(%s, '%u'::pg_catalog.oid, %d)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c") s(name, tp, tpm)\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"The command has no result, or the result has no columns.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double*)* @DescribeQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DescribeQuery(i8* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store double* %1, double** %5, align 8
  %14 = load double*, double** %5, align 8
  store double 0.000000e+00, double* %14, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 1), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @INSTR_TIME_SET_CURRENT(i32 %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 2), align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32* @PQprepare(i32 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %22, i32 0, i32* null)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @PQresultStatus(i32* %24)
  %26 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 2), align 8
  %30 = call i32 @PQerrorMessage(i32 %29)
  %31 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @SetResultVariables(i32* %32, i32 0)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @ClearOrSaveResult(i32* %34)
  store i32 0, i32* %3, align 4
  br label %155

36:                                               ; preds = %20
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @PQclear(i32* %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 2), align 8
  %40 = call i32* @PQdescribePrepared(i32 %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @AcceptResult(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @PQresultStatus(i32* %45)
  %47 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %44, %36
  %50 = phi i1 [ false, %36 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %148

54:                                               ; preds = %49
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %148

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @PQnfields(i32* %58)
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %143

61:                                               ; preds = %57
  %62 = call i32 @initPQExpBuffer(%struct.TYPE_8__* %10)
  %63 = call i32 @gettext_noop(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 @gettext_noop(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 @printfPQExpBuffer(%struct.TYPE_8__* %10, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64)
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %105, %61
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @PQnfields(i32* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %108

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i8* @PQfname(i32* %77, i32 %78)
  store i8* %79, i8** %12, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 2), align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = call i8* @PQescapeLiteral(i32 %80, i8* %81, i32 %83)
  store i8* %84, i8** %13, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %76
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 2), align 8
  %89 = call i32 @PQerrorMessage(i32 %88)
  %90 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @PQclear(i32* %91)
  %93 = call i32 @termPQExpBuffer(%struct.TYPE_8__* %10)
  store i32 0, i32* %3, align 4
  br label %155

94:                                               ; preds = %76
  %95 = load i8*, i8** %13, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @PQftype(i32* %96, i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @PQfmod(i32* %99, i32 %100)
  %102 = call i32 @appendPQExpBuffer(%struct.TYPE_8__* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %95, i32 %98, i32 %101)
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @PQfreemem(i8* %103)
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %66

108:                                              ; preds = %66
  %109 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @PQclear(i32* %110)
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 2), align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32* @PQexec(i32 %112, i32 %114)
  store i32* %115, i32** %6, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @AcceptResult(i32* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 1), align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %108
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @INSTR_TIME_SET_CURRENT(i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @INSTR_TIME_SUBTRACT(i32 %123, i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %126)
  %128 = sitofp i64 %127 to double
  %129 = load double*, double** %5, align 8
  %130 = load double, double* %129, align 8
  %131 = fadd double %130, %128
  store double %131, double* %129, align 8
  br label %132

132:                                              ; preds = %120, %108
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32*, i32** %6, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @PrintQueryResults(i32* %139)
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %138, %135, %132
  %142 = call i32 @termPQExpBuffer(%struct.TYPE_8__* %10)
  br label %147

143:                                              ; preds = %57
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 8
  %145 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %146 = call i32 @fprintf(i32 %144, i8* %145)
  br label %147

147:                                              ; preds = %143, %141
  br label %148

148:                                              ; preds = %147, %54, %49
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @SetResultVariables(i32* %149, i32 %150)
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @ClearOrSaveResult(i32* %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %148, %87, %28
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32* @PQprepare(i32, i8*, i8*, i32, i32*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_info(i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @SetResultVariables(i32*, i32) #1

declare dso_local i32 @ClearOrSaveResult(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32* @PQdescribePrepared(i32, i8*) #1

declare dso_local i32 @AcceptResult(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @gettext_noop(i8*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @PQfname(i32*, i32) #1

declare dso_local i8* @PQescapeLiteral(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_8__*, i8*, i8*, i32, i32) #1

declare dso_local i32 @PQftype(i32*, i32) #1

declare dso_local i32 @PQfmod(i32*, i32) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i32* @PQexec(i32, i32) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i64 @INSTR_TIME_GET_MILLISEC(i32) #1

declare dso_local i32 @PrintQueryResults(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
