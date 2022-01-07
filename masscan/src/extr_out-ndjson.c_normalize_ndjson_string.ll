; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-ndjson.c_normalize_ndjson_string.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-ndjson.c_normalize_ndjson_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i64)* @normalize_ndjson_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @normalize_ndjson_string(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %113, %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %116

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %11, align 1
  %21 = load i8, i8* %11, align 1
  %22 = call i64 @isprint(i8 zeroext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %16
  %25 = load i8, i8* %11, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 60
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load i8, i8* %11, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 62
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load i8, i8* %11, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 38
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load i8, i8* %11, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 92
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 34
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load i8, i8* %11, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 39
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 2
  %51 = load i64, i64* %8, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %10, align 8
  %61 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 %57, i8* %61, align 1
  br label %62

62:                                               ; preds = %53, %48
  br label %112

63:                                               ; preds = %44, %40, %36, %32, %28, %24, %16
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 7
  %66 = load i64, i64* %8, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 92, i8* %72, align 1
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %10, align 8
  %76 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 117, i8* %76, align 1
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %10, align 8
  %80 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 48, i8* %80, align 1
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  %84 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 48, i8* %84, align 1
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = ashr i32 %89, 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %10, align 8
  %97 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 %93, i8* %97, align 1
  %98 = load i8*, i8** %5, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 15
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %7, align 8
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %10, align 8
  %110 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8 %106, i8* %110, align 1
  br label %111

111:                                              ; preds = %68, %63
  br label %112

112:                                              ; preds = %111, %62
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %9, align 8
  br label %12

116:                                              ; preds = %12
  %117 = load i8*, i8** %7, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %7, align 8
  ret i8* %120
}

declare dso_local i64 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
