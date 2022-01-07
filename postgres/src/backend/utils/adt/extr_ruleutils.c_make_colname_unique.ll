; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_make_colname_unique.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_make_colname_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"_%d\00", align 1
@NAMEDATALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32*)* @make_colname_unique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_colname_unique(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @colname_is_unique(i8* %10, i32* %11, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %58, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 16
  %21 = call i64 @palloc(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %49, %15
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %42, %23
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @memcpy(i8* %27, i8* %28, i32 %29)
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = load i64, i64* @NAMEDATALEN, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %48

42:                                               ; preds = %26
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @pg_mbcliplen(i8* %43, i32 %44, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %26

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %8, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @colname_is_unique(i8* %50, i32* %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %23, label %56

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %56, %3
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

declare dso_local i32 @colname_is_unique(i8*, i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @pg_mbcliplen(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
