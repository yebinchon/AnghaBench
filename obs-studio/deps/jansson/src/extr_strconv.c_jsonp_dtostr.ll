; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_strconv.c_jsonp_dtostr.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_strconv.c_jsonp_dtostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsonp_dtostr(i8* %0, i64 %1, double %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 17, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load double, double* %8, align 8
  %22 = call i32 @snprintf(i8* %18, i64 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20, double %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %113

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %113

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 46)
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 101)
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %42, 3
  %44 = load i64, i64* %7, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %113

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 46, i8* %50, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %13, align 8
  %53 = add i64 %52, 1
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 48, i8* %54, align 1
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 2
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i64, i64* %13, align 8
  %60 = add i64 %59, 2
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %47, %37, %33
  %62 = load i8*, i8** %6, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 101)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %110

66:                                               ; preds = %61
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 45
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %11, align 8
  br label %78

78:                                               ; preds = %75, %66
  br label %79

79:                                               ; preds = %84, %78
  %80 = load i8*, i8** %12, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 48
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %12, align 8
  br label %79

87:                                               ; preds = %79
  %88 = load i8*, i8** %12, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load i8*, i8** %11, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sub i64 %94, %99
  %101 = call i32 @memmove(i8* %92, i8* %93, i64 %100)
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = load i64, i64* %13, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %13, align 8
  br label %109

109:                                              ; preds = %91, %87
  br label %110

110:                                              ; preds = %109, %61
  %111 = load i64, i64* %13, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %110, %46, %32, %25
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, double) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
