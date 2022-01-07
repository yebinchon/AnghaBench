; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_create_sub.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_create_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }

@dTHX = common dso_local global i32 0, align 4
@dSP = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s__%u\00", align 1
@plperl_use_strict = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@ENTER = common dso_local global i32 0, align 4
@SAVETMPS = common dso_local global i32 0, align 4
@SP = common dso_local global i32 0, align 4
@PL_sv_no = common dso_local global i32 0, align 4
@PUTBACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"PostgreSQL::InServer::mkfunc\00", align 1
@G_SCALAR = common dso_local global i32 0, align 4
@G_EVAL = common dso_local global i32 0, align 4
@G_KEEPERR = common dso_local global i32 0, align 4
@SPAGAIN = common dso_local global i32 0, align 4
@POPs = common dso_local global i64 0, align 8
@SVt_PVCV = common dso_local global i64 0, align 8
@FREETMPS = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@ERRSV = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"didn't get a CODE reference from compiling function \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @plperl_create_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plperl_create_sub(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @dTHX, align 4
  %14 = load i32, i32* @dSP, align 4
  %15 = load i32, i32* @NAMEDATALEN, align 4
  %16 = add nsw i32 %15, 40
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = call i32* (...) @newHV()
  store i32* %20, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = load i64, i64* @plperl_use_strict, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32*, i32** %9, align 8
  %30 = call i64 (...) @newAV()
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @hv_store_string(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  br label %33

33:                                               ; preds = %28, %3
  %34 = load i32, i32* @ENTER, align 4
  %35 = load i32, i32* @SAVETMPS, align 4
  %36 = load i32, i32* @SP, align 4
  %37 = call i32 @PUSHMARK(i32 %36)
  %38 = load i32, i32* @SP, align 4
  %39 = call i32 @EXTEND(i32 %38, i32 4)
  %40 = call i32 @cstr2sv(i8* %19)
  %41 = call i32* @sv_2mortal(i32 %40)
  %42 = call i32 @PUSHs(i32* %41)
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @newRV_noinc(i32* %43)
  %45 = call i32* @sv_2mortal(i32 %44)
  %46 = call i32 @PUSHs(i32* %45)
  %47 = call i32 @PUSHs(i32* @PL_sv_no)
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @cstr2sv(i8* %48)
  %50 = call i32* @sv_2mortal(i32 %49)
  %51 = call i32 @PUSHs(i32* %50)
  %52 = load i32, i32* @PUTBACK, align 4
  %53 = load i32, i32* @G_SCALAR, align 4
  %54 = load i32, i32* @G_EVAL, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @G_KEEPERR, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @perl_call_pv(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @SPAGAIN, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %82

62:                                               ; preds = %33
  %63 = load i64, i64* @POPs, align 8
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load i32*, i32** %12, align 8
  %69 = call i64 @SvROK(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @SvRV(i32* %72)
  %74 = call i64 @SvTYPE(i32 %73)
  %75 = load i64, i64* @SVt_PVCV, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @SvRV(i32* %78)
  %80 = call i32* @newRV_inc(i32 %79)
  store i32* %80, i32** %10, align 8
  br label %81

81:                                               ; preds = %77, %71, %67, %62
  br label %82

82:                                               ; preds = %81, %33
  %83 = load i32, i32* @PUTBACK, align 4
  %84 = load i32, i32* @FREETMPS, align 4
  %85 = load i32, i32* @LEAVE, align 4
  %86 = load i32, i32* @ERRSV, align 4
  %87 = call i64 @SvTRUE(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %92 = call i32 @errcode(i32 %91)
  %93 = load i32, i32* @ERRSV, align 4
  %94 = call i32 @sv2cstr(i32 %93)
  %95 = call i8* @strip_trailing_ws(i32 %94)
  %96 = call i32 @errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  %97 = call i32 @ereport(i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %89, %82
  %99 = load i32*, i32** %10, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @ERROR, align 4
  %103 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %104 = call i32 @errcode(i32 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* %107)
  %109 = call i32 @ereport(i32 %102, i32 %108)
  br label %110

110:                                              ; preds = %101, %98
  %111 = load i32*, i32** %10, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  %114 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %114)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @newHV(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local i32 @hv_store_string(i32*, i8*, i32*) #2

declare dso_local i64 @newAV(...) #2

declare dso_local i32 @PUSHMARK(i32) #2

declare dso_local i32 @EXTEND(i32, i32) #2

declare dso_local i32 @PUSHs(i32*) #2

declare dso_local i32* @sv_2mortal(i32) #2

declare dso_local i32 @cstr2sv(i8*) #2

declare dso_local i32 @newRV_noinc(i32*) #2

declare dso_local i32 @perl_call_pv(i8*, i32) #2

declare dso_local i64 @SvROK(i32*) #2

declare dso_local i64 @SvTYPE(i32) #2

declare dso_local i32 @SvRV(i32*) #2

declare dso_local i32* @newRV_inc(i32) #2

declare dso_local i64 @SvTRUE(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i8* @strip_trailing_ws(i32) #2

declare dso_local i32 @sv2cstr(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
