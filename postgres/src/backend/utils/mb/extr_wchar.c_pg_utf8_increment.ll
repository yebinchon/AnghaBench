; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_utf8_increment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_utf8_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pg_utf8_increment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_utf8_increment(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %9 [
    i32 4, label %10
    i32 3, label %23
    i32 2, label %36
    i32 1, label %58
  ]

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 3
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %6, align 1
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 191
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = load i8, i8* %19, align 1
  %21 = add i8 %20, 1
  store i8 %21, i8* %19, align 1
  br label %82

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %2, %22
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %6, align 1
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp slt i32 %28, 191
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = add i8 %33, 1
  store i8 %34, i8* %32, align 1
  br label %82

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %2, %35
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %6, align 1
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  switch i32 %42, label %45 [
    i32 237, label %43
    i32 244, label %44
  ]

43:                                               ; preds = %36
  store i8 -97, i8* %7, align 1
  br label %46

44:                                               ; preds = %36
  store i8 -113, i8* %7, align 1
  br label %46

45:                                               ; preds = %36
  store i8 -65, i8* %7, align 1
  br label %46

46:                                               ; preds = %45, %44, %43
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = add i8 %55, 1
  store i8 %56, i8* %54, align 1
  br label %82

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %2, %57
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %6, align 1
  %61 = load i8, i8* %6, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 127
  br i1 %63, label %76, label %64

64:                                               ; preds = %58
  %65 = load i8, i8* %6, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 223
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i8, i8* %6, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 239
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 244
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68, %64, %58
  store i32 0, i32* %3, align 4
  br label %83

77:                                               ; preds = %72
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = add i8 %80, 1
  store i8 %81, i8* %79, align 1
  br label %82

82:                                               ; preds = %77, %52, %30, %17
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %76, %9
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
