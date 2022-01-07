; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_export_registry_key.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_export_registry_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_MAX_LEN = common dso_local global i64 0, align 8
@REG_VAL_BUF_SIZE = common dso_local global i64 0, align 8
@REG_FORMAT_5 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%S: Incorrect registry class specification in '%s'\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"%S: Can't export. Registry key '%s' does not exist!\0A\00", align 1
@REG_CLASS_NUMBER = common dso_local global i32 0, align 4
@reg_class_keys = common dso_local global i64* null, align 8
@HKEY_CLASSES_ROOT = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i64 0, align 8
@HKEY_CURRENT_CONFIG = common dso_local global i64 0, align 8
@HKEY_DYN_DATA = common dso_local global i64 0, align 8
@reg_class_namesW = common dso_local global i64** null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @export_registry_key(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %23 = load i64, i64* @KEY_MAX_LEN, align 8
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* @KEY_MAX_LEN, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* @REG_VAL_BUF_SIZE, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* @KEY_MAX_LEN, align 8
  %27 = load i64, i64* @REG_VAL_BUF_SIZE, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %14, align 8
  store i32* null, i32** %15, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @REG_FORMAT_5, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %16, align 4
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load i64, i64* %11, align 8
  %35 = mul i64 %34, 8
  %36 = call i64* @HeapAlloc(i32 %33, i32 0, i64 %35)
  store i64* %36, i64** %7, align 8
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i64, i64* %12, align 8
  %39 = mul i64 %38, 8
  %40 = call i64* @HeapAlloc(i32 %37, i32 0, i64 %39)
  store i64* %40, i64** %8, align 8
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i64, i64* %13, align 8
  %43 = call i64* @HeapAlloc(i32 %41, i32 0, i64 %42)
  store i64* %43, i64** %9, align 8
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load i64, i64* %14, align 8
  %46 = mul i64 %45, 8
  %47 = call i64* @HeapAlloc(i32 %44, i32 0, i64 %46)
  store i64* %47, i64** %10, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %3
  %51 = load i64*, i64** %8, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i64*, i64** %9, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64*, i64** %10, align 8
  %58 = icmp ne i64* %57, null
  br label %59

59:                                               ; preds = %56, %53, %50, %3
  %60 = phi i1 [ false, %53 ], [ false, %50 ], [ false, %3 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @CHECK_ENOUGH_MEMORY(i32 %61)
  %63 = load i64*, i64** %5, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %133

65:                                               ; preds = %59
  %66 = load i64*, i64** %5, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %133

70:                                               ; preds = %65
  store i64* null, i64** %18, align 8
  %71 = load i64*, i64** %5, align 8
  %72 = call i32 @lstrlenW(i64* %71)
  %73 = call i32 @REGPROC_resize_char_buffer(i64** %7, i64* %11, i32 %72)
  %74 = load i64*, i64** %7, align 8
  %75 = load i64*, i64** %5, align 8
  %76 = call i32 @lstrcpyW(i64* %74, i64* %75)
  %77 = load i64*, i64** %5, align 8
  %78 = call i32 @parseKeyName(i64* %77, i64* %17, i64** %18)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %70
  %81 = load i64*, i64** %5, align 8
  %82 = call i64* @GetMultiByteString(i64* %81)
  store i64* %82, i64** %20, align 8
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 (...) @getAppName()
  %85 = load i64*, i64** %20, align 8
  %86 = call i32 @fprintf(i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %84, i64* %85)
  %87 = call i32 (...) @GetProcessHeap()
  %88 = load i64*, i64** %20, align 8
  %89 = call i32 @HeapFree(i32 %87, i32 0, i64* %88)
  %90 = call i32 @exit(i32 1) #3
  unreachable

91:                                               ; preds = %70
  %92 = load i64*, i64** %18, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load i64*, i64** %4, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32* @REGPROC_open_export_file(i64* %97, i32 %98)
  store i32* %99, i32** %15, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = load i64, i64* %17, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @export_hkey(i32* %100, i64 %101, i64** %7, i64* %11, i64** %8, i64* %12, i64** %9, i64* %13, i64** %10, i64* %14, i32 %102)
  br label %132

104:                                              ; preds = %91
  %105 = load i64, i64* %17, align 8
  %106 = load i64*, i64** %18, align 8
  %107 = call i64 @RegOpenKeyW(i64 %105, i64* %106, i64* %19)
  %108 = load i64, i64* @ERROR_SUCCESS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load i64*, i64** %4, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32* @REGPROC_open_export_file(i64* %111, i32 %112)
  store i32* %113, i32** %15, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @export_hkey(i32* %114, i64 %115, i64** %7, i64* %11, i64** %8, i64* %12, i64** %9, i64* %13, i64** %10, i64* %14, i32 %116)
  %118 = load i64, i64* %19, align 8
  %119 = call i32 @RegCloseKey(i64 %118)
  br label %131

120:                                              ; preds = %104
  %121 = load i64*, i64** %5, align 8
  %122 = call i64* @GetMultiByteString(i64* %121)
  store i64* %122, i64** %21, align 8
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 (...) @getAppName()
  %125 = load i64*, i64** %21, align 8
  %126 = call i32 @fprintf(i32 %123, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %124, i64* %125)
  %127 = call i32 (...) @GetProcessHeap()
  %128 = load i64*, i64** %21, align 8
  %129 = call i32 @HeapFree(i32 %127, i32 0, i64* %128)
  %130 = call i32 (...) @REGPROC_print_error()
  br label %131

131:                                              ; preds = %120, %110
  br label %132

132:                                              ; preds = %131, %96
  br label %194

133:                                              ; preds = %65, %59
  %134 = load i64*, i64** %4, align 8
  %135 = load i32, i32* %16, align 4
  %136 = call i32* @REGPROC_open_export_file(i64* %134, i32 %135)
  store i32* %136, i32** %15, align 8
  store i32 0, i32* %22, align 4
  br label %137

137:                                              ; preds = %190, %133
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* @REG_CLASS_NUMBER, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %193

141:                                              ; preds = %137
  %142 = load i64*, i64** @reg_class_keys, align 8
  %143 = load i32, i32* %22, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @HKEY_CLASSES_ROOT, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %189

149:                                              ; preds = %141
  %150 = load i64*, i64** @reg_class_keys, align 8
  %151 = load i32, i32* %22, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @HKEY_CURRENT_USER, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %189

157:                                              ; preds = %149
  %158 = load i64*, i64** @reg_class_keys, align 8
  %159 = load i32, i32* %22, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @HKEY_CURRENT_CONFIG, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %189

165:                                              ; preds = %157
  %166 = load i64*, i64** @reg_class_keys, align 8
  %167 = load i32, i32* %22, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @HKEY_DYN_DATA, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %189

173:                                              ; preds = %165
  %174 = load i64*, i64** %7, align 8
  %175 = load i64**, i64*** @reg_class_namesW, align 8
  %176 = load i32, i32* %22, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i64*, i64** %175, i64 %177
  %179 = load i64*, i64** %178, align 8
  %180 = call i32 @lstrcpyW(i64* %174, i64* %179)
  %181 = load i32*, i32** %15, align 8
  %182 = load i64*, i64** @reg_class_keys, align 8
  %183 = load i32, i32* %22, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @export_hkey(i32* %181, i64 %186, i64** %7, i64* %11, i64** %8, i64* %12, i64** %9, i64* %13, i64** %10, i64* %14, i32 %187)
  br label %189

189:                                              ; preds = %173, %165, %157, %149, %141
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %22, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %22, align 4
  br label %137

193:                                              ; preds = %137
  br label %194

194:                                              ; preds = %193, %132
  %195 = load i32*, i32** %15, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32*, i32** %15, align 8
  %199 = call i32 @fclose(i32* %198)
  br label %200

200:                                              ; preds = %197, %194
  %201 = call i32 (...) @GetProcessHeap()
  %202 = load i64*, i64** %5, align 8
  %203 = call i32 @HeapFree(i32 %201, i32 0, i64* %202)
  %204 = call i32 (...) @GetProcessHeap()
  %205 = load i64*, i64** %8, align 8
  %206 = call i32 @HeapFree(i32 %204, i32 0, i64* %205)
  %207 = call i32 (...) @GetProcessHeap()
  %208 = load i64*, i64** %9, align 8
  %209 = call i32 @HeapFree(i32 %207, i32 0, i64* %208)
  %210 = call i32 (...) @GetProcessHeap()
  %211 = load i64*, i64** %10, align 8
  %212 = call i32 @HeapFree(i32 %210, i32 0, i64* %211)
  %213 = load i32, i32* @TRUE, align 4
  ret i32 %213
}

declare dso_local i64* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CHECK_ENOUGH_MEMORY(i32) #1

declare dso_local i32 @REGPROC_resize_char_buffer(i64**, i64*, i32) #1

declare dso_local i32 @lstrlenW(i64*) #1

declare dso_local i32 @lstrcpyW(i64*, i64*) #1

declare dso_local i32 @parseKeyName(i64*, i64*, i64**) #1

declare dso_local i64* @GetMultiByteString(i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64*) #1

declare dso_local i32 @getAppName(...) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @REGPROC_open_export_file(i64*, i32) #1

declare dso_local i32 @export_hkey(i32*, i64, i64**, i64*, i64**, i64*, i64**, i64*, i64**, i64*, i32) #1

declare dso_local i64 @RegOpenKeyW(i64, i64*, i64*) #1

declare dso_local i32 @RegCloseKey(i64) #1

declare dso_local i32 @REGPROC_print_error(...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
