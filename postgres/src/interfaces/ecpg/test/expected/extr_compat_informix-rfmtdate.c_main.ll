; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_compat_informix-rfmtdate.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/expected/extr_compat_informix-rfmtdate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.mdy = private unnamed_addr constant [3 x i16] [i16 11, i16 23, i16 1959], align 2
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"create: r: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"date: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"12031994\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"9.6.1994\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"mmddyy\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ddmmyy\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"yymmdd\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"yy/mm/dd\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"yy mm dd\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"yy.mm.dd\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c".mm.yyyy.dd.\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"mmm. dd, yyyy\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"mmm dd yyyy\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"yyyy dd mm\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"ddd, mmm. dd, yyyy\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"(ddd) mmm. dd, yyyy\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"21-2-54\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"2-12-54\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"20111954\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"130464\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"mmm.dd.yyyy\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"MAR-12-1967\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"1954, February 3rd\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"041269\00", align 1
@.str.24 = private unnamed_addr constant [78 x i8] c"In the year 2525, in the month of July, mankind will be alive on the 28th day\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"dd-mm-yy\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"I said on the 28th of July in the year 2525\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"9/14/58\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"47/03/29\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"oct 28 1975\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Nov 14th, 1985\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"bladdfoommbaryybong\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"20/11/1954\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"29-02-1994\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"dmy\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"21254\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"    21254    \00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"320494\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"mm-yyyy-dd\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"13-1993-21\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i16], align 2
  %3 = alloca [11 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [3 x i16]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %6, i8* align 2 bitcast ([3 x i16]* @__const.main.mdy to i8*), i64 6, i1 false)
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @ECPGdebug(i32 1, i32 %7)
  %9 = getelementptr inbounds [3 x i16], [3 x i16]* %2, i64 0, i64 0
  %10 = call i32 @rmdyjul(i16* %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %0
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %18 = call i32 @rdatestr(i32 %16, i8* %17)
  %19 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %15, %0
  %22 = call i32 @date_test_strdate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @date_test_strdate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @date_test_fmt(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @date_test_fmt(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @date_test_fmt(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @date_test_fmt(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @date_test_fmt(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @date_test_fmt(i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @date_test_fmt(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @date_test_fmt(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @date_test_fmt(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @date_test_fmt(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @date_test_fmt(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @date_test_fmt(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %48 = call i32 @date_test_defmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %49 = call i32 @date_test_defmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %50 = call i32 @date_test_defmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %51 = call i32 @date_test_defmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %52 = call i32 @date_test_defmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %53 = call i32 @date_test_defmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %54 = call i32 @date_test_defmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %55 = call i32 @date_test_defmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.24, i64 0, i64 0))
  %56 = call i32 @date_test_defmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i64 0, i64 0))
  %57 = call i32 @date_test_defmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %58 = call i32 @date_test_defmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  %59 = call i32 @date_test_defmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %60 = call i32 @date_test_defmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %61 = call i32 @date_test_defmt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %62 = call i32 @date_test_defmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  %63 = call i32 @date_test_defmt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %64 = call i32 @date_test_defmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  %65 = call i32 @date_test_defmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  %66 = call i32 @date_test_defmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %67 = call i32 @date_test_defmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ECPGdebug(i32, i32) #2

declare dso_local i32 @rmdyjul(i16*, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @rdatestr(i32, i8*) #2

declare dso_local i32 @date_test_strdate(i8*) #2

declare dso_local i32 @date_test_fmt(i32, i8*) #2

declare dso_local i32 @date_test_defmt(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
