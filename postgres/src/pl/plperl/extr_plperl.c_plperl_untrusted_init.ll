; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_untrusted_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_untrusted_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dTHX = common dso_local global i32 0, align 4
@plperl_on_plperlu_init = common dso_local global i64* null, align 8
@FALSE = common dso_local global i32 0, align 4
@ERRSV = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_EXTERNAL_ROUTINE_EXCEPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"while executing plperl.on_plperlu_init\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @plperl_untrusted_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plperl_untrusted_init() #0 {
  %1 = load i32, i32* @dTHX, align 4
  %2 = load i64*, i64** @plperl_on_plperlu_init, align 8
  %3 = icmp ne i64* %2, null
  br i1 %3, label %4, label %26

4:                                                ; preds = %0
  %5 = load i64*, i64** @plperl_on_plperlu_init, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = load i64*, i64** @plperl_on_plperlu_init, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i32 @eval_pv(i64* %9, i32 %10)
  %12 = load i32, i32* @ERRSV, align 4
  %13 = call i64 @SvTRUE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = load i32, i32* @ERRSV, align 4
  %20 = call i32 @sv2cstr(i32 %19)
  %21 = call i32 @strip_trailing_ws(i32 %20)
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @errcontext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %16, i32 %23)
  br label %25

25:                                               ; preds = %15, %8
  br label %26

26:                                               ; preds = %25, %4, %0
  ret void
}

declare dso_local i32 @eval_pv(i64*, i32) #1

declare dso_local i64 @SvTRUE(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @strip_trailing_ws(i32) #1

declare dso_local i32 @sv2cstr(i32) #1

declare dso_local i32 @errcontext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
