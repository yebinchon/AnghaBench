; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_http_urldecode.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_http_urldecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"enduser_setup_http_urldecode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @enduser_setup_http_urldecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enduser_setup_http_urldecode(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  store i8* %21, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %135, %4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ult i8* %32, %33
  br label %35

35:                                               ; preds = %31, %26, %22
  %36 = phi i1 [ false, %26 ], [ false, %22 ], [ %34, %31 ]
  br i1 %36, label %37, label %138

37:                                               ; preds = %35
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %122

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %11, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %122

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %12, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %122

54:                                               ; preds = %48
  %55 = load i8, i8* %11, align 1
  %56 = call i64 @isxdigit(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %122

58:                                               ; preds = %54
  %59 = load i8, i8* %12, align 1
  %60 = call i64 @isxdigit(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %122

62:                                               ; preds = %58
  %63 = load i8, i8* %11, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sge i32 %64, 97
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i8, i8* %11, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 32
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %11, align 1
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i8, i8* %11, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sge i32 %73, 65
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i8, i8* %11, align 1
  %77 = sext i8 %76 to i32
  %78 = sub nsw i32 %77, 55
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %11, align 1
  br label %85

80:                                               ; preds = %71
  %81 = load i8, i8* %11, align 1
  %82 = sext i8 %81 to i32
  %83 = sub nsw i32 %82, 48
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %11, align 1
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i8, i8* %12, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sge i32 %87, 97
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i8, i8* %12, align 1
  %91 = sext i8 %90 to i32
  %92 = sub nsw i32 %91, 32
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %12, align 1
  br label %94

94:                                               ; preds = %89, %85
  %95 = load i8, i8* %12, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sge i32 %96, 65
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i8, i8* %12, align 1
  %100 = sext i8 %99 to i32
  %101 = sub nsw i32 %100, 55
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %12, align 1
  br label %108

103:                                              ; preds = %94
  %104 = load i8, i8* %12, align 1
  %105 = sext i8 %104 to i32
  %106 = sub nsw i32 %105, 48
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %12, align 1
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i8, i8* %11, align 1
  %110 = sext i8 %109 to i32
  %111 = mul nsw i32 16, %110
  %112 = load i8, i8* %12, align 1
  %113 = sext i8 %112 to i32
  %114 = add nsw i32 %111, %113
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %5, align 8
  store i8 %115, i8* %116, align 1
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 3
  store i8* %119, i8** %6, align 8
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 2
  store i32 %121, i32* %13, align 4
  br label %134

122:                                              ; preds = %58, %54, %48, %42, %37
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  %125 = load i8, i8* %123, align 1
  store i8 %125, i8* %14, align 1
  %126 = load i8, i8* %14, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 43
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i8 32, i8* %14, align 1
  br label %130

130:                                              ; preds = %129, %122
  %131 = load i8, i8* %14, align 1
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %5, align 8
  store i8 %131, i8* %132, align 1
  br label %134

134:                                              ; preds = %130, %108
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %22

138:                                              ; preds = %35
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  store i8 0, i8* %139, align 1
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %141, %142
  %144 = zext i1 %143 to i32
  ret i32 %144
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i64 @isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
