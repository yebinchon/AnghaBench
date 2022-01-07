; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_elog.c_PLy_get_error_data.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_elog.c_PLy_get_error_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"detail\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hint\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"schema_name\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"table_name\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"column_name\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"datatype_name\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"constraint_name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8**, i8**, i8**, i8**, i8**, i8**, i8**)* @PLy_get_error_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PLy_get_error_data(i32* %0, i32* %1, i8** %2, i8** %3, i8** %4, i8** %5, i8** %6, i8** %7, i8** %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i8** %3, i8*** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i8** %7, i8*** %17, align 8
  store i8** %8, i8*** %18, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @PLy_get_sqlerrcode(i32* %19, i32* %20)
  %22 = load i32*, i32** %10, align 8
  %23 = load i8**, i8*** %12, align 8
  %24 = call i32 @get_string_attr(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %23)
  %25 = load i32*, i32** %10, align 8
  %26 = load i8**, i8*** %13, align 8
  %27 = call i32 @get_string_attr(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i8**, i8*** %14, align 8
  %30 = call i32 @get_string_attr(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load i8**, i8*** %15, align 8
  %33 = call i32 @get_string_attr(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load i8**, i8*** %16, align 8
  %36 = call i32 @get_string_attr(i32* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load i8**, i8*** %17, align 8
  %39 = call i32 @get_string_attr(i32* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load i8**, i8*** %18, align 8
  %42 = call i32 @get_string_attr(i32* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %41)
  ret void
}

declare dso_local i32 @PLy_get_sqlerrcode(i32*, i32*) #1

declare dso_local i32 @get_string_attr(i32*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
