; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheGetKeyValue.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheGetKeyValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i64*, i64)* @IniCacheGetKeyValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @IniCacheGetKeyValue(i8* %0, i8** %1, i64* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i8**, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  %12 = load i64*, i64** %8, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %25, %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  br label %13

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 61
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i8* null, i8** %5, align 8
  br label %145

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %49, %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %37

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 34
  br i1 %56, label %57, label %99

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8**, i8*** %7, align 8
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %70, %60
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 34
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %65

75:                                               ; preds = %65
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  br label %78

78:                                               ; preds = %95, %75
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 13
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 10
  br label %93

93:                                               ; preds = %88, %83, %78
  %94 = phi i1 [ false, %83 ], [ false, %78 ], [ %92, %88 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  br label %78

98:                                               ; preds = %93
  br label %125

99:                                               ; preds = %57, %52
  %100 = load i8*, i8** %6, align 8
  %101 = load i8**, i8*** %7, align 8
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %119, %99
  %103 = load i8*, i8** %6, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load i8*, i8** %6, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 13
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i8*, i8** %6, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 59
  br label %117

117:                                              ; preds = %112, %107, %102
  %118 = phi i1 [ false, %107 ], [ false, %102 ], [ %116, %112 ]
  br i1 %118, label %119, label %124

119:                                              ; preds = %117
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %6, align 8
  %122 = load i64, i64* %10, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %102

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %98
  %126 = load i8*, i8** %6, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 13
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %6, align 8
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i8*, i8** %6, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 10
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i64, i64* %10, align 8
  %143 = load i64*, i64** %8, align 8
  store i64 %142, i64* %143, align 8
  %144 = load i8*, i8** %6, align 8
  store i8* %144, i8** %5, align 8
  br label %145

145:                                              ; preds = %141, %33
  %146 = load i8*, i8** %5, align 8
  ret i8* %146
}

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
