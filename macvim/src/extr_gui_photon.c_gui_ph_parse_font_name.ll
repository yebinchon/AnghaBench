; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_parse_font_name.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_parse_font_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i64 0, align 8
@PF_STYLE_ANTIALIAS = common dso_local global i32 0, align 4
@PF_STYLE_BOLD = common dso_local global i32 0, align 4
@PF_STYLE_ITALIC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64**, i32*, i32*)* @gui_ph_parse_font_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gui_ph_parse_font_name(i64* %0, i64** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64** %1, i64*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = call i64* @vim_strchr(i64* %13, i8 signext 58)
  store i64* %14, i64** %10, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64*, i64** %6, align 8
  %19 = call i32 @STRLEN(i64* %18)
  store i32 %19, i32* %11, align 4
  br label %28

20:                                               ; preds = %4
  %21 = load i64*, i64** %10, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = ptrtoint i64* %21 to i64
  %24 = ptrtoint i64* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i64*, i64** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i64* @vim_strnsave(i64* %29, i32 %30)
  %32 = load i64**, i64*** %7, align 8
  store i64* %31, i64** %32, align 8
  %33 = load i64**, i64*** %7, align 8
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %89

36:                                               ; preds = %28
  %37 = load i64*, i64** %10, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %87

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %85, %39
  %41 = load i64*, i64** %10, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NUL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i64*, i64** %10, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %10, align 8
  %48 = load i64, i64* %46, align 8
  %49 = icmp eq i64 %48, 58
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ false, %40 ], [ %49, %45 ]
  br i1 %51, label %52, label %86

52:                                               ; preds = %50
  %53 = load i64*, i64** %10, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %10, align 8
  %55 = load i64, i64* %53, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @tolower(i32 %56) #3
  switch i32 %57, label %84 [
    i32 97, label %58
    i32 98, label %63
    i32 105, label %68
    i32 115, label %73
  ]

58:                                               ; preds = %52
  %59 = load i32, i32* @PF_STYLE_ANTIALIAS, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %85

63:                                               ; preds = %52
  %64 = load i32, i32* @PF_STYLE_BOLD, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %85

68:                                               ; preds = %52
  %69 = load i32, i32* @PF_STYLE_ITALIC, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %85

73:                                               ; preds = %52
  %74 = call i32 @getdigits(i64** %10)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 100
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %73
  store i32 8, i32* %12, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* %12, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %85

84:                                               ; preds = %52
  br label %85

85:                                               ; preds = %84, %81, %68, %63, %58
  br label %40

86:                                               ; preds = %50
  br label %87

87:                                               ; preds = %86, %36
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %5, align 4
  br label %91

89:                                               ; preds = %28
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64* @vim_strchr(i64*, i8 signext) #1

declare dso_local i32 @STRLEN(i64*) #1

declare dso_local i64* @vim_strnsave(i64*, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @getdigits(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
