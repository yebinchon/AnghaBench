; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_get_arg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_get_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @get_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_arg(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %187

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %68, %62, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 10
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 13
  br label %36

36:                                               ; preds = %31, %26, %21, %18
  %37 = phi i1 [ false, %26 ], [ false, %21 ], [ false, %18 ], [ %35, %31 ]
  br i1 %37, label %38, label %71

38:                                               ; preds = %36
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 39
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 59
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %187

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 44
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %18

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %5, align 8
  br label %18

71:                                               ; preds = %36
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 13
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %80, %75, %71
  store i32 0, i32* %4, align 4
  br label %187

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %109, %89
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %5, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 9
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ true, %95 ], [ %104, %100 ]
  br label %107

107:                                              ; preds = %105, %90
  %108 = phi i1 [ false, %90 ], [ %106, %105 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8* %111, i8** %5, align 8
  br label %90

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %174, %112
  %114 = load i8*, i8** %5, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 10
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i8*, i8** %5, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 13
  br label %128

128:                                              ; preds = %123, %118, %113
  %129 = phi i1 [ false, %118 ], [ false, %113 ], [ %127, %123 ]
  br i1 %129, label %130, label %175

130:                                              ; preds = %128
  %131 = load i8*, i8** %5, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 39
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %174, label %143

143:                                              ; preds = %140
  %144 = load i8*, i8** %5, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 59
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i8*, i8** %5, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 44
  br i1 %152, label %153, label %154

153:                                              ; preds = %148, %143
  br label %175

154:                                              ; preds = %148
  %155 = load i8*, i8** %5, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 32
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 9
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i8*, i8** %7, align 8
  store i8* %165, i8** %8, align 8
  store i32 1, i32* %9, align 4
  br label %166

166:                                              ; preds = %164, %159, %154
  %167 = load i8*, i8** %5, align 8
  %168 = load i8, i8* %167, align 1
  %169 = load i8*, i8** %7, align 8
  store i8 %168, i8* %169, align 1
  %170 = load i8*, i8** %7, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  store i8* %171, i8** %7, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  store i8* %173, i8** %5, align 8
  br label %174

174:                                              ; preds = %166, %140
  br label %113

175:                                              ; preds = %153, %128
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 0, i32* %4, align 4
  br label %187

179:                                              ; preds = %175
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = load i8*, i8** %7, align 8
  store i8 0, i8* %183, align 1
  store i32 0, i32* %4, align 4
  br label %187

184:                                              ; preds = %179
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8 0, i8* %186, align 1
  store i32 1, i32* %4, align 4
  br label %187

187:                                              ; preds = %184, %182, %178, %88, %56, %16
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
