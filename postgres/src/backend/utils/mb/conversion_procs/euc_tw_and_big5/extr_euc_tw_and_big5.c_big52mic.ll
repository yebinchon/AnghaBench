; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_tw_and_big5/extr_euc_tw_and_big5.c_big52mic.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_tw_and_big5/extr_euc_tw_and_big5.c_big52mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_BIG5 = common dso_local global i32 0, align 4
@LC_CNS11643_3 = common dso_local global i8 0, align 1
@LC_CNS11643_4 = common dso_local global i8 0, align 1
@LCPRV2_B = common dso_local global i32 0, align 4
@PG_MULE_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @big52mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @big52mic(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %12

12:                                               ; preds = %107, %31, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %115

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load i16, i16* %7, align 2
  %20 = call i32 @IS_HIGHBIT_SET(i16 zeroext %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %15
  %23 = load i16, i16* %7, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @PG_BIG5, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @report_invalid_encoding(i32 %27, i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i16, i16* %7, align 2
  %33 = trunc i16 %32 to i8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 %33, i8* %34, align 1
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %12

40:                                               ; preds = %15
  %41 = load i32, i32* @PG_BIG5, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @pg_encoding_verifymb(i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @PG_BIG5, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @report_invalid_encoding(i32 %48, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i16, i16* %7, align 2
  %54 = zext i16 %53 to i32
  %55 = shl i32 %54, 8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %55, %59
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %8, align 2
  %62 = load i16, i16* %8, align 2
  %63 = call zeroext i16 @BIG5toCNS(i16 zeroext %62, i8* %10)
  store i16 %63, i16* %9, align 2
  %64 = load i8, i8* %10, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %52
  %68 = load i8, i8* %10, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* @LC_CNS11643_3, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i8, i8* %10, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @LC_CNS11643_4, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73, %67
  %80 = load i32, i32* @LCPRV2_B, align 4
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  store i8 %81, i8* %82, align 1
  br label %84

84:                                               ; preds = %79, %73
  %85 = load i8, i8* %10, align 1
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i16, i16* %9, align 2
  %89 = zext i16 %88 to i32
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i16, i16* %9, align 2
  %96 = zext i16 %95 to i32
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  store i8 %98, i8* %99, align 1
  br label %107

101:                                              ; preds = %52
  %102 = load i32, i32* @PG_BIG5, align 4
  %103 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @report_untranslatable_char(i32 %102, i32 %103, i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %84
  %108 = load i32, i32* %11, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %4, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %12

115:                                              ; preds = %12
  %116 = load i8*, i8** %5, align 8
  store i8 0, i8* %116, align 1
  ret void
}

declare dso_local i32 @IS_HIGHBIT_SET(i16 zeroext) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @pg_encoding_verifymb(i32, i8*, i32) #1

declare dso_local zeroext i16 @BIG5toCNS(i16 zeroext, i8*) #1

declare dso_local i32 @report_untranslatable_char(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
