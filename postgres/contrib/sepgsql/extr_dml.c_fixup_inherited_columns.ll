; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_dml.c_fixup_inherited_columns.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_dml.c_fixup_inherited_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8
@InvalidAttrNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cache lookup failed for attribute %s of relation %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64, i32*)* @fixup_inherited_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fixup_inherited_columns(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  store i32* %16, i32** %4, align 8
  br label %61

17:                                               ; preds = %3
  store i32 -1, i32* %9, align 4
  br label %18

18:                                               ; preds = %51, %31, %17
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @bms_next_member(i32* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @InvalidAttrNumber, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32* @bms_add_member(i32* %32, i64 %34)
  store i32* %35, i32** %8, align 8
  br label %18

36:                                               ; preds = %23
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i8* @get_attname(i64 %37, i64 %38, i32 0)
  store i8* %39, i8** %11, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @get_attnum(i64 %40, i8* %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @InvalidAttrNumber, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %48, i64 %49)
  br label %51

51:                                               ; preds = %46, %36
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i32* @bms_add_member(i32* %52, i64 %55)
  store i32* %56, i32** %8, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @pfree(i8* %57)
  br label %18

59:                                               ; preds = %18
  %60 = load i32*, i32** %8, align 8
  store i32* %60, i32** %4, align 8
  br label %61

61:                                               ; preds = %59, %15
  %62 = load i32*, i32** %4, align 8
  ret i32* %62
}

declare dso_local i32 @bms_next_member(i32*, i32) #1

declare dso_local i32* @bms_add_member(i32*, i64) #1

declare dso_local i8* @get_attname(i64, i64, i32) #1

declare dso_local i64 @get_attnum(i64, i8*) #1

declare dso_local i32 @elog(i32, i8*, i8*, i64) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
