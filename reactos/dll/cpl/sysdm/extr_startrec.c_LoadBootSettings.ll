; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_startrec.c_LoadBootSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_startrec.c_LoadBootSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 98, i32 111, i32 111, i32 116, i32 32, i32 108, i32 111, i32 97, i32 100, i32 101, i32 114, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i32] [i32 116, i32 105, i32 109, i32 101, i32 111, i32 117, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 100, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [18 x i32] [i32 111, i32 112, i32 101, i32 114, i32 97, i32 116, i32 105, i32 110, i32 103, i32 32, i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 115, i32 0], align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @LoadBootSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadBootSettings(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @SetupFindFirstLineW(i32 %30, i8* bitcast ([12 x i32]* @.str to i8*), i32* null, i32* %6)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %177

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %63, %35
  %37 = mul nuw i64 4, %18
  %38 = udiv i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @SetupGetStringFieldW(i32* %6, i32 0, i32* %20, i32 %39, i64* %10)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %177

44:                                               ; preds = %36
  %45 = mul nuw i64 4, %22
  %46 = udiv i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 @SetupGetStringFieldW(i32* %6, i32 1, i32* %23, i32 %47, i64* %10)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %177

52:                                               ; preds = %44
  %53 = call i32 @_wcsnicmp(i32* %20, i8* bitcast ([8 x i32]* @.str.1 to i8*), i32 7)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i64 @_wtoi(i32* %23)
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = call i32 @_wcsnicmp(i32* %20, i8* bitcast ([8 x i32]* @.str.2 to i8*), i32 7)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 @wcscpy(i32* %26, i32* %23)
  br label %62

62:                                               ; preds = %60, %57
  br label %63

63:                                               ; preds = %62
  %64 = call i64 @SetupFindNextLine(i32* %6, i32* %6)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %36, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @SetupFindFirstLineW(i32 %67, i8* bitcast ([18 x i32]* @.str.3 to i8*), i32* null, i32* %6)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %177

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %143, %72
  %74 = mul nuw i64 4, %18
  %75 = udiv i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @SetupGetStringFieldW(i32* %6, i32 0, i32* %20, i32 %76, i64* %10)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %177

81:                                               ; preds = %73
  %82 = mul nuw i64 4, %22
  %83 = udiv i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @SetupGetStringFieldW(i32* %6, i32 1, i32* %23, i32 %84, i64* %10)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %177

89:                                               ; preds = %81
  %90 = mul nuw i64 4, %28
  %91 = udiv i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 @SetupGetStringFieldW(i32* %6, i32 2, i32* %29, i32 %92, i64* %10)
  %94 = call i32 (...) @GetProcessHeap()
  %95 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %96 = call i64 @HeapAlloc(i32 %94, i32 %95, i32 4)
  %97 = inttoptr i64 %96 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %97, %struct.TYPE_3__** %14, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %99 = icmp ne %struct.TYPE_3__* %98, null
  br i1 %99, label %100, label %142

100:                                              ; preds = %89
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @wcscpy(i32* %105, i32* %20)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @wcscpy(i32* %109, i32* %23)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @wcscpy(i32* %113, i32* %29)
  %115 = call i32 @wcscmp(i32* %20, i32* %26)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %100
  %118 = call i32 @wcscpy(i32* %26, i32* %23)
  br label %119

119:                                              ; preds = %117, %100
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @IDC_STRECOSCOMBO, align 4
  %122 = load i32, i32* @CB_ADDSTRING, align 4
  %123 = ptrtoint i32* %23 to i32
  %124 = call i64 @SendDlgItemMessageW(i32 %120, i32 %121, i32 %122, i32 0, i32 %123)
  store i64 %124, i64* %15, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* @CB_ERR, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %119
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @IDC_STRECOSCOMBO, align 4
  %131 = load i32, i32* @CB_SETITEMDATA, align 4
  %132 = load i64, i64* %15, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %135 = ptrtoint %struct.TYPE_3__* %134 to i32
  %136 = call i64 @SendDlgItemMessageW(i32 %129, i32 %130, i32 %131, i32 %133, i32 %135)
  br label %141

137:                                              ; preds = %119
  %138 = call i32 (...) @GetProcessHeap()
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %140 = call i32 @HeapFree(i32 %138, i32 0, %struct.TYPE_3__* %139)
  br label %141

141:                                              ; preds = %137, %128
  br label %142

142:                                              ; preds = %141, %89
  br label %143

143:                                              ; preds = %142
  %144 = call i64 @SetupFindNextLine(i32* %6, i32* %6)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %73, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @IDC_STRECOSCOMBO, align 4
  %149 = load i32, i32* @CB_FINDSTRING, align 4
  %150 = ptrtoint i32* %26 to i32
  %151 = call i64 @SendDlgItemMessageW(i32 %147, i32 %148, i32 %149, i32 0, i32 %150)
  store i64 %151, i64* %15, align 8
  %152 = load i64, i64* %15, align 8
  %153 = load i64, i64* @CB_ERR, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %146
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @IDC_STRECOSCOMBO, align 4
  %158 = load i32, i32* @CB_SETCURSEL, align 4
  %159 = load i64, i64* %15, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i64 @SendDlgItemMessageW(i32 %156, i32 %157, i32 %158, i32 %160, i32 0)
  br label %162

162:                                              ; preds = %155, %146
  %163 = load i64, i64* %11, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @IDC_STRECLIST, align 4
  %168 = load i32, i32* @BM_SETCHECK, align 4
  %169 = load i64, i64* @BST_CHECKED, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i64 @SendDlgItemMessageW(i32 %166, i32 %167, i32 %168, i32 %170, i32 0)
  br label %172

172:                                              ; preds = %165, %162
  %173 = load i32, i32* %5, align 4
  %174 = load i64, i64* %11, align 8
  %175 = call i32 @SetTimeout(i32 %173, i64 %174)
  %176 = load i32, i32* @TRUE, align 4
  store i32 %176, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %177

177:                                              ; preds = %172, %87, %79, %70, %50, %42, %33
  %178 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetupFindFirstLineW(i32, i8*, i32*, i32*) #2

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i32*, i32, i64*) #2

declare dso_local i32 @_wcsnicmp(i32*, i8*, i32) #2

declare dso_local i64 @_wtoi(i32*) #2

declare dso_local i32 @wcscpy(i32*, i32*) #2

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #2

declare dso_local i64 @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @wcscmp(i32*, i32*) #2

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #2

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_3__*) #2

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
