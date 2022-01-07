; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_utf8_validate_cz.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_utf8_validate_cz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @utf8_validate_cz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_validate_cz(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %3, align 8
  %7 = load i8, i8* %5, align 1
  store i8 %7, i8* %4, align 1
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sle i32 %9, 127
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %121

12:                                               ; preds = %1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sle i32 %14, 193
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %121

17:                                               ; preds = %12
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sle i32 %19, 223
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 192
  %27 = icmp ne i32 %26, 128
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %121

29:                                               ; preds = %21
  store i32 2, i32* %2, align 4
  br label %121

30:                                               ; preds = %17
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sle i32 %32, 239
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load i8, i8* %4, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 224
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp slt i32 %41, 160
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %121

44:                                               ; preds = %38, %34
  %45 = load i8, i8* %4, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 237
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sgt i32 %51, 159
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %121

54:                                               ; preds = %48, %44
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 192
  %60 = icmp ne i32 %59, 128
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %121

62:                                               ; preds = %54
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %3, align 8
  %65 = load i8, i8* %63, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 192
  %68 = icmp ne i32 %67, 128
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %121

70:                                               ; preds = %62
  store i32 3, i32* %2, align 4
  br label %121

71:                                               ; preds = %30
  %72 = load i8, i8* %4, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sle i32 %73, 244
  br i1 %74, label %75, label %120

75:                                               ; preds = %71
  %76 = load i8, i8* %4, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 240
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i8*, i8** %3, align 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp slt i32 %82, 144
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %121

85:                                               ; preds = %79, %75
  %86 = load i8, i8* %4, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 244
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i8*, i8** %3, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp sgt i32 %92, 143
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %121

95:                                               ; preds = %89, %85
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %3, align 8
  %98 = load i8, i8* %96, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %99, 192
  %101 = icmp ne i32 %100, 128
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %121

103:                                              ; preds = %95
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  %106 = load i8, i8* %104, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, 192
  %109 = icmp ne i32 %108, 128
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %121

111:                                              ; preds = %103
  %112 = load i8*, i8** %3, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %3, align 8
  %114 = load i8, i8* %112, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 192
  %117 = icmp ne i32 %116, 128
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %121

119:                                              ; preds = %111
  store i32 4, i32* %2, align 4
  br label %121

120:                                              ; preds = %71
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %119, %118, %110, %102, %94, %84, %70, %69, %61, %53, %43, %29, %28, %16, %11
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
