; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_parseKeyName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_parseKeyName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@REG_CLASS_NUMBER = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@reg_class_namesW = common dso_local global i8** null, align 8
@CSTR_EQUAL = common dso_local global i64 0, align 8
@reg_class_keys = common dso_local global i32** null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**, i8**)* @parseKeyName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseKeyName(i8* %0, i32** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %115

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 92
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %8, align 8
  br label %41

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %16

41:                                               ; preds = %32, %16
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  br label %58

51:                                               ; preds = %41
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @lstrlenW(i8* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %51, %44
  %59 = load i32**, i32*** %6, align 8
  store i32* null, i32** %59, align 8
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %94, %58
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @REG_CLASS_NUMBER, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %60
  %65 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i8**, i8*** @reg_class_namesW, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @CompareStringW(i32 %65, i32 0, i8* %66, i32 %67, i8* %72, i32 %73)
  %75 = load i64, i64* @CSTR_EQUAL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %64
  %78 = load i32, i32* %10, align 4
  %79 = load i8**, i8*** @reg_class_namesW, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @lstrlenW(i8* %83)
  %85 = icmp eq i32 %78, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load i32**, i32*** @reg_class_keys, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32**, i32*** %6, align 8
  store i32* %91, i32** %92, align 8
  br label %97

93:                                               ; preds = %77, %64
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %60

97:                                               ; preds = %86, %60
  %98 = load i32**, i32*** %6, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %4, align 4
  br label %115

103:                                              ; preds = %97
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i8*, i8** %8, align 8
  %113 = load i8**, i8*** %7, align 8
  store i8* %112, i8** %113, align 8
  %114 = load i32, i32* @TRUE, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %101, %13
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i64 @CompareStringW(i32, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
