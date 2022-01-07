; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_sv_to_literal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_sv_to_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regtypein = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"lookup failed for type %s\00", align 1
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @plperl_sv_to_literal(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @CStringGetDatum(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @regtypein, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @DirectFunctionCall1(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @OidIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @ereport(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @InvalidOid, align 4
  %31 = call i32 @plperl_sv_to_datum(i32* %28, i32 %29, i32 -1, i32* null, i32* null, i32 %30, i32* %11)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %41

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @getTypeOutputInfo(i32 %36, i32* %8, i32* %10)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @OidOutputFunctionCall(i32 %38, i32 %39)
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %35, %34
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @plperl_sv_to_datum(i32*, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
