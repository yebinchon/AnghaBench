; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varchar.c_anychar_typmodin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varchar.c_anychar_typmodin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid type modifier\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"length for type %s must be at least 1\00", align 1
@MaxAttrSize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"length for type %s cannot exceed %d\00", align 1
@VARHDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @anychar_typmodin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anychar_typmodin(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @ArrayGetIntegerTypmods(i32* %8, i32* %7)
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @ereport(i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = call i32 @ereport(i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %22, %18
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MaxAttrSize, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* @MaxAttrSize, align 4
  %40 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 %39)
  %41 = call i32 @ereport(i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* @VARHDRSZ, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %43, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32* @ArrayGetIntegerTypmods(i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
