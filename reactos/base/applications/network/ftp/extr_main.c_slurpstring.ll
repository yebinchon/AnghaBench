; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_slurpstring.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_slurpstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stringbase = common dso_local global i8* null, align 8
@argbase = common dso_local global i8* null, align 8
@slrflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@altarg = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @slurpstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slurpstring() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %6 = load i8*, i8** @stringbase, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** @argbase, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** @argbase, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 33
  br i1 %12, label %18, label %13

13:                                               ; preds = %0
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 36
  br i1 %17, label %18, label %37

18:                                               ; preds = %13, %0
  %19 = load i32, i32* @slrflag, align 4
  switch i32 %19, label %35 [
    i32 0, label %20
    i32 1, label %31
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @slrflag, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @slrflag, align 4
  %23 = load i8*, i8** @stringbase, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** @stringbase, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 33
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  store i8* %30, i8** %1, align 8
  br label %122

31:                                               ; preds = %18
  %32 = load i32, i32* @slrflag, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @slrflag, align 4
  %34 = load i8*, i8** @stringbase, align 8
  store i8* %34, i8** @altarg, align 8
  br label %36

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %31
  br label %37

37:                                               ; preds = %36, %13
  br label %38

38:                                               ; preds = %43, %37
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %46 [
    i32 0, label %42
    i32 32, label %43
    i32 9, label %43
  ]

42:                                               ; preds = %38
  br label %99

43:                                               ; preds = %38, %38
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %3, align 8
  br label %38

46:                                               ; preds = %38
  %47 = load i32, i32* @slrflag, align 4
  switch i32 %47, label %55 [
    i32 0, label %48
    i32 1, label %51
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @slrflag, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @slrflag, align 4
  br label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @slrflag, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @slrflag, align 4
  %54 = load i8*, i8** %3, align 8
  store i8* %54, i8** @altarg, align 8
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %51, %48
  br label %57

57:                                               ; preds = %90, %79, %68, %56
  %58 = load i8*, i8** %3, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %68 [
    i32 32, label %61
    i32 9, label %61
    i32 0, label %61
    i32 92, label %62
    i32 34, label %65
  ]

61:                                               ; preds = %57, %57, %57
  br label %99

62:                                               ; preds = %57
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %3, align 8
  br label %74

65:                                               ; preds = %57
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  br label %85

68:                                               ; preds = %57
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %3, align 8
  %71 = load i8, i8* %69, align 1
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  store i8 %71, i8* %72, align 1
  store i32 1, i32* %2, align 4
  br label %57

74:                                               ; preds = %62
  %75 = load i8*, i8** %3, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  switch i32 %77, label %79 [
    i32 0, label %78
  ]

78:                                               ; preds = %74
  br label %99

79:                                               ; preds = %74
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %3, align 8
  %82 = load i8, i8* %80, align 1
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  store i8 %82, i8* %83, align 1
  store i32 1, i32* %2, align 4
  br label %57

85:                                               ; preds = %93, %65
  %86 = load i8*, i8** %3, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %93 [
    i32 0, label %89
    i32 34, label %90
  ]

89:                                               ; preds = %85
  br label %99

90:                                               ; preds = %85
  %91 = load i8*, i8** %3, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %3, align 8
  br label %57

93:                                               ; preds = %85
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %3, align 8
  %96 = load i8, i8* %94, align 1
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %4, align 8
  store i8 %96, i8* %97, align 1
  store i32 1, i32* %2, align 4
  br label %85

99:                                               ; preds = %89, %78, %61, %42
  %100 = load i32, i32* %2, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %4, align 8
  store i8 0, i8* %103, align 1
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i8*, i8** %4, align 8
  store i8* %106, i8** @argbase, align 8
  %107 = load i8*, i8** %3, align 8
  store i8* %107, i8** @stringbase, align 8
  %108 = load i32, i32* %2, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i8*, i8** %5, align 8
  store i8* %111, i8** %1, align 8
  br label %122

112:                                              ; preds = %105
  %113 = load i32, i32* @slrflag, align 4
  switch i32 %113, label %120 [
    i32 0, label %114
    i32 1, label %117
  ]

114:                                              ; preds = %112
  %115 = load i32, i32* @slrflag, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @slrflag, align 4
  br label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @slrflag, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @slrflag, align 4
  store i8* null, i8** @altarg, align 8
  br label %121

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %117, %114
  store i8* null, i8** %1, align 8
  br label %122

122:                                              ; preds = %121, %110, %20
  %123 = load i8*, i8** %1, align 8
  ret i8* %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
