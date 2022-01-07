; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_url_matches.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_url_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s, %s\0A\00", align 1
@CERT_TRUST_INVALID_NAME_CONSTRAINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @url_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @url_matches(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [255 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @debugstr_w(i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @debugstr_w(i8* %16)
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @CERT_TRUST_INVALID_NAME_CONSTRAINTS, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  br label %146

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %145

30:                                               ; preds = %26
  store i8* null, i8** %11, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @strchrW(i8* %31, i8 signext 58)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 47
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %47, %41, %35, %30
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @strchrW(i8* %51, i8 signext 47)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = call i8* @strchrW(i8* %56, i8 signext 63)
  store i8* %57, i8** %9, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strlenW(i8* %63)
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i8*, i8** %9, align 8
  store i8* %68, i8** %8, align 8
  br label %69

69:                                               ; preds = %86, %67
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = icmp uge i8* %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 58
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 64
  br label %83

83:                                               ; preds = %78, %73, %69
  %84 = phi i1 [ false, %73 ], [ false, %69 ], [ %82, %78 ]
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %8, align 8
  br label %69

89:                                               ; preds = %83
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 58
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i8*, i8** %8, align 8
  store i8* %95, i8** %9, align 8
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i8*, i8** %5, align 8
  %98 = call i8* @strchrW(i8* %97, i8 signext 64)
  store i8* %98, i8** %10, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** %10, align 8
  store i8* %101, i8** %5, align 8
  br label %102

102:                                              ; preds = %100, %96
  %103 = load i8*, i8** %9, align 8
  %104 = load i8, i8* %103, align 1
  %105 = icmp ne i8 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %102
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %113 = call i32 @ARRAY_SIZE(i8* %112)
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %106
  %117 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %118 = load i8*, i8** %5, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = mul i64 %123, 1
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(i8* %117, i8* %118, i32 %125)
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 %131
  store i8 0, i8* %132, align 1
  %133 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  store i8* %133, i8** %11, align 8
  br label %134

134:                                              ; preds = %116, %106
  br label %137

135:                                              ; preds = %102
  %136 = load i8*, i8** %5, align 8
  store i8* %136, i8** %11, align 8
  br label %137

137:                                              ; preds = %135, %134
  %138 = load i8*, i8** %11, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i8*, i8** %4, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @domain_name_matches(i8* %141, i8* %142)
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %140, %137
  br label %145

145:                                              ; preds = %144, %29
  br label %146

146:                                              ; preds = %145, %21
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @domain_name_matches(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
