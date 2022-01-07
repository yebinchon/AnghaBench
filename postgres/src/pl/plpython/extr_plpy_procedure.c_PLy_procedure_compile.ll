; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_procedure.c_PLy_procedure_compile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_procedure.c_PLy_procedure_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32*, i32, i32, i32, i32 }

@PLy_interp_globals = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"SD\00", align 1
@Py_file_input = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s()\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"string would overflow buffer\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@Py_eval_input = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"could not compile PL/Python function \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"could not compile anonymous PL/Python code block\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PLy_procedure_compile(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %11 = load i32, i32* @PLy_interp_globals, align 4
  %12 = call i32 @PyDict_Copy(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = call i32 (...) @PyDict_New()
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 (i32, i8*, ...) @PLy_elog(i32 %23, i8* null)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PyDict_SetItemString(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @PLy_procedure_munge_source(i8* %35, i8* %36)
  store i8* %37, i8** %6, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @MemoryContextStrdup(i32 %40, i8* %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @Py_file_input, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32* @PyRun_String(i8* %45, i32 %46, i32 %49, i32* null)
  store i32* %50, i32** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @pfree(i8* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %92

55:                                               ; preds = %25
  %56 = load i32, i32* @NAMEDATALEN, align 4
  %57 = add nsw i32 %56, 256
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %8, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %9, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @Py_DECREF(i32* %61)
  %63 = trunc i64 %58 to i32
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @snprintf(i8* %60, i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp uge i64 %72, %58
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %55
  %75 = load i32, i32* @ERROR, align 4
  %76 = call i32 @elog(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32, i32* @Py_eval_input, align 4
  %79 = call i32* @Py_CompileString(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 1, i32* %10, align 4
  br label %88

87:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %10, align 4
  switch i32 %90, label %107 [
    i32 0, label %91
    i32 1, label %106
  ]

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91, %25
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* @ERROR, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (i32, i8*, ...) @PLy_elog(i32 %98, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %101)
  br label %106

103:                                              ; preds = %92
  %104 = load i32, i32* @ERROR, align 4
  %105 = call i32 (i32, i8*, ...) @PLy_elog(i32 %104, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %88, %103, %97
  ret void

107:                                              ; preds = %88
  unreachable
}

declare dso_local i32 @PyDict_Copy(i32) #1

declare dso_local i32 @PyDict_New(...) #1

declare dso_local i32 @PLy_elog(i32, i8*, ...) #1

declare dso_local i32 @PyDict_SetItemString(i32, i8*, i32) #1

declare dso_local i8* @PLy_procedure_munge_source(i8*, i8*) #1

declare dso_local i32 @MemoryContextStrdup(i32, i8*) #1

declare dso_local i32* @PyRun_String(i8*, i32, i32, i32*) #1

declare dso_local i32 @pfree(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @Py_CompileString(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
