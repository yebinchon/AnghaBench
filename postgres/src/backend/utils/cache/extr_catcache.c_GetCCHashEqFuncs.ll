; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_catcache.c_GetCCHashEqFuncs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_catcache.c_GetCCHashEqFuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@charhashfast = common dso_local global i32* null, align 8
@chareqfast = common dso_local global i32 0, align 4
@F_BOOLEQ = common dso_local global i32 0, align 4
@F_CHAREQ = common dso_local global i32 0, align 4
@namehashfast = common dso_local global i32* null, align 8
@nameeqfast = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@int2hashfast = common dso_local global i32* null, align 8
@int2eqfast = common dso_local global i32 0, align 4
@F_INT2EQ = common dso_local global i32 0, align 4
@int4hashfast = common dso_local global i32* null, align 8
@int4eqfast = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@texthashfast = common dso_local global i32* null, align 8
@texteqfast = common dso_local global i32 0, align 4
@F_TEXTEQ = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@oidvectorhashfast = common dso_local global i32* null, align 8
@oidvectoreqfast = common dso_local global i32 0, align 4
@F_OIDVECTOREQ = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"type %u not supported as catcache key\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32**, i32*, i32*)* @GetCCHashEqFuncs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetCCHashEqFuncs(i32 %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %66 [
    i32 145, label %10
    i32 144, label %17
    i32 141, label %24
    i32 143, label %31
    i32 142, label %38
    i32 128, label %45
    i32 140, label %52
    i32 131, label %52
    i32 132, label %52
    i32 133, label %52
    i32 134, label %52
    i32 138, label %52
    i32 129, label %52
    i32 137, label %52
    i32 136, label %52
    i32 130, label %52
    i32 135, label %52
    i32 139, label %59
  ]

10:                                               ; preds = %4
  %11 = load i32*, i32** @charhashfast, align 8
  %12 = load i32**, i32*** %6, align 8
  store i32* %11, i32** %12, align 8
  %13 = load i32, i32* @chareqfast, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @F_BOOLEQ, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  br label %73

17:                                               ; preds = %4
  %18 = load i32*, i32** @charhashfast, align 8
  %19 = load i32**, i32*** %6, align 8
  store i32* %18, i32** %19, align 8
  %20 = load i32, i32* @chareqfast, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @F_CHAREQ, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %73

24:                                               ; preds = %4
  %25 = load i32*, i32** @namehashfast, align 8
  %26 = load i32**, i32*** %6, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i32, i32* @nameeqfast, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @F_NAMEEQ, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %73

31:                                               ; preds = %4
  %32 = load i32*, i32** @int2hashfast, align 8
  %33 = load i32**, i32*** %6, align 8
  store i32* %32, i32** %33, align 8
  %34 = load i32, i32* @int2eqfast, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @F_INT2EQ, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %73

38:                                               ; preds = %4
  %39 = load i32*, i32** @int4hashfast, align 8
  %40 = load i32**, i32*** %6, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32, i32* @int4eqfast, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @F_INT4EQ, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %73

45:                                               ; preds = %4
  %46 = load i32*, i32** @texthashfast, align 8
  %47 = load i32**, i32*** %6, align 8
  store i32* %46, i32** %47, align 8
  %48 = load i32, i32* @texteqfast, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @F_TEXTEQ, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %73

52:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %53 = load i32*, i32** @int4hashfast, align 8
  %54 = load i32**, i32*** %6, align 8
  store i32* %53, i32** %54, align 8
  %55 = load i32, i32* @int4eqfast, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @F_OIDEQ, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  br label %73

59:                                               ; preds = %4
  %60 = load i32*, i32** @oidvectorhashfast, align 8
  %61 = load i32**, i32*** %6, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32, i32* @oidvectoreqfast, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @F_OIDVECTOREQ, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %73

66:                                               ; preds = %4
  %67 = load i32, i32* @FATAL, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @elog(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32**, i32*** %6, align 8
  store i32* null, i32** %70, align 8
  %71 = load i32, i32* @InvalidOid, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %59, %52, %45, %38, %31, %24, %17, %10
  ret void
}

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
