; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ex_docmd.c_arg_all.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ex_docmd.c_arg_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARGCOUNT = common dso_local global i32 0, align 4
@ARGLIST = common dso_local global i32* null, align 8
@NUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @arg_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arg_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* null, i8** %3, align 8
  br label %5

5:                                                ; preds = %98, %0
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %79, %5
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @ARGCOUNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %82

10:                                               ; preds = %6
  %11 = load i32*, i32** @ARGLIST, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i8* @alist_name(i32* %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %78

18:                                               ; preds = %10
  %19 = load i32, i32* %1, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 32, i8* %28, align 1
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %29, %18
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @NUL, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 92
  br i1 %49, label %50, label %61

50:                                               ; preds = %45, %40
  %51 = load i8*, i8** %3, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 92, i8* %57, align 1
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %58, %45
  %62 = load i8*, i8** %3, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i8*, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %3, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 %66, i8* %70, align 1
  br label %71

71:                                               ; preds = %64, %61
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  br label %33

77:                                               ; preds = %33
  br label %78

78:                                               ; preds = %77, %10
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %6

82:                                               ; preds = %6
  %83 = load i8*, i8** %3, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i8, i8* @NUL, align 1
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %86, i8* %90, align 1
  br label %99

91:                                               ; preds = %82
  %92 = load i32, i32* %1, align 4
  %93 = add i32 %92, 1
  %94 = call i8* @alloc(i32 %93)
  store i8* %94, i8** %3, align 8
  %95 = load i8*, i8** %3, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %99

98:                                               ; preds = %91
  br label %5

99:                                               ; preds = %97, %85
  %100 = load i8*, i8** %3, align 8
  ret i8* %100
}

declare dso_local i8* @alist_name(i32*) #1

declare dso_local i8* @alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
