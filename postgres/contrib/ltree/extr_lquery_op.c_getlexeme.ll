; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_lquery_op.c_getlexeme.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_lquery_op.c_getlexeme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*)* @getlexeme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getlexeme(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %10

10:                                               ; preds = %24, %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @pg_mblen(i8* %15)
  store i32 %16, i32* %9, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @t_iseq(i8* %19, i8 signext 95)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %14, %10
  %23 = phi i1 [ false, %14 ], [ false, %10 ], [ %21, %18 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %5, align 8
  br label %10

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp uge i8* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  br label %67

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @pg_mblen(i8* %41)
  store i32 %42, i32* %9, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @t_iseq(i8* %45, i8 signext 95)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %48, %36
  %52 = phi i1 [ false, %36 ], [ %50, %48 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %8, align 8
  br label %36

58:                                               ; preds = %51
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i8*, i8** %5, align 8
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %58, %34
  %68 = load i8*, i8** %4, align 8
  ret i8* %68
}

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i64 @t_iseq(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
