; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_get_nextfield.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_get_nextfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAE_WAIT_MASK = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@PAE_INMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @get_nextfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nextfield(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @PAE_WAIT_MASK, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @BUFSIZ, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %83, %2
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PAE_WAIT_MASK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @t_iseq(i8* %23, i8 signext 35)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %97

27:                                               ; preds = %21
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @t_isspace(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %27
  %33 = load i8**, i8*** %4, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @pg_mblen(i8* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load i8*, i8** %5, align 8
  %41 = load i8**, i8*** %4, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @COPYCHAR(i8* %40, i8* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %39, %32
  %52 = load i32, i32* @PAE_INMASK, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %27
  br label %54

54:                                               ; preds = %53
  br label %83

55:                                               ; preds = %17
  %56 = load i8**, i8*** %4, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @t_isspace(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  store i8 0, i8* %61, align 1
  store i32 1, i32* %3, align 4
  br label %97

62:                                               ; preds = %55
  %63 = load i8**, i8*** %4, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @pg_mblen(i8* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load i8*, i8** %5, align 8
  %71 = load i8**, i8*** %4, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @COPYCHAR(i8* %70, i8* %72)
  %74 = load i32, i32* %9, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %69, %62
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i8**, i8*** %4, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @pg_mblen(i8* %85)
  %87 = load i8**, i8*** %4, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = sext i32 %86 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %87, align 8
  br label %12

91:                                               ; preds = %12
  %92 = load i8*, i8** %5, align 8
  store i8 0, i8* %92, align 1
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @PAE_INMASK, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %60, %26
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @t_iseq(i8*, i8 signext) #1

declare dso_local i64 @t_isspace(i8*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i32 @COPYCHAR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
