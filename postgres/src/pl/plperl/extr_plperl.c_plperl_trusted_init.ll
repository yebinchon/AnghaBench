; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_trusted_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_trusted_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dTHX = common dso_local global i32 0, align 4
@pp_require_orig = common dso_local global i32 0, align 4
@PL_ppaddr = common dso_local global i32* null, align 8
@OP_REQUIRE = common dso_local global i64 0, align 8
@OP_DOFILE = common dso_local global i64 0, align 8
@PLC_TRUSTED = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@ERRSV = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_EXTERNAL_ROUTINE_EXCEPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"while executing PLC_TRUSTED\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"my $a=chr(0x100); return $a =~ /\\xa9/i\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"while executing utf8fix\00", align 1
@pp_require_safe = common dso_local global i32 0, align 4
@plperl_opmask = common dso_local global i32 0, align 4
@PL_op_mask = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"DynaLoader\00", align 1
@GV_ADDWARN = common dso_local global i32 0, align 4
@PL_sub_generation = common dso_local global i32 0, align 4
@PL_stashcache = common dso_local global i32* null, align 8
@plperl_on_plperl_init = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"while executing plperl.on_plperl_init\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @plperl_trusted_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plperl_trusted_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @dTHX, align 4
  %6 = load i32, i32* @pp_require_orig, align 4
  %7 = load i32*, i32** @PL_ppaddr, align 8
  %8 = load i64, i64* @OP_REQUIRE, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32 %6, i32* %9, align 4
  %10 = load i32, i32* @pp_require_orig, align 4
  %11 = load i32*, i32** @PL_ppaddr, align 8
  %12 = load i64, i64* @OP_DOFILE, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %10, i32* %13, align 4
  %14 = load i8*, i8** @PLC_TRUSTED, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @eval_pv(i8* %14, i32 %15)
  %17 = load i32, i32* @ERRSV, align 4
  %18 = call i64 @SvTRUE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %0
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i32, i32* @ERRSV, align 4
  %25 = call i32 @sv2cstr(i32 %24)
  %26 = call i32 @strip_trailing_ws(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @errcontext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @ereport(i32 %21, i32 %28)
  br label %30

30:                                               ; preds = %20, %0
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @eval_pv(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ERRSV, align 4
  %34 = call i64 @SvTRUE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %39 = call i32 @errcode(i32 %38)
  %40 = load i32, i32* @ERRSV, align 4
  %41 = call i32 @sv2cstr(i32 %40)
  %42 = call i32 @strip_trailing_ws(i32 %41)
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 @errcontext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %37, i32 %44)
  br label %46

46:                                               ; preds = %36, %30
  %47 = load i32, i32* @pp_require_safe, align 4
  %48 = load i32*, i32** @PL_ppaddr, align 8
  %49 = load i64, i64* @OP_REQUIRE, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @pp_require_safe, align 4
  %52 = load i32*, i32** @PL_ppaddr, align 8
  %53 = load i64, i64* @OP_DOFILE, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @plperl_opmask, align 4
  store i32 %55, i32* @PL_op_mask, align 4
  %56 = load i32, i32* @GV_ADDWARN, align 4
  %57 = call i32* @gv_stashpv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  store i32* %57, i32** %1, align 8
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @hv_iterinit(i32* %58)
  br label %60

60:                                               ; preds = %73, %72, %46
  %61 = load i32*, i32** %1, align 8
  %62 = call i32* @hv_iternextsv(i32* %61, i8** %3, i32* %4)
  store i32* %62, i32** %2, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @isGV_with_GP(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @GvCV(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68, %64
  br label %60

73:                                               ; preds = %68
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @GvCV(i32* %74)
  %76 = call i32 @SvREFCNT_dec(i32 %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @GvCV_set(i32* %77, i32* null)
  br label %60

79:                                               ; preds = %60
  %80 = load i32*, i32** %1, align 8
  %81 = call i32 @hv_clear(i32* %80)
  %82 = load i32, i32* @PL_sub_generation, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @PL_sub_generation, align 4
  %84 = load i32*, i32** @PL_stashcache, align 8
  %85 = call i32 @hv_clear(i32* %84)
  %86 = load i8*, i8** @plperl_on_plperl_init, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %111

88:                                               ; preds = %79
  %89 = load i8*, i8** @plperl_on_plperl_init, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %88
  %94 = load i8*, i8** @plperl_on_plperl_init, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i32 @eval_pv(i8* %94, i32 %95)
  %97 = load i32, i32* @ERRSV, align 4
  %98 = call i64 @SvTRUE(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load i32, i32* @ERROR, align 4
  %102 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %103 = call i32 @errcode(i32 %102)
  %104 = load i32, i32* @ERRSV, align 4
  %105 = call i32 @sv2cstr(i32 %104)
  %106 = call i32 @strip_trailing_ws(i32 %105)
  %107 = call i32 @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = call i32 @errcontext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %109 = call i32 @ereport(i32 %101, i32 %108)
  br label %110

110:                                              ; preds = %100, %93
  br label %111

111:                                              ; preds = %110, %88, %79
  ret void
}

declare dso_local i32 @eval_pv(i8*, i32) #1

declare dso_local i64 @SvTRUE(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @strip_trailing_ws(i32) #1

declare dso_local i32 @sv2cstr(i32) #1

declare dso_local i32 @errcontext(i8*) #1

declare dso_local i32* @gv_stashpv(i8*, i32) #1

declare dso_local i32 @hv_iterinit(i32*) #1

declare dso_local i32* @hv_iternextsv(i32*, i8**, i32*) #1

declare dso_local i32 @isGV_with_GP(i32*) #1

declare dso_local i32 @GvCV(i32*) #1

declare dso_local i32 @SvREFCNT_dec(i32) #1

declare dso_local i32 @GvCV_set(i32*, i32*) #1

declare dso_local i32 @hv_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
