; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_uri.c_make_decoded_option.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_uri.c_make_decoded_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"make_decoded_option(): buflen is 0!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"buffer too small for option\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_decoded_option(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = call i32 @NODE_DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %59

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @check_segment(i8* %17, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %59

23:                                               ; preds = %16
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @coap_buildOptionHeader(i32 0, i32 %24, i8* %25, i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ule i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %59

36:                                               ; preds = %23
  %37 = load i64, i64* %11, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %8, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = call i32 @NODE_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %59

49:                                               ; preds = %36
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @decode_segment(i8* %50, i64 %51, i8* %52)
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %49, %47, %35, %22, %14
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i32 @check_segment(i8*, i64) #1

declare dso_local i64 @coap_buildOptionHeader(i32, i32, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @decode_segment(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
