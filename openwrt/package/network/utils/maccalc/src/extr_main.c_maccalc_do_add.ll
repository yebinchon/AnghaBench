; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/maccalc/src/extr_main.c_maccalc_do_add.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/maccalc/src/extr_main.c_maccalc_do_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_ADDRESS_LEN = common dso_local global i32 0, align 4
@ERR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @maccalc_do_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maccalc_do_add(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @MAC_ADDRESS_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 (...) @usage()
  %20 = load i32, i32* @ERR_INVALID, align 4
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @parse_mac(i8* %24, i8* %15)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %66

30:                                               ; preds = %21
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @atoi(i8* %33)
  store i32 %34, i32* %10, align 4
  %35 = getelementptr inbounds i8, i8* %15, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 16
  %39 = getelementptr inbounds i8, i8* %15, i64 4
  %40 = load i8, i8* %39, align 4
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = or i32 %38, %42
  %44 = getelementptr inbounds i8, i8* %15, i64 5
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %43, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds i8, i8* %15, i64 3
  store i8 %54, i8* %55, align 1
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, i8* %15, i64 4
  store i8 %59, i8* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, i8* %15, i64 5
  store i8 %63, i8* %64, align 1
  %65 = call i32 @print_mac(i8* %15)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %66

66:                                               ; preds = %30, %28, %18
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @parse_mac(i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @print_mac(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
