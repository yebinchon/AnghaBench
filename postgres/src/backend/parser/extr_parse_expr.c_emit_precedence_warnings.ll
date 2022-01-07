; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_emit_precedence_warnings.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_emit_precedence_warnings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@oldprecedence_l = common dso_local global i64* null, align 8
@oldprecedence_r = common dso_local global i64* null, align 8
@PREC_GROUP_IN = common dso_local global i32 0, align 4
@PREC_GROUP_NOT_IN = common dso_local global i32 0, align 4
@PREC_GROUP_POSTFIX_OP = common dso_local global i32 0, align 4
@PREC_GROUP_POSTFIX_IS = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"operator precedence change: %s is now lower precedence than %s\00", align 1
@PREC_GROUP_PREFIX_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32*, i32*, i32)* @emit_precedence_warnings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_precedence_warnings(i32* %0, i32 %1, i8* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @operator_precedence_group(i32* %19, i8** %14)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %6
  %24 = load i64*, i64** @oldprecedence_l, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** @oldprecedence_r, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %28, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %23
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @PREC_GROUP_IN, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @PREC_GROUP_NOT_IN, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @PREC_GROUP_POSTFIX_OP, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @PREC_GROUP_POSTFIX_IS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* @WARNING, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @parser_errposition(i32* %56, i32 %57)
  %59 = call i32 @ereport(i32 %52, i32 %58)
  br label %60

60:                                               ; preds = %51, %47, %43, %39, %35, %23
  br label %61

61:                                               ; preds = %60, %6
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @operator_precedence_group(i32* %62, i8** %14)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load i64*, i64** @oldprecedence_r, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** @oldprecedence_l, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp sle i64 %71, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %66
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @PREC_GROUP_PREFIX_OP, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* @WARNING, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %84, i8* %85)
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @parser_errposition(i32* %87, i32 %88)
  %90 = call i32 @ereport(i32 %83, i32 %89)
  br label %91

91:                                               ; preds = %82, %78, %66
  br label %92

92:                                               ; preds = %91, %61
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @operator_precedence_group(i32*, i8**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
