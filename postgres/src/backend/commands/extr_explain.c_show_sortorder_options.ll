; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_sortorder_options.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_sortorder_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@TYPECACHE_LT_OPR = common dso_local global i32 0, align 4
@TYPECACHE_GT_OPR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cache lookup failed for collation %u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" COLLATE %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" DESC\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cache lookup failed for operator %u\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" USING %s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" NULLS FIRST\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" NULLS LAST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i64, i32)* @show_sortorder_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_sortorder_options(i32 %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @exprType(i32* %16)
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* @TYPECACHE_LT_OPR, align 4
  %20 = load i32, i32* @TYPECACHE_GT_OPR, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.TYPE_3__* @lookup_type_cache(i64 %18, i32 %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %13, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @OidIsValid(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %5
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @get_typcollation(i64 %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = call i8* @get_collation_name(i64 %32)
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = call i8* @quote_identifier(i8* %42)
  %44 = call i32 @appendStringInfo(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %40, %26, %5
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @appendStringInfoString(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %76

54:                                               ; preds = %45
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i64, i64* %8, align 8
  %62 = call i8* @get_opname(i64 %61)
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @elog(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @appendStringInfo(i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @get_equality_op_for_ordering_op(i64 %73, i32* %12)
  br label %75

75:                                               ; preds = %69, %54
  br label %76

76:                                               ; preds = %75, %51
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @appendStringInfoString(i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %95

85:                                               ; preds = %79, %76
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @appendStringInfoString(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88, %85
  br label %95

95:                                               ; preds = %94, %82
  ret void
}

declare dso_local i64 @exprType(i32*) #1

declare dso_local %struct.TYPE_3__* @lookup_type_cache(i64, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @get_typcollation(i64) #1

declare dso_local i8* @get_collation_name(i64) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i8* @get_opname(i64) #1

declare dso_local i32 @get_equality_op_for_ordering_op(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
