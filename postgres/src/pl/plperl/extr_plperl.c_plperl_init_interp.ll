; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_init_interp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_init_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plperl_init_interp.embedding = internal global [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* inttoptr (i64 128 to i8*), i8* null, i8* null], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@plperl_on_init = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"could not allocate Perl interpreter\00", align 1
@dTHX = common dso_local global i32 0, align 4
@PERL_EXIT_DESTRUCT_END = common dso_local global i32 0, align 4
@PL_exit_flags = common dso_local global i32 0, align 4
@pp_require_orig = common dso_local global i64 0, align 8
@PL_ppaddr = common dso_local global i64* null, align 8
@OP_REQUIRE = common dso_local global i64 0, align 8
@OP_DOFILE = common dso_local global i64 0, align 8
@plperl_init_shared_libs = common dso_local global i32 0, align 4
@ERRCODE_EXTERNAL_ROUTINE_EXCEPTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ERRSV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"while parsing Perl initialization\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"while running Perl initialization\00", align 1
@FloatExceptionHandler = common dso_local global i32 0, align 4
@LC_COLLATE = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MONETARY = common dso_local global i32 0, align 4
@LC_NUMERIC = common dso_local global i32 0, align 4
@LC_TIME = common dso_local global i32 0, align 4
@PL_op_mask = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@plperl_opmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @plperl_init_interp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @plperl_init_interp() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32 3, i32* %2, align 4
  %3 = load i8*, i8** @plperl_on_init, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load i8*, i8** @plperl_on_init, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %2, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* @plperl_init_interp.embedding, i64 0, i64 %13
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = load i8*, i8** @plperl_on_init, align 8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* @plperl_init_interp.embedding, i64 0, i64 %18
  store i8* %15, i8** %19, align 8
  br label %20

20:                                               ; preds = %10, %5, %0
  %21 = call i32* (...) @perl_alloc()
  store i32* %21, i32** %1, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @PERL_SET_CONTEXT(i32* %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @perl_construct(i32* %30)
  %32 = load i32, i32* @dTHX, align 4
  %33 = load i32, i32* @PERL_EXIT_DESTRUCT_END, align 4
  %34 = load i32, i32* @PL_exit_flags, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @PL_exit_flags, align 4
  %36 = load i64, i64* @pp_require_orig, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %27
  %39 = load i64*, i64** @PL_ppaddr, align 8
  %40 = load i64, i64* @OP_REQUIRE, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* @pp_require_orig, align 8
  br label %52

43:                                               ; preds = %27
  %44 = load i64, i64* @pp_require_orig, align 8
  %45 = load i64*, i64** @PL_ppaddr, align 8
  %46 = load i64, i64* @OP_REQUIRE, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* @pp_require_orig, align 8
  %49 = load i64*, i64** @PL_ppaddr, align 8
  %50 = load i64, i64* @OP_DOFILE, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %43, %38
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @plperl_init_shared_libs, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i64 @perl_parse(i32* %53, i32 %54, i32 %55, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @plperl_init_interp.embedding, i64 0, i64 0), i32* null)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = load i32, i32* @ERRSV, align 4
  %63 = call i32 @sv2cstr(i32 %62)
  %64 = call i32 @strip_trailing_ws(i32 %63)
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = call i32 @errcontext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %67 = call i32 @ereport(i32 %59, i32 %66)
  br label %68

68:                                               ; preds = %58, %52
  %69 = load i32*, i32** %1, align 8
  %70 = call i64 @perl_run(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = load i32, i32* @ERRSV, align 4
  %77 = call i32 @sv2cstr(i32 %76)
  %78 = call i32 @strip_trailing_ws(i32 %77)
  %79 = call i32 @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = call i32 @errcontext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 @ereport(i32 %73, i32 %80)
  br label %82

82:                                               ; preds = %72, %68
  %83 = load i32*, i32** %1, align 8
  ret i32* %83
}

declare dso_local i32* @perl_alloc(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @PERL_SET_CONTEXT(i32*) #1

declare dso_local i32 @perl_construct(i32*) #1

declare dso_local i64 @perl_parse(i32*, i32, i32, i8**, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @strip_trailing_ws(i32) #1

declare dso_local i32 @sv2cstr(i32) #1

declare dso_local i32 @errcontext(i8*) #1

declare dso_local i64 @perl_run(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
