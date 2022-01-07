; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/dummy_index_am/extr_dummy_index_am.c_create_reloptions_table.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/dummy_index_am/extr_dummy_index_am.c_create_reloptions_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8* }

@di_relopt_kind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"option_int\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Integer option for dummy_index_am\00", align 1
@AccessExclusiveLock = common dso_local global i32 0, align 4
@di_relopt_tab = common dso_local global %struct.TYPE_2__* null, align 8
@RELOPT_TYPE_INT = common dso_local global i8* null, align 8
@DummyIndexOptions = common dso_local global i32 0, align 4
@option_int = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"option_real\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Real option for dummy_index_am\00", align 1
@RELOPT_TYPE_REAL = common dso_local global i8* null, align 8
@option_real = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"option_bool\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Boolean option for dummy_index_am\00", align 1
@RELOPT_TYPE_BOOL = common dso_local global i8* null, align 8
@option_bool = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"option_enum\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Enum option for dummy_index_am\00", align 1
@dummyAmEnumValues = common dso_local global i32 0, align 4
@DUMMY_AM_ENUM_ONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Valid values are \22one\22 and \22two\22.\00", align 1
@RELOPT_TYPE_ENUM = common dso_local global i8* null, align 8
@option_enum = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"option_string_val\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"String option for dummy_index_am with non-NULL default\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"DefaultValue\00", align 1
@validate_string_option = common dso_local global i32 0, align 4
@RELOPT_TYPE_STRING = common dso_local global i8* null, align 8
@option_string_val_offset = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"option_string_null\00", align 1
@option_string_null_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_reloptions_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_reloptions_table() #0 {
  %1 = call i32 (...) @add_reloption_kind()
  store i32 %1, i32* @di_relopt_kind, align 4
  %2 = load i32, i32* @di_relopt_kind, align 4
  %3 = load i32, i32* @AccessExclusiveLock, align 4
  %4 = call i32 @add_int_reloption(i32 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 10, i32 -10, i32 100, i32 %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i8*, i8** @RELOPT_TYPE_INT, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i8* %8, i8** %11, align 8
  %12 = load i32, i32* @DummyIndexOptions, align 4
  %13 = load i32, i32* @option_int, align 4
  %14 = call i8* @offsetof(i32 %12, i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* @di_relopt_kind, align 4
  %19 = load i32, i32* @AccessExclusiveLock, align 4
  %20 = call i32 @add_real_reloption(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), double 3.141500e+00, i32 -10, i32 100, i32 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %24 = load i8*, i8** @RELOPT_TYPE_REAL, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* @DummyIndexOptions, align 4
  %29 = load i32, i32* @option_real, align 4
  %30 = call i8* @offsetof(i32 %28, i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* @di_relopt_kind, align 4
  %35 = load i32, i32* @AccessExclusiveLock, align 4
  %36 = call i32 @add_bool_reloption(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %39, align 8
  %40 = load i8*, i8** @RELOPT_TYPE_BOOL, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* @DummyIndexOptions, align 4
  %45 = load i32, i32* @option_bool, align 4
  %46 = call i8* @offsetof(i32 %44, i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* @di_relopt_kind, align 4
  %51 = load i32, i32* @dummyAmEnumValues, align 4
  %52 = load i32, i32* @DUMMY_AM_ENUM_ONE, align 4
  %53 = load i32, i32* @AccessExclusiveLock, align 4
  %54 = call i32 @add_enum_reloption(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %51, i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %57, align 8
  %58 = load i8*, i8** @RELOPT_TYPE_ENUM, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* @DummyIndexOptions, align 4
  %63 = load i32, i32* @option_enum, align 4
  %64 = call i8* @offsetof(i32 %62, i32 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* @di_relopt_kind, align 4
  %69 = load i32, i32* @AccessExclusiveLock, align 4
  %70 = call i32 @add_string_reloption(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* @validate_string_option, i32 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8** %73, align 8
  %74 = load i8*, i8** @RELOPT_TYPE_STRING, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i8* %74, i8** %77, align 8
  %78 = load i32, i32* @DummyIndexOptions, align 4
  %79 = load i32, i32* @option_string_val_offset, align 4
  %80 = call i8* @offsetof(i32 %78, i32 %79)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i8* %80, i8** %83, align 8
  %84 = load i32, i32* @di_relopt_kind, align 4
  %85 = load i32, i32* @AccessExclusiveLock, align 4
  %86 = call i32 @add_string_reloption(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* null, i8* null, i32* @validate_string_option, i32 %85)
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 5
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8** %89, align 8
  %90 = load i8*, i8** @RELOPT_TYPE_STRING, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 5
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i8* %90, i8** %93, align 8
  %94 = load i32, i32* @DummyIndexOptions, align 4
  %95 = load i32, i32* @option_string_null_offset, align 4
  %96 = call i8* @offsetof(i32 %94, i32 %95)
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @di_relopt_tab, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 5
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  ret void
}

declare dso_local i32 @add_reloption_kind(...) #1

declare dso_local i32 @add_int_reloption(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @offsetof(i32, i32) #1

declare dso_local i32 @add_real_reloption(i32, i8*, i8*, double, i32, i32, i32) #1

declare dso_local i32 @add_bool_reloption(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @add_enum_reloption(i32, i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @add_string_reloption(i32, i8*, i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
