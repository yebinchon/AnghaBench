; ModuleID = '/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_escape_xmlz.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_escape_xmlz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @escape_xmlz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @escape_xmlz(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  store i64 %8, i64* %7, align 8
  br label %9

9:                                                ; preds = %108, %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %109

19:                                               ; preds = %17
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %100 [
    i32 92, label %23
    i32 38, label %30
    i32 60, label %44
    i32 62, label %58
    i32 34, label %72
    i32 39, label %86
  ]

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  store i8 47, i8* %24, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %7, align 8
  br label %108

30:                                               ; preds = %19
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %31, 5
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strcpy(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %36, 5
  store i64 %37, i64* %7, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  br label %43

42:                                               ; preds = %30
  br label %110

43:                                               ; preds = %33
  br label %108

44:                                               ; preds = %19
  %45 = load i64, i64* %7, align 8
  %46 = icmp ugt i64 %45, 4
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strcpy(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, 4
  store i64 %51, i64* %7, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  store i8* %53, i8** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  br label %57

56:                                               ; preds = %44
  br label %110

57:                                               ; preds = %47
  br label %108

58:                                               ; preds = %19
  %59 = load i64, i64* %7, align 8
  %60 = icmp ugt i64 %59, 4
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strcpy(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %64, 4
  store i64 %65, i64* %7, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  br label %71

70:                                               ; preds = %58
  br label %110

71:                                               ; preds = %61
  br label %108

72:                                               ; preds = %19
  %73 = load i64, i64* %7, align 8
  %74 = icmp ugt i64 %73, 6
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strcpy(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i64, i64* %7, align 8
  %79 = sub i64 %78, 6
  store i64 %79, i64* %7, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 6
  store i8* %81, i8** %4, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  br label %85

84:                                               ; preds = %72
  br label %110

85:                                               ; preds = %75
  br label %108

86:                                               ; preds = %19
  %87 = load i64, i64* %7, align 8
  %88 = icmp ugt i64 %87, 6
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @strcpy(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i64, i64* %7, align 8
  %93 = sub i64 %92, 6
  store i64 %93, i64* %7, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 6
  store i8* %95, i8** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %5, align 8
  br label %99

98:                                               ; preds = %86
  br label %110

99:                                               ; preds = %89
  br label %108

100:                                              ; preds = %19
  %101 = load i64, i64* %7, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %7, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %5, align 8
  %105 = load i8, i8* %103, align 1
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %4, align 8
  store i8 %105, i8* %106, align 1
  br label %108

108:                                              ; preds = %100, %99, %85, %71, %57, %43, %23
  br label %9

109:                                              ; preds = %17
  br label %110

110:                                              ; preds = %109, %98, %84, %70, %56, %42
  %111 = load i8*, i8** %4, align 8
  store i8 0, i8* %111, align 1
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = sub i64 %112, %113
  ret i64 %114
}

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
