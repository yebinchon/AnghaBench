; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmCopyTree.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmCopyTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"ScmCopyTree()\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"RegQueryInfoKey() failed (Error %lu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"dwSubKeys %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"dwMaxSubKeyNameLength %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"dwValues %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"dwMaxValueNameLength %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"dwMaxValueLength %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Buffer allocation failed\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"Subkey enumeration failed (Error %lu)\0A\00", align 1
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Subkey creation failed (Error %lu)\0A\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"Error: %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"ScmCopyTree() done \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @ScmCopyTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ScmCopyTree(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %22 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @RegQueryInfoKey(i32 %23, i32* null, i32* null, i32* null, i64* %6, i64* %9, i32* null, i64* %7, i64* %11, i64* %13, i32* null, i32* null)
  store i64 %24, i64* %21, align 8
  %25 = load i64, i64* %21, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i64, i64* %21, align 8
  %30 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %21, align 8
  store i64 %31, i64* %3, align 8
  br label %228

32:                                               ; preds = %2
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %7, align 8
  %42 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %13, align 8
  %46 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %143

49:                                               ; preds = %32
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i64, i64* %9, align 8
  %52 = mul i64 %51, 4
  %53 = call i32* @HeapAlloc(i32 %50, i32 0, i64 %52)
  store i32* %53, i32** %17, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %58, i64* %3, align 8
  br label %228

59:                                               ; preds = %49
  store i64 0, i64* %16, align 8
  br label %60

60:                                               ; preds = %136, %59
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %139

64:                                               ; preds = %60
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %10, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i64, i64* %16, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call i64 @RegEnumKeyExW(i32 %66, i64 %67, i32* %68, i64* %10, i32* null, i32* null, i32* null, i32* null)
  store i64 %69, i64* %21, align 8
  %70 = load i64, i64* %21, align 8
  %71 = load i64, i64* @ERROR_SUCCESS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load i64, i64* %21, align 8
  %75 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %74)
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @HeapFree(i32 %76, i32 0, i32* %77)
  %79 = load i64, i64* %21, align 8
  store i64 %79, i64* %3, align 8
  br label %228

80:                                               ; preds = %64
  %81 = load i32, i32* %5, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %84 = load i32, i32* @KEY_WRITE, align 4
  %85 = call i64 @RegCreateKeyExW(i32 %81, i32* %82, i32 0, i32* null, i32 %83, i32 %84, i32* null, i32* %19, i64* %15)
  store i64 %85, i64* %21, align 8
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %80
  %90 = load i64, i64* %21, align 8
  %91 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 %90)
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @HeapFree(i32 %92, i32 0, i32* %93)
  %95 = load i64, i64* %21, align 8
  store i64 %95, i64* %3, align 8
  br label %228

96:                                               ; preds = %80
  %97 = load i32, i32* %4, align 4
  %98 = load i32*, i32** %17, align 8
  %99 = load i32, i32* @KEY_READ, align 4
  %100 = call i64 @RegOpenKeyExW(i32 %97, i32* %98, i32 0, i32 %99, i32* %20)
  store i64 %100, i64* %21, align 8
  %101 = load i64, i64* %21, align 8
  %102 = load i64, i64* @ERROR_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load i64, i64* %21, align 8
  %106 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %105)
  %107 = load i32, i32* %19, align 4
  %108 = call i32 @RegCloseKey(i32 %107)
  %109 = call i32 (...) @GetProcessHeap()
  %110 = load i32*, i32** %17, align 8
  %111 = call i32 @HeapFree(i32 %109, i32 0, i32* %110)
  %112 = load i64, i64* %21, align 8
  store i64 %112, i64* %3, align 8
  br label %228

113:                                              ; preds = %96
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %19, align 4
  %116 = call i64 @ScmCopyTree(i32 %114, i32 %115)
  store i64 %116, i64* %21, align 8
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* @ERROR_SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %113
  %121 = load i64, i64* %21, align 8
  %122 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %121)
  %123 = load i32, i32* %20, align 4
  %124 = call i32 @RegCloseKey(i32 %123)
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @RegCloseKey(i32 %125)
  %127 = call i32 (...) @GetProcessHeap()
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @HeapFree(i32 %127, i32 0, i32* %128)
  %130 = load i64, i64* %21, align 8
  store i64 %130, i64* %3, align 8
  br label %228

131:                                              ; preds = %113
  %132 = load i32, i32* %20, align 4
  %133 = call i32 @RegCloseKey(i32 %132)
  %134 = load i32, i32* %19, align 4
  %135 = call i32 @RegCloseKey(i32 %134)
  br label %136

136:                                              ; preds = %131
  %137 = load i64, i64* %16, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %16, align 8
  br label %60

139:                                              ; preds = %60
  %140 = call i32 (...) @GetProcessHeap()
  %141 = load i32*, i32** %17, align 8
  %142 = call i32 @HeapFree(i32 %140, i32 0, i32* %141)
  br label %143

