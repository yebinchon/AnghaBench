; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_data.c_garbage_left.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_data.c_garbage_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECPG_ARRAY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32)* @garbage_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @garbage_left(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @INFORMIX_MODE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  br label %26

26:                                               ; preds = %22
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isdigit(i8 zeroext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %22, label %32

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %15, %11
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 32
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %68

46:                                               ; preds = %39, %33
  br label %67

47:                                               ; preds = %3
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @ECPG_IS_ARRAY(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i8**, i8*** %6, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @array_delimiter(i32 %52, i8 signext %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @array_boundary(i32 %59, i8 signext %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %68

66:                                               ; preds = %58, %51, %47
  br label %67

67:                                               ; preds = %66, %46
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %65, %45
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @INFORMIX_MODE(i32) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @ECPG_IS_ARRAY(i32) #1

declare dso_local i32 @array_delimiter(i32, i8 signext) #1

declare dso_local i32 @array_boundary(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
