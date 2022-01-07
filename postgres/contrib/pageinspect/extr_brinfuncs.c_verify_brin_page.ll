; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pageinspect/extr_brinfuncs.c_verify_brin_page.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pageinspect/extr_brinfuncs.c_verify_brin_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARHDRSZ = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"input page too small\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected size %d, got %d\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"page is not a BRIN page of type \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Expected special type %08x, got %08x.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @verify_brin_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_brin_page(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @VARSIZE(i32* %9)
  %11 = load i32, i32* @VARHDRSZ, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @BLCKSZ, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %19 = call i32 @errcode(i32 %18)
  %20 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @BLCKSZ, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @errdetail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22)
  %24 = call i32 @ereport(i32 %17, i32 %23)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @VARDATA(i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @BrinPageType(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @BrinPageType(i32 %39)
  %41 = call i32 @errdetail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %40)
  %42 = call i32 @ereport(i32 %33, i32 %41)
  br label %43

43:                                               ; preds = %32, %25
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @VARSIZE(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i32 @VARDATA(i32*) #1

declare dso_local i32 @BrinPageType(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
