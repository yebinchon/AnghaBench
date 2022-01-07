; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ascii.c_pg_to_ascii.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ascii.c_pg_to_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_LATIN1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"  cL Y  \22Ca  -R     'u .,      ?AAAAAAACEEEEIIII NOOOOOxOUUUUYTBaaaaaaaceeeeiiii nooooo/ouuuuyty\00", align 1
@PG_LATIN2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c" A L LS \22SSTZ-ZZ a,l'ls ,sstz\22zzRAAAALCCCEEEEIIDDNNOOOOxRUUUUYTBraaaalccceeeeiiddnnoooo/ruuuuyt.\00", align 1
@PG_LATIN9 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [97 x i8] c"  cL YS sCa  -R     Zu .z   EeY?AAAAAAACEEEEIIII NOOOOOxOUUUUYTBaaaaaaaceeeeiiii nooooo/ouuuuyty\00", align 1
@PG_WIN1250 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [129 x i8] c"  ' \22    %S<STZZ `'\22\22.--  s>stzz   L A  \22CS  -RZ  ,l'u .,as L\22lzRAAAALCCCEEEEIIDDNNOOOOxRUUUUYTBraaaalccceeeeiiddnnoooo/ruuuuyt \00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"encoding conversion from %s to ASCII not supported\00", align 1
@RANGE_128 = common dso_local global i32 0, align 4
@RANGE_160 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @pg_to_ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_to_ascii(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @PG_LATIN1, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 160, i32* %11, align 4
  br label %42

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PG_LATIN2, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i32 160, i32* %11, align 4
  br label %41

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PG_LATIN9, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32 160, i32* %11, align 4
  br label %40

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PG_WIN1250, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  store i32 128, i32* %11, align 4
  br label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @pg_encoding_to_char(i32 %35)
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = call i32 @ereport(i32 %32, i32 %37)
  br label %84

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %15
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %81, %42
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %48, label %84

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %51, 128
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  store i8 %55, i8* %56, align 1
  br label %80

58:                                               ; preds = %48
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  store i8 32, i8* %65, align 1
  br label %79

67:                                               ; preds = %58
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %68, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  store i8 %76, i8* %77, align 1
  br label %79

79:                                               ; preds = %67, %64
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  br label %44

84:                                               ; preds = %31, %44
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pg_encoding_to_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
