; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_kmac_prov.c_kmac_bytepad_encode_key.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_kmac_prov.c_kmac_bytepad_encode_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KMAC_MAX_KEY = common dso_local global i32 0, align 4
@KMAC_MAX_ENCODED_HEADER_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*, i32, i32)* @kmac_bytepad_encode_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmac_bytepad_encode_key(i8* %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @KMAC_MAX_KEY, align 4
  %17 = load i32, i32* @KMAC_MAX_ENCODED_HEADER_LEN, align 4
  %18 = add nsw i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @encode_string(i8* %21, i32* %14, i8* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %33

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @bytepad(i8* %28, i32* %29, i8* %21, i32 %30, i32* null, i32 0, i32 %31)
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %33

33:                                               ; preds = %27, %26
  %34 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @encode_string(i8*, i32*, i8*, i32) #2

declare dso_local i32 @bytepad(i8*, i32*, i8*, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
