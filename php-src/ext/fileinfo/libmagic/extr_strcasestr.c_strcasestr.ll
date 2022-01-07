; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_strcasestr.c_strcasestr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_strcasestr.c_strcasestr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strcasestr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %5, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load i8, i8* %6, align 1
  %16 = call signext i8 @tolower(i8 zeroext %15)
  store i8 %16, i8* %6, align 1
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %8, align 8
  br label %19

19:                                               ; preds = %36, %14
  br label %20

20:                                               ; preds = %28, %19
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %7, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %49

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i8, i8* %7, align 1
  %30 = call signext i8 @tolower(i8 zeroext %29)
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* %6, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %20, label %35

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @_strncasecmp(i8* %37, i8* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %19, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %42, %2
  %46 = load i8*, i8** %4, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %45, %26
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local signext i8 @tolower(i8 zeroext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @_strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
