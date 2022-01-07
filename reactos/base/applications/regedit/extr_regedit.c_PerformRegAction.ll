; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regedit.c_PerformRegAction.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regedit.c_PerformRegAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONINFORMATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i32] [i32 78, i32 111, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 110, i32 97, i32 109, i32 101, i32 32, i32 105, i32 115, i32 32, i32 115, i32 112, i32 101, i32 99, i32 105, i32 102, i32 105, i32 101, i32 100, i32 46, i32 0], align 4
@szTitle = common dso_local global i32* null, align 8
@usage = common dso_local global i8* null, align 8
@hInst = common dso_local global i32 0, align 4
@IDS_IMPORT_PROMPT = common dso_local global i32 0, align 4
@MB_YESNOCANCEL = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 114, i32 0], align 4
@IDS_IMPORT_ERROR = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@IDS_IMPORT_OK = common dso_local global i32 0, align 4
@KEY_MAX_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i32] [i32 78, i32 111, i32 32, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 32, i32 107, i32 101, i32 121, i32 32, i32 105, i32 115, i32 32, i32 115, i32 112, i32 101, i32 99, i32 105, i32 102, i32 105, i32 101, i32 100, i32 32, i32 102, i32 111, i32 114, i32 32, i32 114, i32 101, i32 109, i32 111, i32 118, i32 97, i32 108, i32 46, i32 0], align 4
@REG_FORMAT_4 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i32] [i32 37, i32 115, i32 58, i32 32, i32 85, i32 110, i32 104, i32 97, i32 110, i32 100, i32 108, i32 101, i32 100, i32 32, i32 97, i32 99, i32 116, i32 105, i32 111, i32 110, i32 33, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PerformRegAction(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [512 x i32], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %189 [
    i32 132, label %21
    i32 131, label %124
    i32 130, label %148
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = call i32 @get_file_name(i32** %6, i32* %25)
  %27 = getelementptr inbounds i32, i32* %25, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @MB_OK, align 4
  %32 = load i32, i32* @MB_ICONINFORMATION, align 4
  %33 = or i32 %31, %32
  %34 = call i32 (i32*, i32, i32*, ...) @InfoMessageBox(i32* null, i32 %33, i32* null, i32* getelementptr inbounds ([27 x i32], [27 x i32]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @MB_OK, align 4
  %36 = load i32, i32* @MB_ICONINFORMATION, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** @szTitle, align 8
  %39 = load i8*, i8** @usage, align 8
  %40 = call i32 (i32*, i32, i32*, ...) @InfoMessageBox(i32* null, i32 %37, i32* %38, i8* %39)
  %41 = call i32 @exit(i32 4) #4
  unreachable

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %118, %42
  %44 = getelementptr inbounds i32, i32* %25, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %120

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @hInst, align 4
  %52 = load i32, i32* @IDS_IMPORT_PROMPT, align 4
  %53 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %54 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %55 = call i32 @COUNT_OF(i32* %54)
  %56 = call i32 @LoadStringW(i32 %51, i32 %52, i32* %53, i32 %55)
  %57 = load i32, i32* @MB_YESNOCANCEL, align 4
  %58 = load i32, i32* @MB_ICONWARNING, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** @szTitle, align 8
  %61 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %62 = call i32 (i32*, i32, i32*, ...) @InfoMessageBox(i32* null, i32 %59, i32* %60, i32* %61, i32* %25)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  switch i32 %63, label %67 [
    i32 128, label %64
    i32 129, label %65
  ]

64:                                               ; preds = %50
  br label %118

65:                                               ; preds = %50
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %121

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %47
  %70 = call i32* @_wfopen(i32* %25, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  store i32* %70, i32** %11, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @import_registry_file(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @hInst, align 4
  %82 = load i32, i32* @IDS_IMPORT_ERROR, align 4
  %83 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %84 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %85 = call i32 @COUNT_OF(i32* %84)
  %86 = call i32 @LoadStringW(i32 %81, i32 %82, i32* %83, i32 %85)
  %87 = load i32, i32* @MB_OK, align 4
  %88 = load i32, i32* @MB_ICONERROR, align 4
  %89 = or i32 %87, %88
  %90 = load i32*, i32** @szTitle, align 8
  %91 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %92 = call i32 (i32*, i32, i32*, ...) @InfoMessageBox(i32* null, i32 %89, i32* %90, i32* %91, i32* %25)
  br label %93

93:                                               ; preds = %80, %77
  br label %111

94:                                               ; preds = %73
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @hInst, align 4
  %99 = load i32, i32* @IDS_IMPORT_OK, align 4
  %100 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %101 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %102 = call i32 @COUNT_OF(i32* %101)
  %103 = call i32 @LoadStringW(i32 %98, i32 %99, i32* %100, i32 %102)
  %104 = load i32, i32* @MB_OK, align 4
  %105 = load i32, i32* @MB_ICONINFORMATION, align 4
  %106 = or i32 %104, %105
  %107 = load i32*, i32** @szTitle, align 8
  %108 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %109 = call i32 (i32*, i32, i32*, ...) @InfoMessageBox(i32* null, i32 %106, i32* %107, i32* %108, i32* %25)
  br label %110

110:                                              ; preds = %97, %94
  br label %111

111:                                              ; preds = %110, %93
  %112 = load i32*, i32** %11, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @fclose(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %64
  %119 = call i32 @get_file_name(i32** %6, i32* %25)
  br label %43

120:                                              ; preds = %43
  store i32 2, i32* %13, align 4
  br label %121

121:                                              ; preds = %120, %65
  %122 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %13, align 4
  switch i32 %123, label %198 [
    i32 1, label %196
    i32 2, label %194
  ]

124:                                              ; preds = %3
  %125 = load i32, i32* @KEY_MAX_LEN, align 4
  %126 = zext i32 %125 to i64
  %127 = call i8* @llvm.stacksave()
  store i8* %127, i8** %14, align 8
  %128 = alloca i32, i64 %126, align 16
  store i64 %126, i64* %15, align 8
  %129 = call i32 @get_file_name(i32** %6, i32* %128)
  %130 = getelementptr inbounds i32, i32* %128, i64 0
  %131 = load i32, i32* %130, align 16
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %124
  %134 = load i32, i32* @MB_OK, align 4
  %135 = load i32, i32* @MB_ICONINFORMATION, align 4
  %136 = or i32 %134, %135
  %137 = call i32 (i32*, i32, i32*, ...) @InfoMessageBox(i32* null, i32 %136, i32* null, i32* getelementptr inbounds ([42 x i32], [42 x i32]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @MB_OK, align 4
  %139 = load i32, i32* @MB_ICONINFORMATION, align 4
  %140 = or i32 %138, %139
  %141 = load i32*, i32** @szTitle, align 8
  %142 = load i8*, i8** @usage, align 8
  %143 = call i32 (i32*, i32, i32*, ...) @InfoMessageBox(i32* null, i32 %140, i32* %141, i8* %142)
  %144 = call i32 @exit(i32 6) #4
  unreachable

145:                                              ; preds = %124
  %146 = call i32 @delete_registry_key(i32* %128)
  store i32 2, i32* %13, align 4
  %147 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %147)
  br label %194

148:                                              ; preds = %3
  %149 = load i32, i32* @MAX_PATH, align 4
  %150 = zext i32 %149 to i64
  %151 = call i8* @llvm.stacksave()
  store i8* %151, i8** %16, align 8
  %152 = alloca i32, i64 %150, align 16
  store i64 %150, i64* %17, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 0, i32* %153, align 16
  %154 = call i32 @get_file_name(i32** %6, i32* %152)
  %155 = getelementptr inbounds i32, i32* %152, i64 0
  %156 = load i32, i32* %155, align 16
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %148
  %159 = load i32, i32* @MB_OK, align 4
  %160 = load i32, i32* @MB_ICONINFORMATION, align 4
  %161 = or i32 %159, %160
  %162 = call i32 (i32*, i32, i32*, ...) @InfoMessageBox(i32* null, i32 %161, i32* null, i32* getelementptr inbounds ([27 x i32], [27 x i32]* @.str, i64 0, i64 0))
  %163 = load i32, i32* @MB_OK, align 4
  %164 = load i32, i32* @MB_ICONINFORMATION, align 4
  %165 = or i32 %163, %164
  %166 = load i32*, i32** @szTitle, align 8
  %167 = load i8*, i8** @usage, align 8
  %168 = call i32 (i32*, i32, i32*, ...) @InfoMessageBox(i32* null, i32 %165, i32* %166, i8* %167)
  %169 = call i32 @exit(i32 7) #4
  unreachable

170:                                              ; preds = %148
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load i32, i32* @KEY_MAX_LEN, align 4
  %177 = zext i32 %176 to i64
  %178 = call i8* @llvm.stacksave()
  store i8* %178, i8** %18, align 8
  %179 = alloca i32, i64 %177, align 16
  store i64 %177, i64* %19, align 8
  %180 = call i32 @get_file_name(i32** %6, i32* %179)
  %181 = load i32, i32* @REG_FORMAT_4, align 4
  %182 = call i32 @export_registry_key(i32* %152, i32* %179, i32 %181)
  %183 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %183)
  br label %187

184:                                              ; preds = %170
  %185 = load i32, i32* @REG_FORMAT_4, align 4
  %186 = call i32 @export_registry_key(i32* %152, i32* null, i32 %185)
  br label %187

187:                                              ; preds = %184, %175
  store i32 2, i32* %13, align 4
  %188 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %188)
  br label %194

189:                                              ; preds = %3
  %190 = load i32, i32* @stderr, align 4
  %191 = call i8* (...) @getAppName()
  %192 = call i32 @fwprintf(i32 %190, i8* bitcast ([23 x i32]* @.str.3 to i8*), i8* %191)
  %193 = call i32 @exit(i32 8) #4
  unreachable

194:                                              ; preds = %187, %145, %121
  %195 = load i32, i32* @TRUE, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %194, %121
  %197 = load i32, i32* %4, align 4
  ret i32 %197

198:                                              ; preds = %121
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_file_name(i32**, i32*) #2

declare dso_local i32 @InfoMessageBox(i32*, i32, i32*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #2

declare dso_local i32 @COUNT_OF(i32*) #2

declare dso_local i32* @_wfopen(i32*, i8*) #2

declare dso_local i32 @import_registry_file(i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @delete_registry_key(i32*) #2

declare dso_local i32 @export_registry_key(i32*, i32*, i32) #2

declare dso_local i32 @fwprintf(i32, i8*, i8*) #2

declare dso_local i8* @getAppName(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
