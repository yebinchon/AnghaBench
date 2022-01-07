; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/arch/mips/ath79/extr_mach-wi2a-ac200i.c_boot_getenv.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/arch/mips/ath79/extr_mach-wi2a-ac200i.c_boot_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @boot_getenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @boot_getenv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = call i64 @KSEG1ADDR(i32 520552448)
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 131072
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %67, %1
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 255
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @strnlen(i8* %29, i32 %35)
  %37 = sext i32 %36 to i64
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = icmp slt i64 %37, %42
  br label %44

44:                                               ; preds = %28, %24, %19, %14
  %45 = phi i1 [ false, %24 ], [ false, %19 ], [ false, %14 ], [ %43, %28 ]
  br i1 %45, label %46, label %80

46:                                               ; preds = %44
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 61)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %67

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call i64 @strncmp(i8* %53, i8* %54, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %67

64:                                               ; preds = %52
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %66, i8** %2, align 8
  br label %81

67:                                               ; preds = %63, %51
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @strnlen(i8* %68, i32 %74)
  %76 = add nsw i32 %75, 1
  %77 = load i8*, i8** %6, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %6, align 8
  br label %14

80:                                               ; preds = %44
  store i8* null, i8** %2, align 8
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i8*, i8** %2, align 8
  ret i8* %82
}

declare dso_local i64 @KSEG1ADDR(i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
