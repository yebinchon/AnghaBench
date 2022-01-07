; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_page_flag_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_page_flag_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page_flag_name.buf = internal global [65 x i8] zeroinitializer, align 16
@page_flag_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [21 x i8] c"unknown flag bit %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @page_flag_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @page_flag_name(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %47, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i8**, i8*** @page_flag_names, align 8
  %9 = call i64 @ARRAY_SIZE(i8** %8)
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* %4, align 8
  %14 = lshr i64 %12, %13
  %15 = and i64 %14, 1
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i8**, i8*** @page_flag_names, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %47

29:                                               ; preds = %11
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i8**, i8*** @page_flag_names, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %32
  %42 = phi i32 [ %39, %32 ], [ 95, %40 ]
  %43 = trunc i32 %42 to i8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  %46 = getelementptr inbounds [65 x i8], [65 x i8]* @page_flag_name.buf, i64 0, i64 %44
  store i8 %43, i8* %46, align 1
  br label %47

47:                                               ; preds = %41, %28
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %6

50:                                               ; preds = %6
  ret i8* getelementptr inbounds ([65 x i8], [65 x i8]* @page_flag_name.buf, i64 0, i64 0)
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @fatal(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
