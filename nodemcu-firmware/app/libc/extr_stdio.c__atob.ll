; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c__atob.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c__atob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @_atob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_atob(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [20 x i8], align 16
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 48
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 120
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 88
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19
  store i32 16, i32* %7, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %31, %25, %3
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %87

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 46)
  store i8* %39, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %87

41:                                               ; preds = %37
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = icmp ugt i64 %46, 19
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %161

49:                                               ; preds = %41
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @strncpy(i8* %50, i8* %51, i32 %57)
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %66 = call i32 @_atob(i32* %9, i8* %65, i32 16)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %161

69:                                               ; preds = %49
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 46)
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %161

76:                                               ; preds = %69
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @_atob(i32* %10, i8* %77, i32 16)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %161

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = shl i32 %82, 16
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  store i32 1, i32* %4, align 4
  br label %161

87:                                               ; preds = %37, %34
  %88 = load i32*, i32** %5, align 8
  store i32 0, i32* %88, align 4
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %155, %87
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %158

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sge i32 %96, 48
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp sle i32 %101, 57
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i8*, i8** %6, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 48
  store i32 %107, i32* %13, align 4
  br label %143

108:                                              ; preds = %98, %93
  %109 = load i8*, i8** %6, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp sge i32 %111, 97
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sle i32 %116, 102
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i8*, i8** %6, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = sub nsw i32 %121, 97
  %123 = add nsw i32 %122, 10
  store i32 %123, i32* %13, align 4
  br label %142

124:                                              ; preds = %113, %108
  %125 = load i8*, i8** %6, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sge i32 %127, 65
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sle i32 %132, 70
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i8*, i8** %6, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = sub nsw i32 %137, 65
  %139 = add nsw i32 %138, 10
  store i32 %139, i32* %13, align 4
  br label %141

140:                                              ; preds = %129, %124
  store i32 0, i32* %4, align 4
  br label %161

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %103
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp sge i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %161

148:                                              ; preds = %143
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = mul nsw i32 %150, %149
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %148
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %6, align 8
  br label %89

158:                                              ; preds = %89
  %159 = load i32, i32* %8, align 4
  %160 = load i32*, i32** %5, align 8
  store i32 %159, i32* %160, align 4
  store i32 1, i32* %4, align 4
  br label %161

161:                                              ; preds = %158, %147, %140, %81, %80, %75, %68, %48
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
