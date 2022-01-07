; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lobject.c_l_str2int.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lobject.c_l_str2int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXBY10 = common dso_local global i32 0, align 4
@MAXLASTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @l_str2int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @l_str2int(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %10

10:                                               ; preds = %16, %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call i32 @cast_uchar(i8 signext %12)
  %14 = call i64 @lisspace(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  br label %10

19:                                               ; preds = %10
  %20 = call i32 @isneg(i8** %4)
  store i32 %20, i32* %8, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 48
  br i1 %25, label %26, label %58

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 120
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 88
  br i1 %37, label %38, label %58

38:                                               ; preds = %32, %26
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %54, %38
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @cast_uchar(i8 signext %43)
  %45 = call i64 @lisxdigit(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %48, 16
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @luaO_hexavalue(i8 signext %51)
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  br label %41

57:                                               ; preds = %41
  br label %93

58:                                               ; preds = %32, %19
  br label %59

59:                                               ; preds = %89, %58
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @cast_uchar(i8 signext %61)
  %63 = call i64 @lisdigit(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %59
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MAXBY10, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MAXBY10, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @MAXLASTD, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %79, %80
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %73
  store i8* null, i8** %3, align 8
  br label %125

84:                                               ; preds = %77, %65
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %85, 10
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  br label %59

92:                                               ; preds = %59
  br label %93

93:                                               ; preds = %92, %57
  br label %94

94:                                               ; preds = %100, %93
  %95 = load i8*, i8** %4, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @cast_uchar(i8 signext %96)
  %98 = call i64 @lisspace(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %4, align 8
  br label %94

103:                                              ; preds = %94
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load i8*, i8** %4, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %103
  store i8* null, i8** %3, align 8
  br label %125

112:                                              ; preds = %106
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  %117 = sub i32 0, %116
  br label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %115
  %121 = phi i32 [ %117, %115 ], [ %119, %118 ]
  %122 = call i32 @l_castU2S(i32 %121)
  %123 = load i32*, i32** %5, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i8*, i8** %4, align 8
  store i8* %124, i8** %3, align 8
  br label %125

125:                                              ; preds = %120, %111, %83
  %126 = load i8*, i8** %3, align 8
  ret i8* %126
}

declare dso_local i64 @lisspace(i32) #1

declare dso_local i32 @cast_uchar(i8 signext) #1

declare dso_local i32 @isneg(i8**) #1

declare dso_local i64 @lisxdigit(i32) #1

declare dso_local i32 @luaO_hexavalue(i8 signext) #1

declare dso_local i64 @lisdigit(i32) #1

declare dso_local i32 @l_castU2S(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
