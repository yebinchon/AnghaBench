; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_psql_get_variable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_psql_get_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8* }

@pset = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"cannot escape without active connection\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"shell command argument contains a newline or carriage return: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @psql_get_variable(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = ptrtoint i8* %16 to i32
  %18 = call i32 @conditional_active(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i8* null, i8** %4, align 8
  br label %82

21:                                               ; preds = %15, %3
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 1), align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @GetVariable(i32 %22, i8* %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %82

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %80 [
    i32 131, label %30
    i32 128, label %33
    i32 129, label %33
    i32 130, label %66
  ]

30:                                               ; preds = %28
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @pg_strdup(i8* %31)
  store i8* %32, i8** %8, align 8
  br label %80

33:                                               ; preds = %28, %28
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %82

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i8* @PQescapeLiteral(i32 %42, i8* %43, i32 %45)
  store i8* %46, i8** %10, align 8
  br label %53

47:                                               ; preds = %38
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = call i8* @PQescapeIdentifier(i32 %48, i8* %49, i32 %51)
  store i8* %52, i8** %10, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i8*, i8** %10, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pset, i32 0, i32 0), align 4
  %58 = call i8* @PQerrorMessage(i32 %57)
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i8* null, i8** %4, align 8
  br label %82

61:                                               ; preds = %53
  %62 = load i8*, i8** %10, align 8
  %63 = call i8* @pg_strdup(i8* %62)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @PQfreemem(i8* %64)
  br label %80

66:                                               ; preds = %28
  %67 = call i32 @initPQExpBuffer(%struct.TYPE_5__* %12)
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @appendShellStringNoError(%struct.TYPE_5__* %12, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @free(i8* %75)
  store i8* null, i8** %4, align 8
  br label %82

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %8, align 8
  br label %80

80:                                               ; preds = %28, %77, %61, %30
  %81 = load i8*, i8** %8, align 8
  store i8* %81, i8** %4, align 8
  br label %82

82:                                               ; preds = %80, %71, %56, %36, %27, %20
  %83 = load i8*, i8** %4, align 8
  ret i8* %83
}

declare dso_local i32 @conditional_active(i32) #1

declare dso_local i8* @GetVariable(i32, i8*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i8* @PQescapeLiteral(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @PQescapeIdentifier(i32, i8*, i32) #1

declare dso_local i8* @PQerrorMessage(i32) #1

declare dso_local i32 @pg_log_info(i8*, i8*) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_5__*) #1

declare dso_local i32 @appendShellStringNoError(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
