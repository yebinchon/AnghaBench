; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_read_formatopts.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_read_formatopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_OPENED_EXISTING_KEY = common dso_local global i64 0, align 8
@var_barstate0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@BANDID_TOOLBAR = common dso_local global i32 0, align 4
@BANDID_FORMATBAR = common dso_local global i32 0, align 4
@BANDID_RULER = common dso_local global i32 0, align 4
@BANDID_STATUSBAR = common dso_local global i32 0, align 4
@var_wrap = common dso_local global i32 0, align 4
@SF_RTF = common dso_local global i32 0, align 4
@ID_WORDWRAP_WINDOW = common dso_local global i64 0, align 8
@SF_TEXT = common dso_local global i32 0, align 4
@ID_WORDWRAP_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64*, i64*)* @registry_read_formatopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @registry_read_formatopts(i32 %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %10, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 0, i64* %18, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @registry_get_handle(i32* %9, i64* %10, i32 %23)
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %115

28:                                               ; preds = %4
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @REG_OPENED_EXISTING_KEY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  store i64 8, i64* %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @var_barstate0, align 4
  %35 = load i64*, i64** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = ptrtoint i64* %38 to i32
  %40 = call i64 @RegQueryValueExW(i32 %33, i32 %34, i32 0, i32* null, i32 %39, i64* %12)
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %43, %32
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @BANDID_TOOLBAR, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* @BANDID_FORMATBAR, align 4
  %53 = shl i32 1, %52
  %54 = or i32 %51, %53
  %55 = load i32, i32* @BANDID_RULER, align 4
  %56 = shl i32 1, %55
  %57 = or i32 %54, %56
  %58 = load i32, i32* @BANDID_STATUSBAR, align 4
  %59 = shl i32 1, %58
  %60 = or i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %49, %46
  %67 = load i64, i64* @FALSE, align 8
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @REG_OPENED_EXISTING_KEY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  store i64 8, i64* %13, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @var_wrap, align 4
  %74 = load i64*, i64** %8, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = ptrtoint i64* %77 to i32
  %79 = call i64 @RegQueryValueExW(i32 %72, i32 %73, i32 0, i32* null, i32 %78, i64* %13)
  %80 = load i64, i64* @ERROR_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i64, i64* @TRUE, align 8
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %82, %71
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %112, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @SF_RTF, align 4
  %91 = call i32 @reg_formatindex(i32 %90)
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i64, i64* @ID_WORDWRAP_WINDOW, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %94, i64* %98, align 8
  br label %111

99:                                               ; preds = %88
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @SF_TEXT, align 4
  %102 = call i32 @reg_formatindex(i32 %101)
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i64, i64* @ID_WORDWRAP_NONE, align 8
  %106 = load i64*, i64** %8, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  store i64 %105, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %99
  br label %111

111:                                              ; preds = %110, %93
  br label %112

112:                                              ; preds = %111, %85
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @RegCloseKey(i32 %113)
  br label %115

115:                                              ; preds = %112, %27
  ret void
}

declare dso_local i64 @registry_get_handle(i32*, i64*, i32) #1

declare dso_local i64 @RegQueryValueExW(i32, i32, i32, i32*, i32, i64*) #1

declare dso_local i32 @reg_formatindex(i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
