; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_gethms.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_gethms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"%d%c%d%c%d%c%1d%*[0]%c%*[0123456789]%c\00", align 1
@noise = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"fractional seconds rejected by pre-2018 versions of zic\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MINSPERHOUR = common dso_local global i32 0, align 4
@SECSPERMIN = common dso_local global i32 0, align 4
@HOURSPERDAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"values over 24 hours not handled by pre-2007 versions of zic\00", align 1
@SECSPERHOUR = common dso_local global i32 0, align 4
@ZIC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @gethms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gethms(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8 48, i8* %13, align 1
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %153

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  store i32 -1, i32* %7, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  br label %34

33:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %6, i8* %10, i32* %8, i8* %11, i32* %9, i8* %12, i32* %15, i8* %13, i8* %14)
  switch i32 %36, label %37 [
    i32 8, label %38
    i32 7, label %49
    i32 5, label %65
    i32 3, label %72
    i32 1, label %79
  ]

37:                                               ; preds = %34
  store i32 0, i32* %16, align 4
  br label %80

38:                                               ; preds = %34
  %39 = load i8, i8* %13, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 48, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8, i8* %13, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 57
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %34, %46
  %50 = load i8, i8* %12, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 46
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %16, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i64, i64* @noise, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @warning(i32 %62)
  br label %64

64:                                               ; preds = %61, %58, %49
  br label %65

65:                                               ; preds = %34, %64
  %66 = load i8, i8* %11, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 58
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %16, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %34, %65
  %73 = load i8, i8* %10, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 58
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %16, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %34, %72
  br label %80

80:                                               ; preds = %79, %37
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  store i32 0, i32* %3, align 4
  br label %153

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @MINSPERHOUR, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @SECSPERMIN, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99, %96, %92, %89, %86
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  store i32 0, i32* %3, align 4
  br label %153

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  %108 = xor i32 %107, 1
  %109 = load i8, i8* %13, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 48
  %112 = zext i1 %111 to i32
  %113 = and i32 %108, %112
  %114 = add nsw i32 5, %113
  %115 = load i32, i32* %15, align 4
  %116 = icmp sle i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load i64, i64* @noise, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %106
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @HOURSPERDAY, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %136, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @HOURSPERDAY, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133, %130, %122
  %137 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %138 = call i32 @warning(i32 %137)
  br label %139

139:                                              ; preds = %136, %133, %126, %106
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %6, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* @SECSPERHOUR, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @SECSPERMIN, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %148, %149
  %151 = mul nsw i32 %145, %150
  %152 = call i32 @oadd(i32 %144, i32 %151)
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %139, %103, %83, %24
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @warning(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @oadd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
