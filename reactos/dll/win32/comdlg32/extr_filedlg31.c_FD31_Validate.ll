; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_Validate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_Validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32 }

@BUFFILE = common dso_local global i32 0, align 4
@edt1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"got filename = %s\0A\00", align 1
@lst1 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CD_LBSELCHANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OFN_ALLOWMULTISELECT = common dso_local global i32 0, align 4
@OFN_EXPLORER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32, i32, i64)* @FD31_Validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FD31_Validate(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %15, align 8
  %28 = load i32, i32* @BUFFILE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @min(i32 %34, i32 24)
  store i32 %35, i32* %18, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %37 = load i32, i32* %18, align 4
  %38 = call i32 @memcpy(%struct.TYPE_11__* %14, %struct.TYPE_11__* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %5
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ARRAY_SIZE(i32* %31)
  %44 = call i32 @lstrcpynW(i32* %31, i32 %42, i32 %43)
  br label %50

45:                                               ; preds = %5
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @edt1, align 4
  %48 = call i32 @ARRAY_SIZE(i32* %31)
  %49 = call i32 @GetDlgItemTextW(i32 %46, i32 %47, i32* %31, i32 %48)
  br label %50

50:                                               ; preds = %45, %41
  %51 = call i32 @debugstr_w(i32* %31)
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @lst1, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = call i32 @FD31_TestPath(%struct.TYPE_12__* %57, i32* %31)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %144

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %50
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = call i32 @FD31_UpdateResult(%struct.TYPE_12__* %64, i32* %31)
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @CD_LBSELCHANGE, align 4
  %81 = call i32 @MAKELONG(i32 %79, i32 %80)
  %82 = call i64 @FD31_CallWindowProc(%struct.TYPE_12__* %74, i32 %77, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %73, %68
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %144

85:                                               ; preds = %63
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = call i32 @FD31_UpdateFileTitle(%struct.TYPE_12__* %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @FD31_CallWindowProc(%struct.TYPE_12__* %93, i32 %96, i32 0, i32 %99)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @memcpy(%struct.TYPE_11__* %104, %struct.TYPE_11__* %14, i32 %105)
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %144

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %108, %85
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @OFN_ALLOWMULTISELECT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %109
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @OFN_EXPLORER, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %116
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %20, align 8
  %132 = load i8*, i8** %20, align 8
  %133 = call i8* @wcsrchr(i8* %132, i8 signext 92)
  store i8* %133, i8** %21, align 8
  %134 = load i8*, i8** %20, align 8
  %135 = load i8*, i8** %20, align 8
  %136 = call i32 @lstrlenW(i8* %135)
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %134, i64 %138
  store i8 0, i8* %139, align 1
  %140 = load i8*, i8** %21, align 8
  store i8 0, i8* %140, align 1
  br label %141

141:                                              ; preds = %128, %123
  br label %142

142:                                              ; preds = %141, %116, %109
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %144

144:                                              ; preds = %142, %103, %83, %60
  %145 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @lstrcpynW(i32*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @GetDlgItemTextW(i32, i32, i32*, i32) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @FD31_TestPath(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @FD31_UpdateResult(%struct.TYPE_12__*, i32*) #2

declare dso_local i64 @FD31_CallWindowProc(%struct.TYPE_12__*, i32, i32, i32) #2

declare dso_local i32 @MAKELONG(i32, i32) #2

declare dso_local i32 @FD31_UpdateFileTitle(%struct.TYPE_12__*) #2

declare dso_local i8* @wcsrchr(i8*, i8 signext) #2

declare dso_local i32 @lstrlenW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
