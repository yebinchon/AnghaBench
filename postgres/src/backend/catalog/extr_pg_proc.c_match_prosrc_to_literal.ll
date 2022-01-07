; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_proc.c_match_prosrc_to_literal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_proc.c_match_prosrc_to_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32*)* @match_prosrc_to_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_prosrc_to_literal(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %64, %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 92
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %24
  br label %55

33:                                               ; preds = %17
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 39
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 39
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %88

45:                                               ; preds = %38
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @pg_mblen(i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @strncmp(i8* %58, i8* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %88

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %7, align 8
  br label %13

73:                                               ; preds = %13
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 39
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 39
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  store i32 1, i32* %5, align 4
  br label %91

87:                                               ; preds = %78, %73
  br label %88

88:                                               ; preds = %87, %63, %44
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
