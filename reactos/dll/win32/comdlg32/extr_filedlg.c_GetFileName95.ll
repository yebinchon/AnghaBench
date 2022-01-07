; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg.c_GetFileName95.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg.c_GetFileName95.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@UNIMPLEMENTED_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Flags 0x%08x not yet implemented\0A\00", align 1
@NEWFILEOPENV2ORD = common dso_local global i32 0, align 4
@NEWFILEOPENORD = common dso_local global i32 0, align 4
@COMDLG32_hInstance = common dso_local global i32 0, align 4
@RT_DIALOG = common dso_local global i64 0, align 8
@CDERR_FINDRESFAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CDERR_LOADRESFAILURE = common dso_local global i32 0, align 4
@OFN_EXPLORER = common dso_local global i32 0, align 4
@OFN_ENABLEHOOK = common dso_local global i32 0, align 4
@OFN_ENABLETEMPLATE = common dso_local global i32 0, align 4
@OFN_ENABLETEMPLATEHANDLE = common dso_local global i32 0, align 4
@OFN_ENABLESIZING = common dso_local global i32 0, align 4
@FILEOKSTRINGW = common dso_local global i32 0, align 4
@LBSELCHSTRINGW = common dso_local global i32 0, align 4
@HELPMSGSTRINGW = common dso_local global i32 0, align 4
@SHAREVISTRINGW = common dso_local global i32 0, align 4
@FileOpenDlgProc95 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @GetFileName95 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetFileName95(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @UNIMPLEMENTED_FLAGS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UNIMPLEMENTED_FLAGS, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = call i64 @is_places_bar_enabled(%struct.TYPE_13__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @NEWFILEOPENV2ORD, align 4
  store i32 %31, i32* %8, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @NEWFILEOPENORD, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* @COMDLG32_hInstance, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @MAKEINTRESOURCEW(i32 %36)
  %38 = load i64, i64* @RT_DIALOG, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @FindResourceW(i32 %35, i32 %37, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @CDERR_FINDRESFAILURE, align 4
  %44 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %2, align 4
  br label %179

46:                                               ; preds = %34
  %47 = load i32, i32* @COMDLG32_hInstance, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @LoadResource(i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @LockResource(i32 %52)
  store i8* %53, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* @CDERR_LOADRESFAILURE, align 4
  %57 = call i32 @COMDLG32_SetCommDlgExtendedError(i32 %56)
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %2, align 4
  br label %179

59:                                               ; preds = %51
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @OFN_EXPLORER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %59
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @OFN_ENABLEHOOK, align 4
  %75 = load i32, i32* @OFN_ENABLETEMPLATE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @OFN_ENABLETEMPLATEHANDLE, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %73, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %68
  %82 = load i32, i32* @OFN_ENABLESIZING, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %68, %59
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @OFN_ENABLESIZING, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %89
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %98, %89
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %113 = call i64 @is_dialog_hooked(%struct.TYPE_13__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %111
  %116 = load i32, i32* @FILEOKSTRINGW, align 4
  %117 = call i8* @RegisterWindowMessageW(i32 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  store i8* %117, i8** %120, align 8
  %121 = load i32, i32* @LBSELCHSTRINGW, align 4
  %122 = call i8* @RegisterWindowMessageW(i32 %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  store i8* %122, i8** %125, align 8
  %126 = load i32, i32* @HELPMSGSTRINGW, align 4
  %127 = call i8* @RegisterWindowMessageW(i32 %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  store i8* %127, i8** %130, align 8
  %131 = load i32, i32* @SHAREVISTRINGW, align 4
  %132 = call i8* @RegisterWindowMessageW(i32 %131)
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  store i8* %132, i8** %135, align 8
  br label %136

136:                                              ; preds = %115, %111
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load i32, i32* @COMDLG32_hInstance, align 4
  %143 = load i8*, i8** %5, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @FileOpenDlgProc95, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %151 = ptrtoint %struct.TYPE_13__* %150 to i32
  %152 = call i32 @DialogBoxIndirectParamW(i32 %142, i8* %143, i32 %148, i32 %149, i32 %151)
  store i32 %152, i32* %4, align 4
  br label %165

153:                                              ; preds = %136
  %154 = load i32, i32* @COMDLG32_hInstance, align 4
  %155 = load i8*, i8** %5, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @FileOpenDlgProc95, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = ptrtoint %struct.TYPE_13__* %162 to i32
  %164 = call i32 @DialogBoxIndirectParamA(i32 %154, i8* %155, i32 %160, i32 %161, i32 %163)
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %153, %141
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = call i32 (...) @OleUninitialize()
  br label %172

172:                                              ; preds = %170, %165
  %173 = load i32, i32* %4, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %2, align 4
  br label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %4, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %177, %175, %55, %42
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @is_places_bar_enabled(%struct.TYPE_13__*) #1

declare dso_local i32 @FindResourceW(i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @COMDLG32_SetCommDlgExtendedError(i32) #1

declare dso_local i32 @LoadResource(i32, i32) #1

declare dso_local i8* @LockResource(i32) #1

declare dso_local i64 @is_dialog_hooked(%struct.TYPE_13__*) #1

declare dso_local i8* @RegisterWindowMessageW(i32) #1

declare dso_local i32 @DialogBoxIndirectParamW(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @DialogBoxIndirectParamA(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @OleUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
