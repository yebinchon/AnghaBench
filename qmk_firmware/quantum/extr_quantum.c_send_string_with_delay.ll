; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_send_string_with_delay.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_send_string_with_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SS_TAP_CODE = common dso_local global i8 0, align 1
@SS_DOWN_CODE = common dso_local global i8 0, align 1
@SS_UP_CODE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_string_with_delay(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  br label %10

10:                                               ; preds = %2, %69
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %5, align 1
  %13 = load i8, i8* %5, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %70

16:                                               ; preds = %10
  %17 = load i8, i8* %5, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @SS_TAP_CODE, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %6, align 1
  %26 = load i8, i8* %6, align 1
  %27 = call i32 @register_code(i8 signext %26)
  %28 = load i8, i8* %6, align 1
  %29 = call i32 @unregister_code(i8 signext %28)
  br label %59

30:                                               ; preds = %16
  %31 = load i8, i8* %5, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @SS_DOWN_CODE, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %7, align 1
  %40 = load i8, i8* %7, align 1
  %41 = call i32 @register_code(i8 signext %40)
  br label %58

42:                                               ; preds = %30
  %43 = load i8, i8* %5, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @SS_UP_CODE, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %8, align 1
  %52 = load i8, i8* %8, align 1
  %53 = call i32 @unregister_code(i8 signext %52)
  br label %57

54:                                               ; preds = %42
  %55 = load i8, i8* %5, align 1
  %56 = call i32 @send_char(i8 signext %55)
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %36
  br label %59

59:                                               ; preds = %58, %22
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  %62 = load i8, i8* %4, align 1
  store i8 %62, i8* %9, align 1
  br label %63

63:                                               ; preds = %67, %59
  %64 = load i8, i8* %9, align 1
  %65 = add i8 %64, -1
  store i8 %65, i8* %9, align 1
  %66 = icmp ne i8 %64, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 @wait_ms(i32 1)
  br label %63

69:                                               ; preds = %63
  br label %10

70:                                               ; preds = %15
  ret void
}

declare dso_local i32 @register_code(i8 signext) #1

declare dso_local i32 @unregister_code(i8 signext) #1

declare dso_local i32 @send_char(i8 signext) #1

declare dso_local i32 @wait_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
