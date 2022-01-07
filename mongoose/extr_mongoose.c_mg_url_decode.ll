; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_url_decode.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_url_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_url_decode(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %134, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i1 [ false, %16 ], [ %24, %20 ]
  br i1 %26, label %27, label %139

27:                                               ; preds = %25
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %106

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 2
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %104

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isxdigit(i8 zeroext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %104

49:                                               ; preds = %40
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isxdigit(i8 zeroext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %49
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @tolower(i8 zeroext %64)
  store i32 %65, i32* %14, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @tolower(i8 zeroext %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @isdigit(i32 %73) #3
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %58
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %77, 48
  br label %82

79:                                               ; preds = %58
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %80, 87
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ %78, %76 ], [ %81, %79 ]
  %84 = shl i32 %83, 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @isdigit(i32 %85) #3
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 %89, 48
  br label %94

91:                                               ; preds = %82
  %92 = load i32, i32* %15, align 4
  %93 = sub nsw i32 %92, 87
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i32 [ %90, %88 ], [ %93, %91 ]
  %96 = or i32 %84, %95
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 %97, i8* %101, align 1
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %12, align 4
  br label %105

104:                                              ; preds = %49, %40, %35
  store i32 -1, i32* %6, align 4
  br label %152

105:                                              ; preds = %94
  br label %133

106:                                              ; preds = %27
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 43
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load i8*, i8** %9, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8 32, i8* %121, align 1
  br label %132

122:                                              ; preds = %109, %106
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 %127, i8* %131, align 1
  br label %132

132:                                              ; preds = %122, %117
  br label %133

133:                                              ; preds = %132, %105
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %16

139:                                              ; preds = %25
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8 0, i8* %143, align 1
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp sge i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i32, i32* %13, align 4
  br label %150

149:                                              ; preds = %139
  br label %150

150:                                              ; preds = %149, %147
  %151 = phi i32 [ %148, %147 ], [ -1, %149 ]
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %150, %104
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local i32 @tolower(i8 zeroext) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
