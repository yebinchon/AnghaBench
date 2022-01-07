; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_dumputils.c_SplitGUCList.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_dumputils.c_SplitGUCList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SplitGUCList(i8* %0, i8 signext %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8***, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8*** %2, i8**** %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = sdiv i32 %15, 2
  %17 = add nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @pg_malloc(i32 %20)
  %22 = inttoptr i64 %21 to i8**
  store i8** %22, i8*** %10, align 8
  %23 = load i8***, i8**** %7, align 8
  store i8** %22, i8*** %23, align 8
  %24 = load i8**, i8*** %10, align 8
  store i8* null, i8** %24, align 8
  br label %25

25:                                               ; preds = %30, %3
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isspace(i8 zeroext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  br label %25

33:                                               ; preds = %25
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %152

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %146, %39
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 34
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %11, align 8
  br label %48

48:                                               ; preds = %62, %45
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i8* @strchr(i8* %50, i8 signext 34)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %152

55:                                               ; preds = %48
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 34
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %70

62:                                               ; preds = %55
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = call i32 @memmove(i8* %63, i8* %65, i32 %67)
  %69 = load i8*, i8** %12, align 8
  store i8* %69, i8** %8, align 8
  br label %48

70:                                               ; preds = %61
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %8, align 8
  br label %105

73:                                               ; preds = %40
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %11, align 8
  br label %75

75:                                               ; preds = %95, %73
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = load i8, i8* %6, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @isspace(i8 zeroext %89)
  %91 = icmp ne i64 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %87, %80, %75
  %94 = phi i1 [ false, %80 ], [ false, %75 ], [ %92, %87 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %8, align 8
  br label %75

98:                                               ; preds = %93
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %12, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = icmp eq i8* %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %152

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %111, %105
  %107 = load i8*, i8** %8, align 8
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @isspace(i8 zeroext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  br label %106

114:                                              ; preds = %106
  %115 = load i8*, i8** %8, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8, i8* %6, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %114
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %8, align 8
  br label %124

124:                                              ; preds = %129, %121
  %125 = load i8*, i8** %8, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @isspace(i8 zeroext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %8, align 8
  br label %124

132:                                              ; preds = %124
  br label %141

133:                                              ; preds = %114
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 1, i32* %9, align 4
  br label %140

139:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %152

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140, %132
  %142 = load i8*, i8** %12, align 8
  store i8 0, i8* %142, align 1
  %143 = load i8*, i8** %11, align 8
  %144 = load i8**, i8*** %10, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %145, i8*** %10, align 8
  store i8* %143, i8** %144, align 8
  br label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  br i1 %149, label %40, label %150

150:                                              ; preds = %146
  %151 = load i8**, i8*** %10, align 8
  store i8* null, i8** %151, align 8
  store i32 1, i32* %4, align 4
  br label %152

152:                                              ; preds = %150, %139, %103, %54, %38
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
