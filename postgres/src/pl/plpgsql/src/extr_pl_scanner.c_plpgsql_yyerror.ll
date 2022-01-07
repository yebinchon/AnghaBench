; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_scanner.c_plpgsql_yyerror.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_scanner.c_plpgsql_yyerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@core_yy = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@plpgsql_yylloc = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s at end of input\00", align 1
@plpgsql_yyleng = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%s at or near \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plpgsql_yyerror(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @core_yy, i32 0, i32 0), align 8
  %5 = load i32, i32* @plpgsql_yylloc, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @_(i8* %16)
  %18 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @plpgsql_yylloc, align 4
  %20 = call i32 @plpgsql_scanner_errposition(i32 %19)
  %21 = call i32 @ereport(i32 %13, i32 %20)
  br label %36

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* @plpgsql_yyleng, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @_(i8* %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %31)
  %33 = load i32, i32* @plpgsql_yylloc, align 4
  %34 = call i32 @plpgsql_scanner_errposition(i32 %33)
  %35 = call i32 @ereport(i32 %26, i32 %34)
  br label %36

36:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @plpgsql_scanner_errposition(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
