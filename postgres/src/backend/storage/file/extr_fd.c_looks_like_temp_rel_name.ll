; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_looks_like_temp_rel_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_looks_like_temp_rel_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @looks_like_temp_rel_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 116
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %123

14:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %15

15:                                               ; preds = %24, %14
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isdigit(i8 zeroext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 95
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %27
  store i32 0, i32* %2, align 4
  br label %123

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %51, %39
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isdigit(i8 zeroext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %42

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %123

59:                                               ; preds = %54
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 95
  br i1 %66, label %67, label %82

67:                                               ; preds = %59
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = call i32 @forkname_chars(i8* %72, i32* null)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %123

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %59
  %83 = load i8*, i8** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 46
  br i1 %89, label %90, label %113

90:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %102, %90
  %92 = load i8*, i8** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @isdigit(i8 zeroext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %91

105:                                              ; preds = %91
  %106 = load i32, i32* %7, align 4
  %107 = icmp sle i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %123

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %82
  %114 = load i8*, i8** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %123

122:                                              ; preds = %113
  store i32 1, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %121, %108, %76, %58, %38, %13
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @forkname_chars(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
