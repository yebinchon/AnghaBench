; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_parse_addr_range.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_parse_addr_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"invalid range: %lu,%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_addr_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_addr_range(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strchr(i8* %6, i8 signext 44)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 43)
  store i8* %12, i8** %5, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = call i64 @parse_number(i8* %19)
  store i64 %20, i64* %4, align 8
  br label %60

21:                                               ; preds = %13
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %56

24:                                               ; preds = %21
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @parse_number(i8* %25)
  store i64 %26, i64* %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* @ULONG_MAX, align 8
  store i64 %33, i64* %4, align 8
  br label %55

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i64 @parse_number(i8* %36)
  store i64 %37, i64* %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 44
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %3, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %50, %34
  br label %55

55:                                               ; preds = %54, %32
  br label %59

56:                                               ; preds = %21
  %57 = load i8*, i8** %2, align 8
  %58 = call i64 @parse_number(i8* %57)
  store i64 %58, i64* %3, align 8
  store i64 1, i64* %4, align 8
  br label %59

59:                                               ; preds = %56, %55
  br label %60

60:                                               ; preds = %59, %17
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @add_addr_range(i64 %61, i64 %62)
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @parse_number(i8*) #1

declare dso_local i32 @fatal(i8*, i64, i64) #1

declare dso_local i32 @add_addr_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
