; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_path.c_wceex_wsplitpath.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_path.c_wceex_wsplitpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_DIR = common dso_local global i64 0, align 8
@_MAX_FNAME = common dso_local global i32 0, align 4
@_MAX_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wceex_wsplitpath(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64*, i64** %7, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i64*, i64** %8, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64*, i64** %8, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i64*, i64** %9, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64*, i64** %9, align 8
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i64*, i64** %10, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64*, i64** %10, align 8
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i64*, i64** %6, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %35
  br label %115

43:                                               ; preds = %38
  %44 = load i64*, i64** %6, align 8
  %45 = call i64* @wcsrchr(i64* %44, i8 signext 47)
  store i64* %45, i64** %11, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = call i64* @wcsrchr(i64* %46, i8 signext 92)
  store i64* %47, i64** %12, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = icmp ugt i64* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64*, i64** %11, align 8
  store i64* %52, i64** %12, align 8
  br label %53

53:                                               ; preds = %51, %43
  %54 = load i64*, i64** %12, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load i64*, i64** %8, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i64*, i64** %12, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = ptrtoint i64* %60 to i64
  %63 = ptrtoint i64* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 8
  %66 = udiv i64 %65, 8
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @_MAX_DIR, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i64, i64* @_MAX_DIR, align 8
  %72 = sub i64 %71, 1
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %70, %59
  %74 = load i64*, i64** %8, align 8
  %75 = load i64*, i64** %6, align 8
  %76 = load i64, i64* %13, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @wcsncat(i64* %74, i64* %75, i32 %77)
  br label %79

79:                                               ; preds = %73, %56
  %80 = load i64*, i64** %12, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %12, align 8
  br label %84

82:                                               ; preds = %53
  %83 = load i64*, i64** %6, align 8
  store i64* %83, i64** %12, align 8
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i64*, i64** %9, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i64*, i64** %9, align 8
  %89 = load i64*, i64** %12, align 8
  %90 = load i32, i32* @_MAX_FNAME, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @wcsncat(i64* %88, i64* %89, i32 %91)
  %93 = load i64*, i64** %9, align 8
  %94 = call i64* @wcsrchr(i64* %93, i8 signext 46)
  store i64* %94, i64** %14, align 8
  %95 = load i64*, i64** %14, align 8
  %96 = icmp ne i64* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i64*, i64** %14, align 8
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %97, %87
  br label %100

100:                                              ; preds = %99, %84
  %101 = load i64*, i64** %10, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load i64*, i64** %12, align 8
  %105 = call i64* @wcsrchr(i64* %104, i8 signext 46)
  store i64* %105, i64** %15, align 8
  %106 = load i64*, i64** %15, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i64*, i64** %10, align 8
  %110 = load i64*, i64** %15, align 8
  %111 = load i32, i32* @_MAX_EXT, align 4
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @wcsncat(i64* %109, i64* %110, i32 %112)
  br label %114

114:                                              ; preds = %108, %103
  br label %115

115:                                              ; preds = %42, %114, %100
  ret void
}

declare dso_local i64* @wcsrchr(i64*, i8 signext) #1

declare dso_local i32 @wcsncat(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
