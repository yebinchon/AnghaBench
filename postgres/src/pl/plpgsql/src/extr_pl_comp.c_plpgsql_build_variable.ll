; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_build_variable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_build_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32 }

@PLPGSQL_DTYPE_VAR = common dso_local global i32 0, align 4
@PLPGSQL_NSTYPE_VAR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"variable \22%s\22 has pseudo-type %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unrecognized ttype: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @plpgsql_build_variable(i8* %0, i32 %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %72 [
    i32 128, label %15
    i32 129, label %51
    i32 130, label %61
  ]

15:                                               ; preds = %4
  %16 = call %struct.TYPE_6__* @palloc0(i32 40)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  %17 = load i32, i32* @PLPGSQL_DTYPE_VAR, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @pstrdup(i8* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = bitcast %struct.TYPE_6__* %36 to i32*
  %38 = call i32 @plpgsql_adddatum(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %15
  %42 = load i32, i32* @PLPGSQL_NSTYPE_VAR, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @plpgsql_ns_additem(i32 %42, i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %41, %15
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = bitcast %struct.TYPE_6__* %49 to i32*
  store i32* %50, i32** %9, align 8
  br label %78

51:                                               ; preds = %4
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32* @plpgsql_build_record(i8* %52, i32 %53, %struct.TYPE_7__* %54, i32 %57, i32 %58)
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  store i32* %60, i32** %9, align 8
  br label %78

61:                                               ; preds = %4
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @format_type_be(i32 %68)
  %70 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %65, i32 %69)
  %71 = call i32 @ereport(i32 %62, i32 %70)
  store i32* null, i32** %9, align 8
  br label %78

72:                                               ; preds = %4
  %73 = load i32, i32* @ERROR, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @elog(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  store i32* null, i32** %9, align 8
  br label %78

78:                                               ; preds = %72, %61, %51, %48
  %79 = load i32*, i32** %9, align 8
  ret i32* %79
}

declare dso_local %struct.TYPE_6__* @palloc0(i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32 @plpgsql_adddatum(i32*) #1

declare dso_local i32 @plpgsql_ns_additem(i32, i32, i8*) #1

declare dso_local i32* @plpgsql_build_record(i8*, i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
