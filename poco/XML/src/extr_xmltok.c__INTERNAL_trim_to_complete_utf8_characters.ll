; ModuleID = '/home/carl/AnghaBench/poco/XML/src/extr_xmltok.c__INTERNAL_trim_to_complete_utf8_characters.c'
source_filename = "/home/carl/AnghaBench/poco/XML/src/extr_xmltok.c__INTERNAL_trim_to_complete_utf8_characters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_INTERNAL_trim_to_complete_utf8_characters(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %69, %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ugt i8* %11, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 248
  %21 = icmp eq i32 %20, 240
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 1
  %25 = icmp uge i64 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %28, i8** %5, align 8
  br label %74

29:                                               ; preds = %22
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %29
  br label %68

31:                                               ; preds = %14
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 240
  %35 = icmp eq i32 %34, 224
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  %39 = icmp uge i64 %38, 3
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %5, align 8
  br label %74

43:                                               ; preds = %36
  store i64 0, i64* %6, align 8
  br label %44

44:                                               ; preds = %43
  br label %67

45:                                               ; preds = %31
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 224
  %49 = icmp eq i32 %48, 192
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  %53 = icmp uge i64 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %5, align 8
  br label %74

57:                                               ; preds = %50
  store i64 0, i64* %6, align 8
  br label %58

58:                                               ; preds = %57
  br label %66

59:                                               ; preds = %45
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %74

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %58
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %30
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 -1
  store i8* %71, i8** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %6, align 8
  br label %10

74:                                               ; preds = %64, %54, %40, %26, %10
  %75 = load i8*, i8** %5, align 8
  %76 = load i8**, i8*** %4, align 8
  store i8* %75, i8** %76, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
