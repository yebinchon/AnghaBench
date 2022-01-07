; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_path.c_wceex_splitpath.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_path.c_wceex_splitpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_DIR = common dso_local global i64 0, align 8
@_MAX_FNAME = common dso_local global i32 0, align 4
@_MAX_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wceex_splitpath(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %35
  br label %114

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @strrchr(i8* %45, i8 signext 47)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @strrchr(i8* %47, i8 signext 92)
  store i8* %48, i8** %12, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ugt i8* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i8*, i8** %11, align 8
  store i8* %53, i8** %12, align 8
  br label %54

54:                                               ; preds = %52, %44
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @_MAX_DIR, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i64, i64* @_MAX_DIR, align 8
  %71 = sub i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %69, %60
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %13, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @strncat(i8* %73, i8* %74, i32 %76)
  br label %78

78:                                               ; preds = %72, %57
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %12, align 8
  br label %83

81:                                               ; preds = %54
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** %12, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* @_MAX_FNAME, align 4
  %90 = sub nsw i32 %89, 1
  %91 = call i32 @strncat(i8* %87, i8* %88, i32 %90)
  %92 = load i8*, i8** %9, align 8
  %93 = call i8* @strrchr(i8* %92, i8 signext 46)
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i8*, i8** %14, align 8
  store i8 0, i8* %97, align 1
  br label %98

98:                                               ; preds = %96, %86
  br label %99

99:                                               ; preds = %98, %83
  %100 = load i8*, i8** %10, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i8*, i8** %12, align 8
  %104 = call i8* @strrchr(i8* %103, i8 signext 46)
  store i8* %104, i8** %15, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load i32, i32* @_MAX_EXT, align 4
  %111 = sub nsw i32 %110, 1
  %112 = call i32 @strncat(i8* %108, i8* %109, i32 %111)
  br label %113

113:                                              ; preds = %107, %102
  br label %114

114:                                              ; preds = %43, %113, %99
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
