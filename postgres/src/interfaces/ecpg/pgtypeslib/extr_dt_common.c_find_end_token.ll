; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_find_end_token.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_find_end_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @find_end_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_end_token(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %3, align 8
  br label %125

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %26, %18
  %36 = phi i1 [ false, %18 ], [ %34, %26 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %9, align 4
  br label %18

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = call i8* @strchr(i8* %44, i8 signext 37)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %90

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %66, %48
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 -1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 32
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = icmp ugt i8* %58, %62
  br label %64

64:                                               ; preds = %56, %50
  %65 = phi i1 [ false, %50 ], [ %63, %56 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %8, align 8
  br label %50

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %10, align 1
  %72 = load i8*, i8** %8, align 8
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %78, %69
  %74 = load i8*, i8** %4, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 32
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %4, align 8
  br label %73

81:                                               ; preds = %73
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = call i8* @strstr(i8* %82, i8* %86)
  store i8* %87, i8** %6, align 8
  %88 = load i8, i8* %10, align 1
  %89 = load i8*, i8** %8, align 8
  store i8 %88, i8* %89, align 1
  br label %96

90:                                               ; preds = %40
  %91 = load i8*, i8** %4, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8* %95, i8** %6, align 8
  br label %96

96:                                               ; preds = %90, %81
  %97 = load i8*, i8** %6, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %123, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %108, label %122

108:                                              ; preds = %99
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8*, i8** %8, align 8
  %115 = icmp eq i8* %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i8*, i8** %4, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8* %121, i8** %6, align 8
  br label %122

122:                                              ; preds = %116, %108, %99
  br label %123

123:                                              ; preds = %122, %96
  %124 = load i8*, i8** %6, align 8
  store i8* %124, i8** %3, align 8
  br label %125

125:                                              ; preds = %123, %14
  %126 = load i8*, i8** %3, align 8
  ret i8* %126
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
