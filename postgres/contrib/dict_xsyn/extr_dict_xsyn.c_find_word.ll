; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dict_xsyn/extr_dict_xsyn.c_find_word.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dict_xsyn/extr_dict_xsyn.c_find_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**)* @find_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_word(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @t_isspace(i8* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i1 [ false, %8 ], [ %16, %13 ]
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @pg_mblen(i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %4, align 8
  br label %8

25:                                               ; preds = %17
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 35
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %25
  store i8* null, i8** %3, align 8
  br label %59

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %49, %35
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @t_isspace(i8* %43)
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %55

49:                                               ; preds = %47
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @pg_mblen(i8* %50)
  %52 = load i8*, i8** %4, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %4, align 8
  br label %37

55:                                               ; preds = %47
  %56 = load i8*, i8** %4, align 8
  %57 = load i8**, i8*** %5, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %55, %34
  %60 = load i8*, i8** %3, align 8
  ret i8* %60
}

declare dso_local i64 @t_isspace(i8*) #1

declare dso_local i32 @pg_mblen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
