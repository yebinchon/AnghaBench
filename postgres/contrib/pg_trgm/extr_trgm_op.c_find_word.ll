; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_find_word.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_find_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8**, i32*)* @find_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_word(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %10, align 8
  br label %12

12:                                               ; preds = %28, %4
  %13 = load i8*, i8** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @ISWORDCHR(i8* %22)
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %21, %12
  %27 = phi i1 [ false, %12 ], [ %25, %21 ]
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @pg_mblen(i8* %29)
  %31 = load i8*, i8** %10, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %10, align 8
  br label %12

34:                                               ; preds = %26
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp sge i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i8* null, i8** %5, align 8
  br label %78

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = load i8**, i8*** %8, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32*, i32** %9, align 8
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %65, %44
  %49 = load i8**, i8*** %8, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load i8**, i8*** %8, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @ISWORDCHR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %58, %48
  %64 = phi i1 [ false, %48 ], [ %62, %58 ]
  br i1 %64, label %65, label %76

65:                                               ; preds = %63
  %66 = load i8**, i8*** %8, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @pg_mblen(i8* %67)
  %69 = load i8**, i8*** %8, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = sext i32 %68 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %69, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %48

76:                                               ; preds = %63
  %77 = load i8*, i8** %10, align 8
  store i8* %77, i8** %5, align 8
  br label %78

78:                                               ; preds = %76, %43
  %79 = load i8*, i8** %5, align 8
  ret i8* %79
}

declare dso_local i64 @ISWORDCHR(i8*) #1

declare dso_local i32 @pg_mblen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
