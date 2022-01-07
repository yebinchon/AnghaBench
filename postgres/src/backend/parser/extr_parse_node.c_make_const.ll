; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_node.c_make_const.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_node.c_make_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@INT4OID = common dso_local global i32 0, align 4
@INT8OID = common dso_local global i32 0, align 4
@FLOAT8PASSBYVAL = common dso_local global i32 0, align 4
@numeric_in = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@NUMERICOID = common dso_local global i32 0, align 4
@UNKNOWNOID = common dso_local global i32 0, align 4
@bit_in = common dso_local global i32 0, align 4
@BITOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @make_const(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @nodeTag(i32* %16)
  switch i32 %17, label %85 [
    i32 130, label %18
    i32 131, label %23
    i32 128, label %58
    i32 132, label %63
    i32 129, label %77
  ]

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @intVal(i32* %19)
  %21 = call i32 @Int32GetDatum(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @INT4OID, align 4
  store i32 %22, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %90

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @strVal(i32* %24)
  %26 = call i32 @scanint8(i32 %25, i32 1, i32* %10)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @Int32GetDatum(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @INT4OID, align 4
  store i32 %36, i32* %11, align 4
  store i32 4, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %42

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @Int64GetDatum(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @INT8OID, align 4
  store i32 %40, i32* %11, align 4
  store i32 4, i32* %12, align 4
  %41 = load i32, i32* @FLOAT8PASSBYVAL, align 4
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %37, %33
  br label %57

43:                                               ; preds = %23
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @setup_parser_errposition_callback(i32* %14, i32* %44, i32 %45)
  %47 = load i32, i32* @numeric_in, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @strVal(i32* %48)
  %50 = call i32 @CStringGetDatum(i32 %49)
  %51 = load i32, i32* @InvalidOid, align 4
  %52 = call i32 @ObjectIdGetDatum(i32 %51)
  %53 = call i32 @Int32GetDatum(i32 -1)
  %54 = call i32 @DirectFunctionCall3(i32 %47, i32 %50, i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = call i32 @cancel_parser_errposition_callback(i32* %14)
  %56 = load i32, i32* @NUMERICOID, align 4
  store i32 %56, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %43, %42
  br label %90

58:                                               ; preds = %3
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @strVal(i32* %59)
  %61 = call i32 @CStringGetDatum(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @UNKNOWNOID, align 4
  store i32 %62, i32* %11, align 4
  store i32 -2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %90

63:                                               ; preds = %3
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @setup_parser_errposition_callback(i32* %14, i32* %64, i32 %65)
  %67 = load i32, i32* @bit_in, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @strVal(i32* %68)
  %70 = call i32 @CStringGetDatum(i32 %69)
  %71 = load i32, i32* @InvalidOid, align 4
  %72 = call i32 @ObjectIdGetDatum(i32 %71)
  %73 = call i32 @Int32GetDatum(i32 -1)
  %74 = call i32 @DirectFunctionCall3(i32 %67, i32 %70, i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = call i32 @cancel_parser_errposition_callback(i32* %14)
  %76 = load i32, i32* @BITOID, align 4
  store i32 %76, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %90

77:                                               ; preds = %3
  %78 = load i32, i32* @UNKNOWNOID, align 4
  %79 = load i32, i32* @InvalidOid, align 4
  %80 = call %struct.TYPE_4__* @makeConst(i32 %78, i32 -1, i32 %79, i32 -2, i32 0, i32 1, i32 0)
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %8, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %4, align 8
  br label %101

85:                                               ; preds = %3
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @nodeTag(i32* %87)
  %89 = call i32 @elog(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %88)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %101

90:                                               ; preds = %63, %58, %57, %18
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @InvalidOid, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call %struct.TYPE_4__* @makeConst(i32 %91, i32 -1, i32 %92, i32 %93, i32 %94, i32 0, i32 %95)
  store %struct.TYPE_4__* %96, %struct.TYPE_4__** %8, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %4, align 8
  br label %101

101:                                              ; preds = %90, %85, %77
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %102
}

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @intVal(i32*) #1

declare dso_local i32 @scanint8(i32, i32, i32*) #1

declare dso_local i32 @strVal(i32*) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32 @setup_parser_errposition_callback(i32*, i32*, i32) #1

declare dso_local i32 @DirectFunctionCall3(i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @cancel_parser_errposition_callback(i32*) #1

declare dso_local %struct.TYPE_4__* @makeConst(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
