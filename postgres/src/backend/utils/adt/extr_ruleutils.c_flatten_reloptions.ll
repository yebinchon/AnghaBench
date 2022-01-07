; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_flatten_reloptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_flatten_reloptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@Anum_pg_class_reloptions = common dso_local global i32 0, align 4
@TEXTOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @flatten_reloptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @flatten_reloptions(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %15 = load i32, i32* @RELOID, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call i32 @SearchSysCache1(i32 %15, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @HeapTupleIsValid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* @RELOID, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @Anum_pg_class_reloptions, align 4
  %30 = call i32 @SysCacheGetAttr(i32 %27, i32 %28, i32 %29, i32* %6)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %88, label %33

33:                                               ; preds = %26
  %34 = call i32 @initStringInfo(%struct.TYPE_6__* %7)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @DatumGetArrayTypeP(i32 %35)
  %37 = load i32, i32* @TEXTOID, align 4
  %38 = call i32 @deconstruct_array(i32 %36, i32 %37, i32 -1, i32 0, i8 signext 105, i32** %8, i32* null, i32* %9)
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %82, %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @TextDatumGetCString(i32 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 61)
  store i8* %52, i8** %13, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i8*, i8** %13, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %14, align 8
  br label %60

59:                                               ; preds = %43
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @appendStringInfoString(%struct.TYPE_6__* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i8*, i8** %12, align 8
  %67 = call i8* @quote_identifier(i8* %66)
  %68 = call i32 @appendStringInfo(%struct.TYPE_6__* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %14, align 8
  %70 = call i8* @quote_identifier(i8* %69)
  %71 = load i8*, i8** %14, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @appendStringInfoString(%struct.TYPE_6__* %7, i8* %74)
  br label %79

76:                                               ; preds = %65
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 @simple_quote_literal(%struct.TYPE_6__* %7, i8* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @pfree(i8* %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %39

85:                                               ; preds = %39
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %3, align 8
  br label %88

88:                                               ; preds = %85, %26
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @ReleaseSysCache(i32 %89)
  %91 = load i8*, i8** %3, align 8
  ret i8* %91
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @deconstruct_array(i32, i32, i32, i32, i8 signext, i32**, i32*, i32*) #1

declare dso_local i32 @DatumGetArrayTypeP(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i32 @simple_quote_literal(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
