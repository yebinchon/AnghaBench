; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_url_decode_r.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_url_decode_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @url_decode_r(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub i64 %16, 1
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %101, %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ult i8* %25, %26
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %30, label %104

30:                                               ; preds = %28
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 37
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %30
  %39 = load i8*, i8** %8, align 8
  %40 = call signext i8 @url_percent_escape_decode(i8* %39)
  store i8 %40, i8* %11, align 1
  %41 = load i8, i8* %11, align 1
  %42 = call i64 @IS_UTF8_BYTE(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call signext i8 @url_decode_multibyte_utf8(i8* %45, i8* %46, i8* %47)
  store i8 %48, i8* %12, align 1
  %49 = load i8, i8* %12, align 1
  %50 = call i64 @likely(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  %53 = load i8, i8* %12, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8*, i8** %9, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %9, align 8
  %58 = load i8, i8* %12, align 1
  %59 = sext i8 %58 to i32
  %60 = mul nsw i32 %59, 3
  %61 = sub nsw i32 %60, 1
  %62 = load i8*, i8** %8, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %8, align 8
  br label %66

65:                                               ; preds = %44
  br label %113

66:                                               ; preds = %52
  br label %83

67:                                               ; preds = %38
  %68 = load i8, i8* %11, align 1
  %69 = call i64 @likely(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i8, i8* %11, align 1
  %73 = call i64 @isprint(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i8, i8* %11, align 1
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %8, align 8
  br label %82

81:                                               ; preds = %71, %67
  br label %113

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %66
  br label %101

84:                                               ; preds = %30
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 43
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  store i8 32, i8* %93, align 1
  br label %100

95:                                               ; preds = %84
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %9, align 8
  store i8 %97, i8* %98, align 1
  br label %100

100:                                              ; preds = %95, %92
  br label %101

101:                                              ; preds = %100, %83
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %8, align 8
  br label %19

104:                                              ; preds = %28
  %105 = load i8*, i8** %9, align 8
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @utf8_check(i8* %106)
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i8* null, i8** %4, align 8
  br label %115

111:                                              ; preds = %104
  %112 = load i8*, i8** %5, align 8
  store i8* %112, i8** %4, align 8
  br label %115

113:                                              ; preds = %81, %65
  %114 = load i8*, i8** %9, align 8
  store i8 0, i8* %114, align 1
  store i8* null, i8** %4, align 8
  br label %115

115:                                              ; preds = %113, %111, %110
  %116 = load i8*, i8** %4, align 8
  ret i8* %116
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local signext i8 @url_percent_escape_decode(i8*) #1

declare dso_local i64 @IS_UTF8_BYTE(i8 signext) #1

declare dso_local signext i8 @url_decode_multibyte_utf8(i8*, i8*, i8*) #1

declare dso_local i64 @likely(i8 signext) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @utf8_check(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
