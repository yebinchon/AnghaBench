; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_coolsize.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_coolsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"BKMGTPEZY\00", align 1
@coolsize.size_buf = internal global [12 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @coolsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @coolsize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %13, %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp sge i32 %11, 1024
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 1023
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 10
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %10

20:                                               ; preds = %10
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = ashr i32 %25, 10
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 10
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = srem i32 %29, 10
  %31 = icmp sge i32 %30, 5
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %33, 10
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %32
  br label %45

42:                                               ; preds = %23
  %43 = load i32, i32* %4, align 4
  %44 = sdiv i32 %43, 10
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %41
  br label %96

46:                                               ; preds = %20
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = mul nsw i32 %50, 1000
  %52 = ashr i32 %51, 10
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = srem i32 %53, 10
  %55 = icmp sge i32 %54, 5
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = sdiv i32 %57, 10
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 100
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %56
  br label %69

66:                                               ; preds = %49
  %67 = load i32, i32* %4, align 4
  %68 = sdiv i32 %67, 10
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %65
  br label %95

70:                                               ; preds = %46
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = mul nsw i32 %74, 10000
  %76 = ashr i32 %75, 10
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = srem i32 %77, 10
  %79 = icmp sge i32 %78, 5
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load i32, i32* %4, align 4
  %82 = sdiv i32 %81, 10
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 1000
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %2, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %80
  br label %93

90:                                               ; preds = %73
  %91 = load i32, i32* %4, align 4
  %92 = sdiv i32 %91, 10
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %89
  br label %94

94:                                               ; preds = %93, %70
  br label %95

95:                                               ; preds = %94, %69
  br label %96

96:                                               ; preds = %95, %45
  %97 = load i32, i32* %6, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %159

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 6
  br i1 %101, label %102, label %159

102:                                              ; preds = %99
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %159

105:                                              ; preds = %102
  %106 = load i32, i32* %2, align 4
  %107 = call i8* @xitoa(i32 %106)
  %108 = call i64 @xstrlcpy(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 0), i8* %107, i32 12)
  store i64 %108, i64* %5, align 8
  %109 = load i64, i64* %5, align 8
  %110 = sub i64 %109, 1
  %111 = getelementptr inbounds [12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 %110
  store i8 46, i8* %111, align 1
  %112 = load i32, i32* %4, align 4
  %113 = call i8* @xitoa(i32 %112)
  store i8* %113, i8** %7, align 8
  %114 = load i32, i32* %6, align 4
  %115 = icmp sgt i32 %114, 3
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  br label %119

117:                                              ; preds = %105
  %118 = load i32, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %116
  %120 = phi i32 [ 3, %116 ], [ %118, %117 ]
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %8, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i64 @strlen(i8* %122)
  store i64 %123, i64* %9, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %8, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %119
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %128, 2
  %130 = getelementptr inbounds [12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 %129
  store i8 48, i8* %130, align 1
  %131 = load i64, i64* %5, align 8
  %132 = add i64 %131, 1
  %133 = getelementptr inbounds [12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 %132
  store i8 48, i8* %133, align 1
  %134 = load i64, i64* %5, align 8
  %135 = getelementptr inbounds [12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 %134
  store i8 48, i8* %135, align 1
  %136 = load i64, i64* %5, align 8
  %137 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 0), i64 %136
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %9, align 8
  %140 = sub i64 %138, %139
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8*, i8** %7, align 8
  %143 = load i64, i64* %9, align 8
  %144 = add i64 %143, 1
  %145 = trunc i64 %144 to i32
  %146 = call i64 @xstrlcpy(i8* %141, i8* %142, i32 %145)
  br label %155

147:                                              ; preds = %119
  %148 = load i64, i64* %5, align 8
  %149 = getelementptr inbounds i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 0), i64 %148
  %150 = load i8*, i8** %7, align 8
  %151 = load i64, i64* %8, align 8
  %152 = add i64 %151, 1
  %153 = trunc i64 %152 to i32
  %154 = call i64 @xstrlcpy(i8* %149, i8* %150, i32 %153)
  br label %155

155:                                              ; preds = %147, %127
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %5, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %5, align 8
  br label %171

159:                                              ; preds = %102, %99, %96
  %160 = load i32, i32* %2, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %2, align 4
  %164 = call i8* @xitoa(i32 %163)
  br label %166

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165, %162
  %167 = phi i8* [ %164, %162 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %165 ]
  %168 = call i64 @xstrlcpy(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 0), i8* %167, i32 12)
  store i64 %168, i64* %5, align 8
  %169 = load i64, i64* %5, align 8
  %170 = add i64 %169, -1
  store i64 %170, i64* %5, align 8
  br label %171

171:                                              ; preds = %166, %155
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = load i64, i64* %5, align 8
  %177 = getelementptr inbounds [12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 %176
  store i8 %175, i8* %177, align 1
  %178 = load i64, i64* %5, align 8
  %179 = add i64 %178, 1
  %180 = getelementptr inbounds [12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 %179
  store i8 0, i8* %180, align 1
  ret i8* getelementptr inbounds ([12 x i8], [12 x i8]* @coolsize.size_buf, i64 0, i64 0)
}

declare dso_local i64 @xstrlcpy(i8*, i8*, i32) #1

declare dso_local i8* @xitoa(i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
