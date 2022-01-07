; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_numeric_leaf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_numeric_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LF_NUMERIC = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [36 x i8] c"Unsupported numeric leaf type %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown numeric leaf type %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i16*)* @numeric_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numeric_leaf(i32* %0, i16* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i16* %1, i16** %4, align 8
  %7 = load i16*, i16** %4, align 8
  %8 = getelementptr inbounds i16, i16* %7, i32 1
  store i16* %8, i16** %4, align 8
  %9 = load i16, i16* %7, align 2
  store i16 %9, i16* %5, align 2
  store i32 2, i32* %6, align 4
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @LF_NUMERIC, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i16, i16* %5, align 2
  %17 = zext i16 %16 to i32
  %18 = load i32*, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  br label %133

19:                                               ; preds = %2
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  switch i32 %21, label %128 [
    i32 144, label %22
    i32 132, label %30
    i32 129, label %37
    i32 139, label %44
    i32 131, label %51
    i32 138, label %58
    i32 130, label %58
    i32 136, label %64
    i32 135, label %70
    i32 134, label %76
    i32 133, label %82
    i32 137, label %88
    i32 142, label %94
    i32 141, label %100
    i32 140, label %106
    i32 143, label %112
    i32 128, label %118
  ]

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load i16*, i16** %4, align 8
  %26 = bitcast i16* %25 to i8*
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i32*, i32** %3, align 8
  store i32 %28, i32* %29, align 4
  br label %132

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %6, align 4
  %33 = load i16*, i16** %4, align 8
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = load i32*, i32** %3, align 8
  store i32 %35, i32* %36, align 4
  br label %132

37:                                               ; preds = %19
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %6, align 4
  %40 = load i16*, i16** %4, align 8
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = load i32*, i32** %3, align 8
  store i32 %42, i32* %43, align 4
  br label %132

44:                                               ; preds = %19
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* %6, align 4
  %47 = load i16*, i16** %4, align 8
  %48 = bitcast i16* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %3, align 8
  store i32 %49, i32* %50, align 4
  br label %132

51:                                               ; preds = %19
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* %6, align 4
  %54 = load i16*, i16** %4, align 8
  %55 = bitcast i16* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %3, align 8
  store i32 %56, i32* %57, align 4
  br label %132

58:                                               ; preds = %19, %19
  %59 = load i16, i16* %5, align 2
  %60 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %59)
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 8
  store i32 %62, i32* %6, align 4
  %63 = load i32*, i32** %3, align 8
  store i32 0, i32* %63, align 4
  br label %132

64:                                               ; preds = %19
  %65 = load i16, i16* %5, align 2
  %66 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %65)
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 4
  store i32 %68, i32* %6, align 4
  %69 = load i32*, i32** %3, align 8
  store i32 0, i32* %69, align 4
  br label %132

70:                                               ; preds = %19
  %71 = load i16, i16* %5, align 2
  %72 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %71)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 6
  store i32 %74, i32* %6, align 4
  %75 = load i32*, i32** %3, align 8
  store i32 0, i32* %75, align 4
  br label %132

76:                                               ; preds = %19
  %77 = load i16, i16* %5, align 2
  %78 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %77)
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 8
  store i32 %80, i32* %6, align 4
  %81 = load i32*, i32** %3, align 8
  store i32 0, i32* %81, align 4
  br label %132

82:                                               ; preds = %19
  %83 = load i16, i16* %5, align 2
  %84 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %83)
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 10
  store i32 %86, i32* %6, align 4
  %87 = load i32*, i32** %3, align 8
  store i32 0, i32* %87, align 4
  br label %132

88:                                               ; preds = %19
  %89 = load i16, i16* %5, align 2
  %90 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %89)
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 16
  store i32 %92, i32* %6, align 4
  %93 = load i32*, i32** %3, align 8
  store i32 0, i32* %93, align 4
  br label %132

94:                                               ; preds = %19
  %95 = load i16, i16* %5, align 2
  %96 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %95)
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 4
  store i32 %98, i32* %6, align 4
  %99 = load i32*, i32** %3, align 8
  store i32 0, i32* %99, align 4
  br label %132

100:                                              ; preds = %19
  %101 = load i16, i16* %5, align 2
  %102 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %101)
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 8
  store i32 %104, i32* %6, align 4
  %105 = load i32*, i32** %3, align 8
  store i32 0, i32* %105, align 4
  br label %132

106:                                              ; preds = %19
  %107 = load i16, i16* %5, align 2
  %108 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %107)
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 10
  store i32 %110, i32* %6, align 4
  %111 = load i32*, i32** %3, align 8
  store i32 0, i32* %111, align 4
  br label %132

112:                                              ; preds = %19
  %113 = load i16, i16* %5, align 2
  %114 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %113)
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 16
  store i32 %116, i32* %6, align 4
  %117 = load i32*, i32** %3, align 8
  store i32 0, i32* %117, align 4
  br label %132

118:                                              ; preds = %19
  %119 = load i16, i16* %5, align 2
  %120 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i16 zeroext %119)
  %121 = load i16*, i16** %4, align 8
  %122 = load i16, i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = add nsw i32 2, %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load i32*, i32** %3, align 8
  store i32 0, i32* %127, align 4
  br label %132

128:                                              ; preds = %19
  %129 = load i16, i16* %5, align 2
  %130 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %129)
  %131 = load i32*, i32** %3, align 8
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %118, %112, %106, %100, %94, %88, %82, %76, %70, %64, %58, %51, %44, %37, %30, %22
  br label %133

133:                                              ; preds = %132, %15
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @FIXME(i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
