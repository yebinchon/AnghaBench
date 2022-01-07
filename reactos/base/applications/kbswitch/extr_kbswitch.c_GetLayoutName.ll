; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/kbswitch/extr_kbswitch.c_GetLayoutName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/kbswitch/extr_kbswitch.c_GetLayoutName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CCH_LAYOUT_ID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"SYSTEM\\CurrentControlSet\\Control\\Keyboard Layouts\\%s\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Layout Display Name\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Layout Text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @GetLayoutName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetLayoutName(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  %32 = load i32, i32* @MAX_PATH, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %14, align 8
  %35 = load i32, i32* @CCH_LAYOUT_ID, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %15, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @ARRAYSIZE(i8* %38)
  %41 = call i32 @GetLayoutID(i64 %39, i8* %38, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %173

45:                                               ; preds = %3
  %46 = call i32 @ARRAYSIZE(i8* %25)
  %47 = call i32 @_T(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @StringCchPrintf(i8* %25, i32 %46, i32 %47, i8* %38)
  %49 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %50 = ptrtoint i8* %25 to i32
  %51 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %52 = call i64 @RegOpenKeyEx(i32 %49, i32 %50, i32 0, i32 %51, i32* %8)
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %171

55:                                               ; preds = %45
  %56 = trunc i64 %27 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @_T(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %59 = ptrtoint i8* %28 to i32
  %60 = call i64 @RegQueryValueEx(i32 %57, i32 %58, i32* null, i32* null, i32 %59, i32* %9)
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %152

63:                                               ; preds = %55
  %64 = getelementptr inbounds i8, i8* %28, i64 0
  %65 = load i8, i8* %64, align 16
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 64
  br i1 %67, label %68, label %151

68:                                               ; preds = %63
  %69 = call i32 @_tcslen(i8* %28)
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %21, align 8
  store i64 0, i64* %17, align 8
  br label %71

71:                                               ; preds = %120, %68
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %21, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %123

75:                                               ; preds = %71
  %76 = load i64, i64* %17, align 8
  %77 = getelementptr inbounds i8, i8* %28, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 44
  br i1 %80, label %81, label %112

81:                                               ; preds = %75
  %82 = load i64, i64* %17, align 8
  %83 = add i64 %82, 1
  %84 = getelementptr inbounds i8, i8* %28, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %88, label %112

88:                                               ; preds = %81
  %89 = load i64, i64* %17, align 8
  %90 = add i64 %89, 2
  store i64 %90, i64* %18, align 8
  store i64 0, i64* %19, align 8
  br label %91

91:                                               ; preds = %103, %88
  %92 = load i64, i64* %18, align 8
  %93 = call i32 @_tcslen(i8* %28)
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load i64, i64* %18, align 8
  %99 = getelementptr inbounds i8, i8* %28, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = load i64, i64* %19, align 8
  %102 = getelementptr inbounds i8, i8* %31, i64 %101
  store i8 %100, i8* %102, align 1
  br label %103

103:                                              ; preds = %97
  %104 = load i64, i64* %18, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %18, align 8
  %106 = load i64, i64* %19, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %19, align 8
  br label %91

108:                                              ; preds = %91
  %109 = load i64, i64* %17, align 8
  %110 = sub i64 %109, 1
  %111 = getelementptr inbounds i8, i8* %28, i64 %110
  store i8 0, i8* %111, align 1
  br label %123

112:                                              ; preds = %81, %75
  %113 = load i64, i64* %17, align 8
  %114 = add i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %28, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i64, i64* %17, align 8
  %118 = getelementptr inbounds i8, i8* %28, i64 %117
  store i8 %116, i8* %118, align 1
  br label %119

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %17, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %17, align 8
  br label %71

123:                                              ; preds = %108, %71
  %124 = call i32 @ARRAYSIZE(i8* %34)
  %125 = call i64 @ExpandEnvironmentStrings(i8* %28, i8* %34, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  %128 = call i64 @LoadLibrary(i8* %34)
  store i64 %128, i64* %16, align 8
  %129 = load i64, i64* %16, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  %132 = load i64, i64* %16, align 8
  %133 = call i32 @_ttoi(i8* %31)
  %134 = call i32 @ARRAYSIZE(i8* %34)
  %135 = call i64 @LoadString(i64 %132, i32 %133, i8* %34, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load i64, i64* %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @StringCchCopy(i64 %138, i32 %139, i8* %34)
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @RegCloseKey(i32 %141)
  %143 = load i64, i64* %16, align 8
  %144 = call i32 @FreeLibrary(i64 %143)
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %173

146:                                              ; preds = %131
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @FreeLibrary(i64 %147)
  br label %149

149:                                              ; preds = %146, %127
  br label %150

150:                                              ; preds = %149, %123
  br label %151

151:                                              ; preds = %150, %63
  br label %152

152:                                              ; preds = %151, %55
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 1
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %159 = load i64, i64* %6, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i64 @RegQueryValueEx(i32 %157, i32 %158, i32* null, i32* null, i32 %160, i32* %9)
  %162 = load i64, i64* @ERROR_SUCCESS, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %152
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @RegCloseKey(i32 %165)
  %167 = load i32, i32* @TRUE, align 4
  store i32 %167, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %173

168:                                              ; preds = %152
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @RegCloseKey(i32 %169)
  br label %171

171:                                              ; preds = %168, %45
  %172 = load i32, i32* @FALSE, align 4
  store i32 %172, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %173

173:                                              ; preds = %171, %164, %137, %43
  %174 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetLayoutID(i64, i8*, i32) #2

declare dso_local i32 @ARRAYSIZE(i8*) #2

declare dso_local i32 @StringCchPrintf(i8*, i32, i32, i8*) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueEx(i32, i32, i32*, i32*, i32, i32*) #2

declare dso_local i32 @_tcslen(i8*) #2

declare dso_local i64 @ExpandEnvironmentStrings(i8*, i8*, i32) #2

declare dso_local i64 @LoadLibrary(i8*) #2

declare dso_local i64 @LoadString(i64, i32, i8*, i32) #2

declare dso_local i32 @_ttoi(i8*) #2

declare dso_local i32 @StringCchCopy(i64, i32, i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @FreeLibrary(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
