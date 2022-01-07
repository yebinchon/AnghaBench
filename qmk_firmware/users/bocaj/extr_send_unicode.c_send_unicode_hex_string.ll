; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/bocaj/extr_send_unicode.c_send_unicode_hex_string.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/bocaj/extr_send_unicode.c_send_unicode_hex_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define weak dso_local void @send_unicode_hex_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %57

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %49, %10
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %22, %15
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %2, align 8
  br label %16

25:                                               ; preds = %16
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strcspn(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %4, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %5, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @strncpy(i8* %31, i8* %32, i64 %33)
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  store i8 0, i8* %36, align 1
  store i8* %31, i8** %6, align 8
  br label %37

37:                                               ; preds = %46, %25
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call signext i8 @tolower(i8 zeroext %43)
  %45 = load i8*, i8** %6, align 8
  store i8 %44, i8* %45, align 1
  br label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  br label %37

49:                                               ; preds = %37
  %50 = call i32 (...) @unicode_input_start()
  %51 = call i32 @send_string(i8* %31)
  %52 = call i32 (...) @unicode_input_finish()
  %53 = load i64, i64* %3, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %2, align 8
  %56 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %56)
  br label %11

57:                                               ; preds = %9, %11
  ret void
}

declare dso_local i64 @strcspn(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

declare dso_local i32 @unicode_input_start(...) #1

declare dso_local i32 @send_string(i8*) #1

declare dso_local i32 @unicode_input_finish(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
