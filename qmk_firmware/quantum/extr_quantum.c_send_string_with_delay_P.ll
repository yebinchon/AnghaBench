; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_send_string_with_delay_P.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_send_string_with_delay_P.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SS_TAP_CODE = common dso_local global i8 0, align 1
@SS_DOWN_CODE = common dso_local global i8 0, align 1
@SS_UP_CODE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_string_with_delay_P(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %10

10:                                               ; preds = %2, %70
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @pgm_read_byte(i8* %11)
  %13 = ptrtoint i8* %12 to i8
  store i8 %13, i8* %5, align 1
  %14 = load i8, i8* %5, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %71

17:                                               ; preds = %10
  %18 = load i8, i8* %5, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* @SS_TAP_CODE, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  %26 = call i8* @pgm_read_byte(i8* %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @register_code(i8* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @unregister_code(i8* %29)
  br label %60

31:                                               ; preds = %17
  %32 = load i8, i8* %5, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @SS_DOWN_CODE, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  %40 = call i8* @pgm_read_byte(i8* %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @register_code(i8* %41)
  br label %59

43:                                               ; preds = %31
  %44 = load i8, i8* %5, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @SS_UP_CODE, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  %52 = call i8* @pgm_read_byte(i8* %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @unregister_code(i8* %53)
  br label %58

55:                                               ; preds = %43
  %56 = load i8, i8* %5, align 1
  %57 = call i32 @send_char(i8 signext %56)
  br label %58

58:                                               ; preds = %55, %49
  br label %59

59:                                               ; preds = %58, %37
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %3, align 8
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %68, %60
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %66, i8** %9, align 8
  %67 = icmp ne i8* %65, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @wait_ms(i32 1)
  br label %64

70:                                               ; preds = %64
  br label %10

71:                                               ; preds = %16
  ret void
}

declare dso_local i8* @pgm_read_byte(i8*) #1

declare dso_local i32 @register_code(i8*) #1

declare dso_local i32 @unregister_code(i8*) #1

declare dso_local i32 @send_char(i8 signext) #1

declare dso_local i32 @wait_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
