; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_grep.c_preprocess_filter_expr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_grep.c_preprocess_filter_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"~?\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @preprocess_filter_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @preprocess_filter_expr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @find_next_intgrep(i8* %12, i8* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %82

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @r_str_endswith(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 92
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %8, align 8
  %43 = call i8* @r_str_append(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %36, %27, %23, %18
  %45 = load i8*, i8** %6, align 8
  store i8 0, i8* %45, align 1
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %52, %44
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @find_next_intgrep(i8* %48, i8* %49)
  store i8* %50, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i8* @r_str_append(i8* %53, i8* %54)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sub nsw i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = call i8* @r_str_appendlen(i8* %56, i8* %58, i32 %65)
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %7, align 8
  store i8* %67, i8** %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %46

70:                                               ; preds = %46
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** %8, align 8
  %75 = call i8* @r_str_append(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %75, i8** %8, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i8* @r_str_append(i8* %77, i8* %79)
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  store i8* %81, i8** %3, align 8
  br label %82

82:                                               ; preds = %76, %17
  %83 = load i8*, i8** %3, align 8
  ret i8* %83
}

declare dso_local i8* @find_next_intgrep(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @r_str_endswith(i8*, i8*) #1

declare dso_local i8* @r_str_append(i8*, i8*) #1

declare dso_local i8* @r_str_appendlen(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
