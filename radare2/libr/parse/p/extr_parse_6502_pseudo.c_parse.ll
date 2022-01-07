; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_6502_pseudo.c_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_6502_pseudo.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [3 x i8*], align 16
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 %22, 256
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %144

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i8* @malloc(i32 %27)
  store i8* %28, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %144

31:                                               ; preds = %25
  %32 = load i8*, i8** %13, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @memcpy(i8* %32, i8* %33, i32 %35)
  %37 = load i8*, i8** %13, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %141

40:                                               ; preds = %31
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @addr_type(i8* %41)
  store i32 %42, i32* %16, align 4
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @r_str_replace_char(i8* %43, i8 signext 40, i8 signext 32)
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @r_str_replace_char(i8* %45, i8 signext 41, i8 signext 32)
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %47, align 16
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %48, align 16
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %49, align 16
  %50 = load i8*, i8** %13, align 8
  %51 = call i8* @strchr(i8* %50, i8 signext 32)
  store i8* %51, i8** %14, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %40
  %55 = load i8*, i8** %13, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 9)
  store i8* %56, i8** %14, align 8
  br label %57

57:                                               ; preds = %54, %40
  %58 = load i8*, i8** %14, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %106

60:                                               ; preds = %57
  %61 = load i8*, i8** %14, align 8
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %14, align 8
  br label %64

64:                                               ; preds = %70, %60
  %65 = load i8*, i8** %14, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69
  %71 = load i8*, i8** %14, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %14, align 8
  br label %64

73:                                               ; preds = %64
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @strncpy(i8* %74, i8* %75, i32 255)
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @strncpy(i8* %77, i8* %78, i32 255)
  %80 = load i8*, i8** %14, align 8
  store i8* %80, i8** %15, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = call i8* @strchr(i8* %81, i8 signext 44)
  store i8* %82, i8** %14, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %105

85:                                               ; preds = %73
  %86 = load i8*, i8** %14, align 8
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %14, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %14, align 8
  br label %89

89:                                               ; preds = %95, %85
  %90 = load i8*, i8** %14, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94
  %96 = load i8*, i8** %14, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %14, align 8
  br label %89

98:                                               ; preds = %89
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %100 = load i8*, i8** %15, align 8
  %101 = call i32 @strncpy(i8* %99, i8* %100, i32 255)
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @strncpy(i8* %102, i8* %103, i32 255)
  br label %105

105:                                              ; preds = %98, %73
  br label %110

106:                                              ; preds = %57
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @strncpy(i8* %107, i8* %108, i32 255)
  br label %110

110:                                              ; preds = %106, %105
  %111 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %112, i8** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 1
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8* %114, i8** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 1
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8* %116, i8** %115, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %132, %110
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 3
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* %18, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %18, align 4
  br label %131

131:                                              ; preds = %128, %120
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %117

135:                                              ; preds = %117
  %136 = load i32, i32* %18, align 4
  %137 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  %138 = load i8*, i8** %7, align 8
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @replace(i32 %136, i8** %137, i8* %138, i32 %139)
  br label %141

141:                                              ; preds = %135, %31
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @free(i8* %142)
  store i32 1, i32* %4, align 4
  br label %144

144:                                              ; preds = %141, %30, %24
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @addr_type(i8*) #1

declare dso_local i32 @r_str_replace_char(i8*, i8 signext, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @replace(i32, i8**, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
