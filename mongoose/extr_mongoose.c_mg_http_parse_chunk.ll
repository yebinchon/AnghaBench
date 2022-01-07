; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_parse_chunk.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_parse_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8**, i64*)* @mg_http_parse_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mg_http_parse_chunk(i8* %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %69, %4
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i8*, i8** %10, align 8
  %20 = load i64, i64* %12, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isxdigit(i8 zeroext %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i1 [ false, %14 ], [ %24, %18 ]
  br i1 %26, label %27, label %70

27:                                               ; preds = %25
  %28 = load i64, i64* %11, align 8
  %29 = mul i64 %28, 16
  store i64 %29, i64* %11, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sge i32 %34, 48
  br i1 %35, label %36, label %50

36:                                               ; preds = %27
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 %48, 48
  br label %59

50:                                               ; preds = %36, %27
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call signext i8 @tolower(i8 zeroext %54)
  %56 = sext i8 %55 to i32
  %57 = sub nsw i32 %56, 97
  %58 = add nsw i32 %57, 10
  br label %59

59:                                               ; preds = %50, %43
  %60 = phi i32 [ %49, %43 ], [ %58, %50 ]
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp ugt i64 %66, 6
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i64 0, i64* %5, align 8
  br label %132

69:                                               ; preds = %59
  br label %14

70:                                               ; preds = %25
  %71 = load i64, i64* %12, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8
  %75 = add i64 %74, 2
  %76 = load i64, i64* %7, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %93, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp ne i32 %83, 13
  br i1 %84, label %93, label %85

85:                                               ; preds = %78
  %86 = load i8*, i8** %10, align 8
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 1
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 10
  br i1 %92, label %93, label %94

93:                                               ; preds = %85, %78, %73, %70
  store i64 0, i64* %5, align 8
  br label %132

94:                                               ; preds = %85
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, 2
  store i64 %96, i64* %12, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8**, i8*** %8, align 8
  store i8* %99, i8** %100, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64*, i64** %9, align 8
  store i64 %101, i64* %102, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %128, label %108

108:                                              ; preds = %94
  %109 = load i64, i64* %12, align 8
  %110 = add i64 %109, 2
  %111 = load i64, i64* %7, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %128, label %113

113:                                              ; preds = %108
  %114 = load i8*, i8** %10, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %118, 13
  br i1 %119, label %128, label %120

120:                                              ; preds = %113
  %121 = load i8*, i8** %10, align 8
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp ne i32 %126, 10
  br i1 %127, label %128, label %129

128:                                              ; preds = %120, %113, %108, %94
  store i64 0, i64* %5, align 8
  br label %132

129:                                              ; preds = %120
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, 2
  store i64 %131, i64* %5, align 8
  br label %132

132:                                              ; preds = %129, %128, %93, %68
  %133 = load i64, i64* %5, align 8
  ret i64 %133
}

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
