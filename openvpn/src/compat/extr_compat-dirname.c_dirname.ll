; ModuleID = '/home/carl/AnghaBench/openvpn/src/compat/extr_compat-dirname.c_dirname.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/compat/extr_compat-dirname.c_dirname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dirname.dot = internal constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dirname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8 47, i8* %4, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @strrchr(i8* %10, i8 signext 47)
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i8* [ %11, %9 ], [ null, %12 ]
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 92)
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i8* [ %22, %20 ], [ null, %23 ]
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 92, i32 47
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %4, align 1
  br label %31

31:                                               ; preds = %24, %13
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %79

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %38
  %45 = load i8*, i8** %3, align 8
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %60, %44
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 -1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* %4, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %63

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %5, align 8
  br label %46

63:                                               ; preds = %58, %46
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %2, align 8
  %66 = icmp ne i8* %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i8*, i8** %2, align 8
  %69 = load i8, i8* %4, align 1
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i64 @__memrchr(i8* %68, i8 signext %69, i32 %75)
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %3, align 8
  br label %78

78:                                               ; preds = %67, %63
  br label %79

79:                                               ; preds = %78, %38, %34, %31
  %80 = load i8*, i8** %3, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %122

82:                                               ; preds = %79
  %83 = load i8*, i8** %3, align 8
  store i8* %83, i8** %6, align 8
  br label %84

84:                                               ; preds = %98, %82
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %2, align 8
  %87 = icmp ne i8* %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8, i8* %4, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %101

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8* %100, i8** %6, align 8
  br label %84

101:                                              ; preds = %96, %84
  %102 = load i8*, i8** %6, align 8
  %103 = load i8*, i8** %2, align 8
  %104 = icmp eq i8* %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i8*, i8** %3, align 8
  %107 = load i8*, i8** %2, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = icmp eq i8* %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %3, align 8
  br label %116

113:                                              ; preds = %105
  %114 = load i8*, i8** %2, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8* %115, i8** %3, align 8
  br label %116

116:                                              ; preds = %113, %110
  br label %119

117:                                              ; preds = %101
  %118 = load i8*, i8** %6, align 8
  store i8* %118, i8** %3, align 8
  br label %119

119:                                              ; preds = %117, %116
  %120 = load i8*, i8** %3, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 0, i8* %121, align 1
  br label %123

122:                                              ; preds = %79
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @dirname.dot, i64 0, i64 0), i8** %2, align 8
  br label %123

123:                                              ; preds = %122, %119
  %124 = load i8*, i8** %2, align 8
  ret i8* %124
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @__memrchr(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
