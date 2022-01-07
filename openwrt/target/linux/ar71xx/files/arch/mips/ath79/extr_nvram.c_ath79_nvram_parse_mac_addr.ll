; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/arch/mips/ath79/extr_nvram.c_ath79_nvram_parse_mac_addr.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/arch/mips/ath79/extr_nvram.c_ath79_nvram_parse_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%02hhx-%02hhx-%02hhx-%02hhx-%02hhx-%02hhx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath79_nvram_parse_mac_addr(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @vmalloc(i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %106

21:                                               ; preds = %4
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @memcpy(i8* %22, i8* %23, i32 %24)
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @ath79_nvram_find_var(i8* %31, i8* %32, i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %21
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %102

40:                                               ; preds = %21
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = icmp eq i32 %42, 19
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 34
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 18
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 18
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  br label %61

61:                                               ; preds = %56, %50, %44, %40
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 5
  %75 = call i32 @sscanf(i8* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %66, i8* %68, i8* %70, i8* %72, i8* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %61
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 5
  %93 = call i32 @sscanf(i8* %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %82, i8* %84, i8* %86, i8* %88, i8* %90, i8* %92)
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %79, %61
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %12, align 4
  br label %102

101:                                              ; preds = %94
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %101, %98, %37
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @vfree(i8* %103)
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %18
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @ath79_nvram_find_var(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
