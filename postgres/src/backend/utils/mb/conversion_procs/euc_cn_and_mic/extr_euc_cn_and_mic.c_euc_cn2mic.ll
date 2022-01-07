; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_cn_and_mic/extr_euc_cn_and_mic.c_euc_cn2mic.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_cn_and_mic/extr_euc_cn_and_mic.c_euc_cn2mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_EUC_CN = common dso_local global i32 0, align 4
@LC_GB2312_80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @euc_cn2mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @euc_cn2mic(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %68, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %69

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = trunc i32 %15 to i8
  %17 = call i64 @IS_HIGHBIT_SET(i8 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @IS_HIGHBIT_SET(i8 zeroext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* @PG_EUC_CN, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @report_invalid_encoding(i32 %29, i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* @LC_GB2312_80, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i32, i32* %7, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  store i8 %44, i8* %45, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  store i8* %48, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 2
  store i32 %50, i32* %6, align 4
  br label %68

51:                                               ; preds = %11
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* @PG_EUC_CN, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @report_invalid_encoding(i32 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %7, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %59, %33
  br label %8

69:                                               ; preds = %8
  %70 = load i8*, i8** %5, align 8
  store i8 0, i8* %70, align 1
  ret void
}

declare dso_local i64 @IS_HIGHBIT_SET(i8 zeroext) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
