; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkhilinkfw.c_do_decrypt.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkhilinkfw.c_do_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@schedule = common dso_local global i32 0, align 4
@DES_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @do_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_decrypt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sub nsw i32 %7, 3
  %9 = sdiv i32 %8, 8
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr i8, i8* %10, i64 3
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %5, align 8
  br label %13

13:                                               ; preds = %17, %2
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @DES_DECRYPT, align 4
  %21 = call i32 @DES_ecb_encrypt(i32* %18, i32* %19, i32* @schedule, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  br label %13

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %6, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %5, align 8
  br label %29

29:                                               ; preds = %33, %24
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @DES_DECRYPT, align 4
  %37 = call i32 @DES_ecb_encrypt(i32* %34, i32* %35, i32* @schedule, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  br label %29

40:                                               ; preds = %29
  ret void
}

declare dso_local i32 @DES_ecb_encrypt(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
