; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_grep.c_cmp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_grep.c_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sorted_column = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @r_str_trim_ro(i8* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @r_str_trim_ro(i8* %18)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22, %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %111

32:                                               ; preds = %22
  %33 = load i32, i32* @sorted_column, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @strdup(i8* %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @strdup(i8* %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @r_str_word_set0(i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @r_str_word_set0(i8* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @sorted_column, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @sorted_column, align 4
  %50 = call i8* @r_str_word_get0(i8* %48, i32 %49)
  br label %52

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %51 ]
  store i8* %53, i8** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @sorted_column, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @sorted_column, align 4
  %60 = call i8* @r_str_word_get0(i8* %58, i32 %59)
  br label %62

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i8* [ %60, %57 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %61 ]
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %62, %32
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @IS_DIGIT(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @IS_DIGIT(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @r_num_get(i32* null, i8* %75)
  store i64 %76, i64* %12, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 @r_num_get(i32* null, i8* %77)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %13, align 8
  %81 = icmp sgt i64 %79, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %14, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %3, align 4
  br label %111

88:                                               ; preds = %69, %64
  %89 = load i8*, i8** %6, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @strcmp(i8* %95, i8* %96)
  store i32 %97, i32* %15, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %3, align 4
  br label %111

103:                                              ; preds = %91, %88
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i8*, i8** %4, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 @strcmp(i8* %108, i8* %109)
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %103, %94, %74, %25
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_str_word_set0(i8*) #1

declare dso_local i8* @r_str_word_get0(i8*, i32) #1

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local i64 @r_num_get(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
