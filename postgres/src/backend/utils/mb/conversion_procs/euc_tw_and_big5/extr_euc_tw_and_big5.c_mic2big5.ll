; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_tw_and_big5/extr_euc_tw_and_big5.c_mic2big5.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_tw_and_big5/extr_euc_tw_and_big5.c_mic2big5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_MULE_INTERNAL = common dso_local global i32 0, align 4
@LC_CNS11643_1 = common dso_local global i16 0, align 2
@LC_CNS11643_2 = common dso_local global i16 0, align 2
@LCPRV2_B = common dso_local global i16 0, align 2
@PG_BIG5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @mic2big5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic2big5(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %11

11:                                               ; preds = %136, %30, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %144

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i16
  store i16 %17, i16* %7, align 2
  %18 = load i16, i16* %7, align 2
  %19 = call i32 @IS_HIGHBIT_SET(i16 zeroext %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %14
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @report_invalid_encoding(i32 %26, i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i16, i16* %7, align 2
  %32 = trunc i16 %31 to i8
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  store i8 %32, i8* %33, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  br label %11

39:                                               ; preds = %14
  %40 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pg_encoding_verifymb(i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @report_invalid_encoding(i32 %47, i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i16, i16* %7, align 2
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* @LC_CNS11643_1, align 2
  %55 = zext i16 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load i16, i16* %7, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* @LC_CNS11643_2, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i16, i16* %7, align 2
  %65 = zext i16 %64 to i32
  %66 = load i16, i16* @LCPRV2_B, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %130

69:                                               ; preds = %63, %57, %51
  %70 = load i16, i16* %7, align 2
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* @LCPRV2_B, align 2
  %73 = zext i16 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i16
  store i16 %79, i16* %7, align 2
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 8
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %84, %88
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %9, align 2
  br label %103

91:                                               ; preds = %69
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 8
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %96, %100
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %9, align 2
  br label %103

103:                                              ; preds = %91, %75
  %104 = load i16, i16* %9, align 2
  %105 = load i16, i16* %7, align 2
  %106 = call zeroext i16 @CNStoBIG5(i16 zeroext %104, i16 zeroext %105)
  store i16 %106, i16* %8, align 2
  %107 = load i16, i16* %8, align 2
  %108 = zext i16 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %112 = load i32, i32* @PG_BIG5, align 4
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @report_untranslatable_char(i32 %111, i32 %112, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %103
  %117 = load i16, i16* %8, align 2
  %118 = zext i16 %117 to i32
  %119 = ashr i32 %118, 8
  %120 = and i32 %119, 255
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %5, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i16, i16* %8, align 2
  %125 = zext i16 %124 to i32
  %126 = and i32 %125, 255
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %5, align 8
  store i8 %127, i8* %128, align 1
  br label %136

130:                                              ; preds = %63
  %131 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %132 = load i32, i32* @PG_BIG5, align 4
  %133 = load i8*, i8** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @report_untranslatable_char(i32 %131, i32 %132, i8* %133, i32 %134)
  br label %136

136:                                              ; preds = %130, %116
  %137 = load i32, i32* %10, align 4
  %138 = load i8*, i8** %4, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %4, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %6, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %6, align 4
  br label %11

144:                                              ; preds = %11
  %145 = load i8*, i8** %5, align 8
  store i8 0, i8* %145, align 1
  ret void
}

declare dso_local i32 @IS_HIGHBIT_SET(i16 zeroext) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @pg_encoding_verifymb(i32, i8*, i32) #1

declare dso_local zeroext i16 @CNStoBIG5(i16 zeroext, i16 zeroext) #1

declare dso_local i32 @report_untranslatable_char(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
