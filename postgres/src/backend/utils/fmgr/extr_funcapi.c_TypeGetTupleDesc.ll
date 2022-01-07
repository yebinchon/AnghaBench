; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_TypeGetTupleDesc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_TypeGetTupleDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@TYPEFUNC_COMPOSITE = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"number of aliases does not match number of columns\00", align 1
@RECORDOID = common dso_local global i32 0, align 4
@TYPEFUNC_SCALAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"no column alias was provided\00", align 1
@TYPEFUNC_RECORD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"could not determine row description for function returning record\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"function in FROM has unsupported return type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @TypeGetTupleDesc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @get_type_func_class(i32 %13, i32* %5)
  store i64 %14, i64* %6, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @TYPEFUNC_COMPOSITE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.TYPE_9__* @lookup_rowtype_tupdesc_copy(i32 %19, i32 -1)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** @NIL, align 8
  %23 = icmp ne i32* %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @list_length(i32* %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @ereport(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %24
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @list_nth(i32* %44, i32 %45)
  %47 = call i8* @strVal(i32 %46)
  store i8* %47, i8** %10, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.TYPE_10__* @TupleDescAttr(%struct.TYPE_9__* %48, i32 %49)
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %11, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @namestrcpy(i32* %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %43
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load i32, i32* @RECORDOID, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %18
  br label %117

69:                                               ; preds = %2
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @TYPEFUNC_SCALAR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** @NIL, align 8
  %76 = icmp eq i32* %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 @ereport(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %73
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @list_length(i32* %84)
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %92 = call i32 @ereport(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %83
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @linitial(i32* %94)
  %96 = call i8* @strVal(i32 %95)
  store i8* %96, i8** %12, align 8
  %97 = call %struct.TYPE_9__* @CreateTemplateTupleDesc(i32 1)
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %7, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @TupleDescInitEntry(%struct.TYPE_9__* %98, i32 1, i8* %99, i32 %100, i32 -1, i32 0)
  br label %116

102:                                              ; preds = %69
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @TYPEFUNC_RECORD, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %109 = call i32 @errcode(i32 %108)
  %110 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %111 = call i32 @ereport(i32 %107, i32 %110)
  br label %115

112:                                              ; preds = %102
  %113 = load i32, i32* @ERROR, align 4
  %114 = call i32 @elog(i32 %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %106
  br label %116

116:                                              ; preds = %115, %93
  br label %117

117:                                              ; preds = %116, %68
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %118
}

declare dso_local i64 @get_type_func_class(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @lookup_rowtype_tupdesc_copy(i32, i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @list_nth(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @TupleDescAttr(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local %struct.TYPE_9__* @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @TupleDescInitEntry(%struct.TYPE_9__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
