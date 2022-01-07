; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_gen_numname.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_gen_numname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i32)* @gen_numname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_numname(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @mem_cpy(i8* %15, i8* %16, i32 11)
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 5
  br i1 %19, label %20, label %54

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %14, align 4
  br label %22

22:                                               ; preds = %51, %20
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %7, align 8
  %29 = load i32, i32* %27, align 4
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %48, %26
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 16
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i32, i32* %14, align 4
  %35 = shl i32 %34, 1
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, 1
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = and i32 %41, 65536
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* %14, align 4
  %46 = xor i32 %45, 69665
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %44, %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %30

51:                                               ; preds = %30
  br label %22

52:                                               ; preds = %22
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %4
  store i32 7, i32* %11, align 4
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i32, i32* %8, align 4
  %57 = srem i32 %56, 16
  %58 = add nsw i32 %57, 48
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %10, align 1
  %60 = load i8, i8* %10, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sgt i32 %61, 57
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i8, i8* %10, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, 7
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %10, align 1
  br label %68

68:                                               ; preds = %63, %55
  %69 = load i8, i8* %10, align 1
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %11, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 %72
  store i8 %69, i8* %73, align 1
  %74 = load i32, i32* %8, align 4
  %75 = sdiv i32 %74, 16
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %55, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 %81
  store i8 126, i8* %82, align 1
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %115, %79
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 32
  br label %95

95:                                               ; preds = %87, %83
  %96 = phi i1 [ false, %83 ], [ %94, %87 ]
  br i1 %96, label %97, label %118

97:                                               ; preds = %95
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @dbc_1st(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 %107, 1
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %118

111:                                              ; preds = %105
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %111, %97
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %83

118:                                              ; preds = %110, %95
  br label %119

119:                                              ; preds = %138, %118
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %120, 8
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  br label %130

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %122
  %131 = phi i32 [ %128, %122 ], [ 32, %129 ]
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %5, align 8
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  store i8 %132, i8* %137, align 1
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %139, 8
  br i1 %140, label %119, label %141

141:                                              ; preds = %138
  ret void
}

declare dso_local i32 @mem_cpy(i8*, i8*, i32) #1

declare dso_local i64 @dbc_1st(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
