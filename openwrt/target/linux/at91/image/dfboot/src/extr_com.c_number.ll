; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_com.c_number.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_com.c_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@LEFT = common dso_local global i32 0, align 4
@ZEROPAD = common dso_local global i32 0, align 4
@SIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @number(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca [66 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @LEFT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32, i32* @ZEROPAD, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %21, %5
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 16
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  store i32 0, i32* %6, align 4
  br label %151

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @ZEROPAD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 48, i32 32
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %12, align 1
  store i8 0, i8* %13, align 1
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @SIGN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  store i8 45, i8* %13, align 1
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %48, %45, %33
  store i32 0, i32* %16, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8*, i8** %15, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [66 x i8], [66 x i8]* %14, i64 0, i64 %62
  store i8 %59, i8* %63, align 1
  br label %80

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %68, %64
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i8*, i8** %15, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @do_div(i32 %70, i32 %71)
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds [66 x i8], [66 x i8]* %14, i64 0, i64 %77
  store i8 %74, i8* %78, align 1
  br label %65

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @ZEROPAD, align 4
  %92 = load i32, i32* @LEFT, align 4
  %93 = add nsw i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %101, %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  %100 = icmp sgt i32 %98, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @putc(i8 signext 32)
  br label %97

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %86
  %105 = load i8, i8* %13, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8, i8* %13, align 1
  %109 = call i32 @putc(i8 signext %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @LEFT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %120, %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %9, align 4
  %119 = icmp sgt i32 %117, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i8, i8* %12, align 1
  %122 = call i32 @putc(i8 signext %121)
  br label %116

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %110
  br label %125

125:                                              ; preds = %130, %124
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %10, align 4
  %129 = icmp slt i32 %126, %127
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = call i32 @putc(i8 signext 48)
  br label %125

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %137, %132
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %16, align 4
  %136 = icmp sgt i32 %134, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [66 x i8], [66 x i8]* %14, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = call i32 @putc(i8 signext %141)
  br label %133

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %148, %143
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %9, align 4
  %147 = icmp sgt i32 %145, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = call i32 @putc(i8 signext 32)
  br label %144

150:                                              ; preds = %144
  store i32 1, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %32
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i64 @do_div(i32, i32) #1

declare dso_local i32 @putc(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
