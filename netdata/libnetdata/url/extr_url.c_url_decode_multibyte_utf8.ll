; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_url_decode_multibyte_utf8.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_url_decode_multibyte_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @url_decode_multibyte_utf8(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call signext i8 @url_percent_escape_decode(i8* %12)
  store i8 %13, i8* %8, align 1
  %14 = load i8, i8* %8, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8, i8* %8, align 1
  %18 = call i64 @IS_UTF8_STARTBYTE(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ true, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8 0, i8* %4, align 1
  br label %85

27:                                               ; preds = %21
  %28 = load i8, i8* %8, align 1
  %29 = call signext i8 @url_utf8_get_byte_length(i8 signext %28)
  store i8 %29, i8* %9, align 1
  %30 = load i8, i8* %9, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %9, align 1
  %36 = sext i8 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8*, i8** %7, align 8
  %40 = icmp uge i8* %38, %39
  br label %41

41:                                               ; preds = %33, %27
  %42 = phi i1 [ true, %27 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i8 0, i8* %4, align 1
  br label %85

47:                                               ; preds = %41
  %48 = load i8, i8* %9, align 1
  store i8 %48, i8* %10, align 1
  br label %49

49:                                               ; preds = %75, %47
  %50 = load i8, i8* %10, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = call signext i8 @url_percent_escape_decode(i8* %54)
  store i8 %55, i8* %11, align 1
  %56 = load i8, i8* %11, align 1
  %57 = call i32 @IS_UTF8_BYTE(i8 signext %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i8 0, i8* %4, align 1
  br label %85

64:                                               ; preds = %53
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* %9, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i8, i8* %11, align 1
  %72 = call i64 @IS_UTF8_STARTBYTE(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i8 0, i8* %4, align 1
  br label %85

75:                                               ; preds = %70, %64
  %76 = load i8, i8* %11, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  store i8* %80, i8** %5, align 8
  %81 = load i8, i8* %10, align 1
  %82 = add i8 %81, -1
  store i8 %82, i8* %10, align 1
  br label %49

83:                                               ; preds = %49
  %84 = load i8, i8* %9, align 1
  store i8 %84, i8* %4, align 1
  br label %85

85:                                               ; preds = %83, %74, %63, %46, %26
  %86 = load i8, i8* %4, align 1
  ret i8 %86
}

declare dso_local signext i8 @url_percent_escape_decode(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_UTF8_STARTBYTE(i8 signext) #1

declare dso_local signext i8 @url_utf8_get_byte_length(i8 signext) #1

declare dso_local i32 @IS_UTF8_BYTE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
