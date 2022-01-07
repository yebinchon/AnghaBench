; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_jp_and_sjis/extr_euc_jp_and_sjis.c_mic2euc_jp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_jp_and_sjis/extr_euc_jp_and_sjis.c_mic2euc_jp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_MULE_INTERNAL = common dso_local global i32 0, align 4
@LC_JISX0201K = common dso_local global i32 0, align 4
@SS2 = common dso_local global i32 0, align 4
@LC_JISX0212 = common dso_local global i32 0, align 4
@SS3 = common dso_local global i32 0, align 4
@LC_JISX0208 = common dso_local global i32 0, align 4
@PG_EUC_JP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @mic2euc_jp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic2euc_jp(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %104, %27, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %112

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @IS_HIGHBIT_SET(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @report_invalid_encoding(i32 %23, i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %7, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  store i8 %29, i8* %30, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  br label %9

36:                                               ; preds = %12
  %37 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @pg_encoding_verifymb(i32 %37, i8* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @report_invalid_encoding(i32 %44, i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %36
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @LC_JISX0201K, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i32, i32* @SS2, align 4
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 %54, i8* %55, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %5, align 8
  store i8 %59, i8* %60, align 1
  br label %104

62:                                               ; preds = %48
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @LC_JISX0212, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i32, i32* @SS3, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  store i8 %78, i8* %79, align 1
  br label %103

81:                                               ; preds = %62
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @LC_JISX0208, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %5, align 8
  store i8 %93, i8* %94, align 1
  br label %102

96:                                               ; preds = %81
  %97 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %98 = load i32, i32* @PG_EUC_JP, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @report_untranslatable_char(i32 %97, i32 %98, i8* %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %85
  br label %103

103:                                              ; preds = %102, %66
  br label %104

104:                                              ; preds = %103, %52
  %105 = load i32, i32* %8, align 4
  %106 = load i8*, i8** %4, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %9

112:                                              ; preds = %9
  %113 = load i8*, i8** %5, align 8
  store i8 0, i8* %113, align 1
  ret void
}

declare dso_local i32 @IS_HIGHBIT_SET(i32) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @pg_encoding_verifymb(i32, i8*, i32) #1

declare dso_local i32 @report_untranslatable_char(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
