; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_expr_result_tupdesc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_expr_result_tupdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPEFUNC_COMPOSITE = common dso_local global i64 0, align 8
@TYPEFUNC_COMPOSITE_DOMAIN = common dso_local global i64 0, align 8
@RECORDOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type %s is not composite\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"record type has not been registered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_expr_result_tupdesc(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @get_expr_result_type(i32* %9, i32* null, i32** %6)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @TYPEFUNC_COMPOSITE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @TYPEFUNC_COMPOSITE_DOMAIN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %2
  %19 = load i32*, i32** %6, align 8
  store i32* %19, i32** %3, align 8
  br label %45

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @exprType(i32* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @RECORDOID, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @format_type_be(i64 %33)
  %35 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 @ereport(i32 %30, i32 %35)
  br label %43

37:                                               ; preds = %23
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %29
  br label %44

44:                                               ; preds = %43, %20
  store i32* null, i32** %3, align 8
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i64 @get_expr_result_type(i32*, i32*, i32**) #1

declare dso_local i64 @exprType(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @format_type_be(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