143:                                              ; preds = %139, %32
  %144 = load i64, i64* %7, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %225

146:                                              ; preds = %143
  %147 = call i32 (...) @GetProcessHeap()
  %148 = load i64, i64* %11, align 8
  %149 = mul i64 %148, 4
  %150 = call i32* @HeapAlloc(i32 %147, i32 0, i64 %149)
  store i32* %150, i32** %17, align 8
  %151 = load i32*, i32** %17, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %155 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %155, i64* %3, align 8
  br label %228

156:                                              ; preds = %146
  %157 = call i32 (...) @GetProcessHeap()
  %158 = load i64, i64* %13, align 8
  %159 = call i32* @HeapAlloc(i32 %157, i32 0, i64 %158)
  store i32* %159, i32** %18, align 8
  %160 = load i32*, i32** %18, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %164 = call i32 (...) @GetProcessHeap()
  %165 = load i32*, i32** %17, align 8
  %166 = call i32 @HeapFree(i32 %164, i32 0, i32* %165)
  %167 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %167, i64* %3, align 8
  br label %228

168:                                              ; preds = %156
  store i64 0, i64* %16, align 8
  br label %169

169:                                              ; preds = %215, %168
  %170 = load i64, i64* %16, align 8
  %171 = load i64, i64* %7, align 8
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %173, label %218

173:                                              ; preds = %169
  %174 = load i64, i64* %11, align 8
  store i64 %174, i64* %12, align 8
  %175 = load i64, i64* %13, align 8
  store i64 %175, i64* %14, align 8
  %176 = load i32, i32* %4, align 4
  %177 = load i64, i64* %16, align 8
  %178 = load i32*, i32** %17, align 8
  %179 = load i32*, i32** %18, align 8
  %180 = call i64 @RegEnumValueW(i32 %176, i64 %177, i32* %178, i64* %12, i32* null, i64* %8, i32* %179, i64* %14)
  store i64 %180, i64* %21, align 8
  %181 = load i64, i64* %21, align 8
  %182 = load i64, i64* @ERROR_SUCCESS, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %173
  %185 = load i64, i64* %21, align 8
  %186 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %185)
  %187 = call i32 (...) @GetProcessHeap()
  %188 = load i32*, i32** %18, align 8
  %189 = call i32 @HeapFree(i32 %187, i32 0, i32* %188)
  %190 = call i32 (...) @GetProcessHeap()
  %191 = load i32*, i32** %17, align 8
  %192 = call i32 @HeapFree(i32 %190, i32 0, i32* %191)
  %193 = load i64, i64* %21, align 8
  store i64 %193, i64* %3, align 8
  br label %228

194:                                              ; preds = %173
  %195 = load i32, i32* %5, align 4
  %196 = load i32*, i32** %17, align 8
  %197 = load i64, i64* %8, align 8
  %198 = load i32*, i32** %18, align 8
  %199 = load i64, i64* %14, align 8
  %200 = call i64 @RegSetValueExW(i32 %195, i32* %196, i32 0, i64 %197, i32* %198, i64 %199)
  store i64 %200, i64* %21, align 8
  %201 = load i64, i64* %21, align 8
  %202 = load i64, i64* @ERROR_SUCCESS, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %194
  %205 = load i64, i64* %21, align 8
  %206 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %205)
  %207 = call i32 (...) @GetProcessHeap()
  %208 = load i32*, i32** %18, align 8
  %209 = call i32 @HeapFree(i32 %207, i32 0, i32* %208)
  %210 = call i32 (...) @GetProcessHeap()
  %211 = load i32*, i32** %17, align 8
  %212 = call i32 @HeapFree(i32 %210, i32 0, i32* %211)
  %213 = load i64, i64* %21, align 8
  store i64 %213, i64* %3, align 8
  br label %228

214:                                              ; preds = %194
  br label %215

215:                                              ; preds = %214
  %216 = load i64, i64* %16, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %16, align 8
  br label %169

218:                                              ; preds = %169
  %219 = call i32 (...) @GetProcessHeap()
  %220 = load i32*, i32** %18, align 8
  %221 = call i32 @HeapFree(i32 %219, i32 0, i32* %220)
  %222 = call i32 (...) @GetProcessHeap()
  %223 = load i32*, i32** %17, align 8
  %224 = call i32 @HeapFree(i32 %222, i32 0, i32* %223)
  br label %225

225:                                              ; preds = %218, %143
  %226 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %227 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %227, i64* %3, align 8
  br label %228

228:                                              ; preds = %225, %204, %184, %162, %153, %120, %104, %89, %73, %56, %28
  %229 = load i64, i64* %3, align 8
  ret i64 %229
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @RegQueryInfoKey(i32, i32*, i32*, i32*, i64*, i64*, i32*, i64*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumKeyExW(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i64 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i64*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegEnumValueW(i32, i64, i32*, i64*, i32*, i64*, i32*, i64*) #1

declare dso_local i64 @RegSetValueExW(i32, i32*, i32, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
