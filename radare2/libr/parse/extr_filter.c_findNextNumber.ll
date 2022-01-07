; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/extr_filter.c_findNextNumber.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/extr_filter.c_findNextNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @findNextNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @findNextNumber(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %171

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %14

14:                                               ; preds = %169, %147, %12
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %170

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 27
  br i1 %23, label %24, label %74

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 91
  br i1 %29, label %30, label %74

30:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %56, %30
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 74
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 109
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 72
  br label %53

53:                                               ; preds = %48, %43, %38, %33
  %54 = phi i1 [ false, %43 ], [ false, %38 ], [ false, %33 ], [ %52, %48 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  br label %33

59:                                               ; preds = %53
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %170

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  store i8* %73, i8** %6, align 8
  br label %169

74:                                               ; preds = %24, %18
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %7, align 4
  store i32 0, i32* %4, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %107, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %3, align 8
  %81 = icmp eq i8* %79, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %106, label %85

85:                                               ; preds = %78
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 44
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 91
  br label %103

103:                                              ; preds = %98, %93, %88
  %104 = phi i1 [ true, %93 ], [ true, %88 ], [ %102, %98 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %103, %85, %78
  br label %107

107:                                              ; preds = %106, %74
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 91
  br i1 %111, label %112, label %156

112:                                              ; preds = %107
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %170

119:                                              ; preds = %112
  %120 = load i8*, i8** %5, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @IS_DIGIT(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %155, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %5, align 8
  store i8* %125, i8** %8, align 8
  br label %126

126:                                              ; preds = %139, %124
  %127 = load i8*, i8** %8, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i8*, i8** %8, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 93
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i1 [ false, %126 ], [ %135, %131 ]
  br i1 %137, label %138, label %142

138:                                              ; preds = %136
  br label %139

139:                                              ; preds = %138
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %8, align 8
  br label %126

142:                                              ; preds = %136
  %143 = load i8*, i8** %8, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 93
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %14

148:                                              ; preds = %142
  %149 = load i8*, i8** %8, align 8
  store i8* %149, i8** %5, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = icmp ne i8 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  br label %170

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %154, %119
  br label %156

156:                                              ; preds = %155, %107
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = call i64 @IS_DIGIT(i8 signext %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i8*, i8** %5, align 8
  store i8* %165, i8** %2, align 8
  br label %171

166:                                              ; preds = %159, %156
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %5, align 8
  store i8* %167, i8** %6, align 8
  br label %169

169:                                              ; preds = %166, %71
  br label %14

170:                                              ; preds = %153, %118, %69, %14
  store i8* null, i8** %2, align 8
  br label %171

171:                                              ; preds = %170, %164, %11
  %172 = load i8*, i8** %2, align 8
  ret i8* %172
}

declare dso_local i64 @IS_DIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
