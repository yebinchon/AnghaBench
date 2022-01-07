; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_call_perl_trigger_func.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_call_perl_trigger_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@dTHX = common dso_local global i32 0, align 4
@dSP = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@SAVETMPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"main::_TD\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_EXTERNAL_ROUTINE_EXCEPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"couldn't fetch $_TD\00", align 1
@sp = common dso_local global i32 0, align 4
@PUTBACK = common dso_local global i32 0, align 4
@G_SCALAR = common dso_local global i32 0, align 4
@G_EVAL = common dso_local global i32 0, align 4
@SPAGAIN = common dso_local global i32 0, align 4
@FREETMPS = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"didn't get a return item from trigger function\00", align 1
@ERRSV = common dso_local global i32 0, align 4
@POPs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, %struct.TYPE_10__*, i32*)* @plperl_call_perl_trigger_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @plperl_call_perl_trigger_func(%struct.TYPE_7__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @dTHX, align 4
  %13 = load i32, i32* @dSP, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %11, align 8
  %20 = load i32, i32* @ENTER, align 4
  %21 = load i32, i32* @SAVETMPS, align 4
  %22 = call i32* @get_sv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %3
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @save_item(i32* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @sv_setsv(i32* %34, i32* %35)
  %37 = load i32, i32* @sp, align 4
  %38 = call i32 @PUSHMARK(i32 %37)
  %39 = load i32, i32* @sp, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @EXTEND(i32 %39, i32 %42)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %61, %31
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cstr2sv(i32 %57)
  %59 = call i32 @sv_2mortal(i32 %58)
  %60 = call i32 @PUSHs(i32 %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %44

64:                                               ; preds = %44
  %65 = load i32, i32* @PUTBACK, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @G_SCALAR, align 4
  %70 = load i32, i32* @G_EVAL, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @perl_call_sv(i32 %68, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @SPAGAIN, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %85

76:                                               ; preds = %64
  %77 = load i32, i32* @PUTBACK, align 4
  %78 = load i32, i32* @FREETMPS, align 4
  %79 = load i32, i32* @LEAVE, align 4
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %82 = call i32 @errcode(i32 %81)
  %83 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %84 = call i32 @ereport(i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %76, %64
  %86 = load i32, i32* @ERRSV, align 4
  %87 = call i64 @SvTRUE(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i32, i32* @POPs, align 4
  %91 = load i32, i32* @PUTBACK, align 4
  %92 = load i32, i32* @FREETMPS, align 4
  %93 = load i32, i32* @LEAVE, align 4
  %94 = load i32, i32* @ERROR, align 4
  %95 = load i32, i32* @ERRCODE_EXTERNAL_ROUTINE_EXCEPTION, align 4
  %96 = call i32 @errcode(i32 %95)
  %97 = load i32, i32* @ERRSV, align 4
  %98 = call i32 @sv2cstr(i32 %97)
  %99 = call i32 @strip_trailing_ws(i32 %98)
  %100 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = call i32 @ereport(i32 %94, i32 %100)
  br label %102

102:                                              ; preds = %89, %85
  %103 = load i32, i32* @POPs, align 4
  %104 = call i32* @newSVsv(i32 %103)
  store i32* %104, i32** %7, align 8
  %105 = load i32, i32* @PUTBACK, align 4
  %106 = load i32, i32* @FREETMPS, align 4
  %107 = load i32, i32* @LEAVE, align 4
  %108 = load i32*, i32** %7, align 8
  ret i32* %108
}

declare dso_local i32* @get_sv(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @save_item(i32*) #1

declare dso_local i32 @sv_setsv(i32*, i32*) #1

declare dso_local i32 @PUSHMARK(i32) #1

declare dso_local i32 @EXTEND(i32, i32) #1

declare dso_local i32 @PUSHs(i32) #1

declare dso_local i32 @sv_2mortal(i32) #1

declare dso_local i32 @cstr2sv(i32) #1

declare dso_local i32 @perl_call_sv(i32, i32) #1

declare dso_local i64 @SvTRUE(i32) #1

declare dso_local i32 @strip_trailing_ws(i32) #1

declare dso_local i32 @sv2cstr(i32) #1

declare dso_local i32* @newSVsv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
