; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_utf-8.c__zip_unicode_to_utf8.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_utf-8.c__zip_unicode_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF_8_LEN_2_MATCH = common dso_local global i32 0, align 4
@UTF_8_CONTINUE_MATCH = common dso_local global i32 0, align 4
@UTF_8_LEN_3_MATCH = common dso_local global i32 0, align 4
@UTF_8_LEN_4_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @_zip_unicode_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zip_unicode_to_utf8(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 128
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %4, align 4
  br label %104

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  store i32 1, i32* %4, align 4
  br label %104

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 2048
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %4, align 4
  br label %104

28:                                               ; preds = %23
  %29 = load i32, i32* @UTF_8_LEN_2_MATCH, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 6
  %32 = and i32 %31, 31
  %33 = or i32 %29, %32
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @UTF_8_CONTINUE_MATCH, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 63
  %39 = or i32 %36, %38
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  store i32 2, i32* %4, align 4
  br label %104

42:                                               ; preds = %20
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 65536
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %4, align 4
  br label %104

50:                                               ; preds = %45
  %51 = load i32, i32* @UTF_8_LEN_3_MATCH, align 4
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 12
  %54 = and i32 %53, 15
  %55 = or i32 %51, %54
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @UTF_8_CONTINUE_MATCH, align 4
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 6
  %61 = and i32 %60, 63
  %62 = or i32 %58, %61
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @UTF_8_CONTINUE_MATCH, align 4
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 63
  %68 = or i32 %65, %67
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %68, i32* %70, align 4
  store i32 3, i32* %4, align 4
  br label %104

71:                                               ; preds = %42
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %4, align 4
  br label %104

76:                                               ; preds = %71
  %77 = load i32, i32* @UTF_8_LEN_4_MATCH, align 4
  %78 = load i32, i32* %5, align 4
  %79 = ashr i32 %78, 18
  %80 = and i32 %79, 7
  %81 = or i32 %77, %80
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @UTF_8_CONTINUE_MATCH, align 4
  %85 = load i32, i32* %5, align 4
  %86 = ashr i32 %85, 12
  %87 = and i32 %86, 63
  %88 = or i32 %84, %87
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @UTF_8_CONTINUE_MATCH, align 4
  %92 = load i32, i32* %5, align 4
  %93 = ashr i32 %92, 6
  %94 = and i32 %93, 63
  %95 = or i32 %91, %94
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @UTF_8_CONTINUE_MATCH, align 4
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, 63
  %101 = or i32 %98, %100
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 %101, i32* %103, align 4
  store i32 4, i32* %4, align 4
  br label %104

104:                                              ; preds = %76, %74, %50, %48, %28, %26, %15, %13
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
