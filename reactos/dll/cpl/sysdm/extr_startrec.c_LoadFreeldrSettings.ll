; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_startrec.c_LoadFreeldrSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_startrec.c_LoadFreeldrSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i32] [i32 70, i32 82, i32 69, i32 69, i32 76, i32 79, i32 65, i32 68, i32 69, i32 82, i32 0], align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 79, i32 83, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 84, i32 105, i32 109, i32 101, i32 79, i32 117, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [18 x i32] [i32 79, i32 112, i32 101, i32 114, i32 97, i32 116, i32 105, i32 110, i32 103, i32 32, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 115, i32 0], align 4
@IDC_STRECOSCOMBO = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@CB_FINDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@IDC_STRECLIST = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @LoadFreeldrSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadFreeldrSettings(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @SetupFindFirstLineW(i32 %26, i8* bitcast ([11 x i32]* @.str to i8*), i8* bitcast ([10 x i32]* @.str.1 to i8*), i32* %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

31:                                               ; preds = %2
  %32 = mul nuw i64 4, %17
  %33 = udiv i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @SetupGetStringFieldW(i32* %6, i32 1, i32* %19, i32 %34, i64* %12)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @SetupFindFirstLineW(i32 %40, i8* bitcast ([11 x i32]* @.str to i8*), i8* bitcast ([8 x i32]* @.str.2 to i8*), i32* %6)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

45:                                               ; preds = %39
  %46 = ptrtoint i64* %13 to i32
  %47 = call i32 @SetupGetIntField(i32* %6, i32 1, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @SetupFindFirstLineW(i32 %52, i8* bitcast ([18 x i32]* @.str.3 to i8*), i8* null, i32* %6)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %108, %57
  %59 = mul nuw i64 4, %21
  %60 = udiv i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @SetupGetStringFieldW(i32* %6, i32 0, i32* %22, i32 %61, i64* %12)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

66:                                               ; preds = %58
  %67 = mul nuw i64 4, %24
  %68 = udiv i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @SetupGetStringFieldW(i32* %6, i32 1, i32* %25, i32 %69, i64* %12)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

74:                                               ; preds = %66
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @ReadFreeldrSection(i32 %75, i32* %22)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @IDC_STRECOSCOMBO, align 4
  %82 = load i32, i32* @CB_ADDSTRING, align 4
  %83 = ptrtoint i32* %25 to i32
  %84 = call i64 @SendDlgItemMessageW(i32 %80, i32 %81, i32 %82, i32 0, i32 %83)
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* @CB_ERR, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %79
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @IDC_STRECOSCOMBO, align 4
  %91 = load i32, i32* @CB_SETITEMDATA, align 4
  %92 = load i64, i64* %14, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i64, i64* %7, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i64 @SendDlgItemMessageW(i32 %89, i32 %90, i32 %91, i32 %93, i32 %95)
  %97 = call i32 @wcscmp(i32* %19, i32* %22)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %88
  %100 = call i32 @wcscpy(i32* %19, i32* %25)
  br label %101

101:                                              ; preds = %99, %88
  br label %106

102:                                              ; preds = %79
  %103 = call i32 (...) @GetProcessHeap()
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @HeapFree(i32 %103, i32 0, i64 %104)
  br label %106

106:                                              ; preds = %102, %101
  br label %107

107:                                              ; preds = %106, %74
  br label %108

108:                                              ; preds = %107
  %109 = call i64 @SetupFindNextLine(i32* %6, i32* %6)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %58, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @IDC_STRECOSCOMBO, align 4
  %114 = load i32, i32* @CB_FINDSTRING, align 4
  %115 = ptrtoint i32* %19 to i32
  %116 = call i64 @SendDlgItemMessageW(i32 %112, i32 %113, i32 %114, i32 -1, i32 %115)
  store i64 %116, i64* %14, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* @CB_ERR, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %111
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @IDC_STRECOSCOMBO, align 4
  %123 = load i32, i32* @CB_SETCURSEL, align 4
  %124 = load i64, i64* %14, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i64 @SendDlgItemMessageW(i32 %121, i32 %122, i32 %123, i32 %125, i32 0)
  br label %127

127:                                              ; preds = %120, %111
  %128 = load i64, i64* %13, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @IDC_STRECLIST, align 4
  %133 = load i32, i32* @BM_SETCHECK, align 4
  %134 = load i64, i64* @BST_CHECKED, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i64 @SendDlgItemMessageW(i32 %131, i32 %132, i32 %133, i32 %135, i32 0)
  br label %137

137:                                              ; preds = %130, %127
  %138 = load i32, i32* %5, align 4
  %139 = load i64, i64* %13, align 8
  %140 = call i32 @SetTimeout(i32 %138, i64 %139)
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %142

142:                                              ; preds = %137, %72, %64, %55, %49, %43, %37, %29
  %143 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetupFindFirstLineW(i32, i8*, i8*, i32*) #2

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i32*, i32, i64*) #2

declare dso_local i32 @SetupGetIntField(i32*, i32, i32) #2

declare dso_local i64 @ReadFreeldrSection(i32, i32*) #2

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #2

declare dso_local i32 @wcscmp(i32*, i32*) #2

declare dso_local i32 @wcscpy(i32*, i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #2

declare dso_local i32 @SetTimeout(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
