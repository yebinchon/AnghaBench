; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_mac8.c_hex2_to_uchar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_mac8.c_hex2_to_uchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hexlookup = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"macaddr8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i8*)* @hex2_to_uchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @hex2_to_uchar(i8* %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 0, i8* %6, align 1
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sgt i32 %10, 127
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %55

13:                                               ; preds = %2
  %14 = load i8*, i8** @hexlookup, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %7, align 1
  %20 = load i8, i8* %7, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %55

24:                                               ; preds = %13
  %25 = load i8, i8* %7, align 1
  %26 = sext i8 %25 to i32
  %27 = shl i32 %26, 4
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %6, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp sgt i32 %33, 127
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %55

36:                                               ; preds = %24
  %37 = load i8*, i8** @hexlookup, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %7, align 1
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %55

47:                                               ; preds = %36
  %48 = load i8, i8* %7, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %6, align 1
  %54 = load i8, i8* %6, align 1
  store i8 %54, i8* %3, align 1
  br label %62

55:                                               ; preds = %46, %35, %23, %12
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = call i32 @ereport(i32 %56, i32 %60)
  store i8 0, i8* %3, align 1
  br label %62

62:                                               ; preds = %55, %47
  %63 = load i8, i8* %3, align 1
  ret i8 %63
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
