; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_op_error.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_op_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCDETAIL_MULTIPLE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_AMBIGUOUS_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"operator is not unique: %s\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"Could not choose a best candidate operator. You might need to add explicit type casts.\00", align 1
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"operator does not exist: %s\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"No operator matches the given name and argument type. You might need to add an explicit type cast.\00", align 1
@.str.4 = private unnamed_addr constant [98 x i8] c"No operator matches the given name and argument types. You might need to add explicit type casts.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8, i32, i32, i64, i32)* @op_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_error(i32* %0, i32* %1, i8 signext %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* @FUNCDETAIL_MULTIPLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %7
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_AMBIGUOUS_FUNCTION, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load i32*, i32** %9, align 8
  %23 = load i8, i8* %10, align 1
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @op_signature_string(i32* %22, i8 signext %23, i32 %24, i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @errhint(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @parser_errposition(i32* %29, i32 %30)
  %32 = call i32 @ereport(i32 %19, i32 %31)
  br label %58

33:                                               ; preds = %7
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load i8, i8* %10, align 1
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @op_signature_string(i32* %37, i8 signext %38, i32 %39, i32 %40)
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %33
  %49 = call i32 @errhint(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.3, i64 0, i64 0))
  br label %52

50:                                               ; preds = %45
  %51 = call i32 @errhint(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @parser_errposition(i32* %54, i32 %55)
  %57 = call i32 @ereport(i32 %34, i32 %56)
  br label %58

58:                                               ; preds = %52, %18
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @op_signature_string(i32*, i8 signext, i32, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
