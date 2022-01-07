; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_Find.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_Find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@FALSE = common dso_local global i64 0, align 8
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i32] [i32 37, i32 42, i32 115, i32 68, i32 105, i32 114, i32 101, i32 99, i32 116, i32 111, i32 114, i32 121, i32 32, i32 39, i32 37, i32 115, i32 39, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 32, i32 40, i32 37, i32 115, i32 41, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@LPTR = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@.str.5 = private unnamed_addr constant [2 x i32] [i32 42, i32 0], align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i32] [i32 46, i32 0], align 4
@.str.7 = private unnamed_addr constant [3 x i32] [i32 46, i32 46, i32 0], align 4
@.str.8 = private unnamed_addr constant [16 x i32] [i32 37, i32 42, i32 115, i32 37, i32 51, i32 117, i32 32, i32 37, i32 99, i32 124, i32 39, i32 37, i32 115, i32 39, i32 10, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_file_Find(i8* %0, i8* %1, i64 %2, i32 %3, i64 %4, i64 (i32, i8*, i8*, i32)* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64 (i32, i8*, i8*, i32)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 (i32, i8*, i8*, i32)* %5, i64 (i32, i8*, i8*, i32)** %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %15, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @GetFileAttributes(i8* %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %198

26:                                               ; preds = %7
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %198

31:                                               ; preds = %26
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 %38, 1
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str to i8*), i32 %39, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.2 to i8*), i8* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.3 to i8*))
  br label %49

49:                                               ; preds = %47, %34, %31
  %50 = load i32, i32* @LPTR, align 4
  %51 = load i32, i32* @MAX_PATH, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i64 @LocalAlloc(i32 %50, i32 %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %19, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %195

58:                                               ; preds = %49
  %59 = load i8*, i8** %19, align 8
  %60 = load i32, i32* @MAX_PATH, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @wcscpy_s(i8* %59, i32 %60, i8* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %194

64:                                               ; preds = %58
  %65 = load i8*, i8** %19, align 8
  %66 = load i32, i32* @MAX_PATH, align 4
  %67 = call i64 @wcscat_s(i8* %65, i32 %66, i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %193

69:                                               ; preds = %64
  %70 = load i8*, i8** %19, align 8
  %71 = load i32, i32* @MAX_PATH, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  br label %77

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i8* [ %75, %74 ], [ bitcast ([2 x i32]* @.str.5 to i8*), %76 ]
  %79 = call i64 @wcscat_s(i8* %70, i32 %71, i8* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %192

81:                                               ; preds = %77
  %82 = load i8*, i8** %19, align 8
  %83 = call i32 @FindFirstFile(i8* %82, %struct.TYPE_4__* %18)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %191

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %186, %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @_wcsicmp(i8* %90, i8* bitcast ([2 x i32]* @.str.6 to i8*))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %178

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @_wcsicmp(i8* %95, i8* bitcast ([3 x i32]* @.str.7 to i8*))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %178

98:                                               ; preds = %93
  %99 = load i8*, i8** %19, align 8
  %100 = load i32, i32* @MAX_PATH, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = call i64 @wcscpy_s(i8* %99, i32 %100, i8* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %177

104:                                              ; preds = %98
  %105 = load i8*, i8** %19, align 8
  %106 = load i32, i32* @MAX_PATH, align 4
  %107 = call i64 @wcscat_s(i8* %105, i32 %106, i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %176

109:                                              ; preds = %104
  %110 = load i8*, i8** %19, align 8
  %111 = call i64 @wcslen(i8* %110)
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %16, align 4
  %113 = load i8*, i8** %19, align 8
  %114 = load i32, i32* @MAX_PATH, align 4
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @wcscat_s(i8* %113, i32 %114, i8* %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %175

119:                                              ; preds = %109
  %120 = load i64, i64* %12, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = shl i32 %123, 1
  %125 = load i32, i32* %11, align 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 68, i32 70
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, ...) @kprintf(i8* bitcast ([16 x i32]* @.str.8 to i8*), i32 %124, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.1, i64 0, i64 0), i32 %125, i32 %132, i8* %134)
  br label %136

136:                                              ; preds = %122, %119
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %136
  %143 = load i64 (i32, i8*, i8*, i32)*, i64 (i32, i8*, i8*, i32)** %13, align 8
  %144 = icmp ne i64 (i32, i8*, i8*, i32)* %143, null
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i64 (i32, i8*, i8*, i32)*, i64 (i32, i8*, i8*, i32)** %13, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i8*, i8** %19, align 8
  %149 = load i8*, i8** %19, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i32, i32* %14, align 4
  %154 = call i64 %146(i32 %147, i8* %148, i8* %152, i32 %153)
  store i64 %154, i64* %15, align 8
  br label %155

155:                                              ; preds = %145, %142
  br label %174

156:                                              ; preds = %136
  %157 = load i64, i64* %10, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = load i8*, i8** %19, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = load i64, i64* @TRUE, align 8
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i64, i64* %12, align 8
  %170 = load i64 (i32, i8*, i8*, i32)*, i64 (i32, i8*, i8*, i32)** %13, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i64 @kull_m_file_Find(i8* %164, i8* %165, i64 %166, i32 %168, i64 %169, i64 (i32, i8*, i8*, i32)* %170, i32 %171)
  store i64 %172, i64* %15, align 8
  br label %173

173:                                              ; preds = %163, %159, %156
  br label %174

174:                                              ; preds = %173, %155
  br label %175

175:                                              ; preds = %174, %109
  br label %176

176:                                              ; preds = %175, %104
  br label %177

177:                                              ; preds = %176, %98
  br label %178

178:                                              ; preds = %177, %93, %88
  br label %179

179:                                              ; preds = %178
  %180 = load i64, i64* %15, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %17, align 4
  %184 = call i64 @FindNextFile(i32 %183, %struct.TYPE_4__* %18)
  %185 = icmp ne i64 %184, 0
  br label %186

186:                                              ; preds = %182, %179
  %187 = phi i1 [ false, %179 ], [ %185, %182 ]
  br i1 %187, label %88, label %188

188:                                              ; preds = %186
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @FindClose(i32 %189)
  br label %191

191:                                              ; preds = %188, %81
  br label %192

192:                                              ; preds = %191, %77
  br label %193

193:                                              ; preds = %192, %64
  br label %194

194:                                              ; preds = %193, %58
  br label %195

195:                                              ; preds = %194, %49
  %196 = load i8*, i8** %19, align 8
  %197 = call i32 @LocalFree(i8* %196)
  br label %198

198:                                              ; preds = %195, %26, %7
  %199 = load i64, i64* %15, align 8
  ret i64 %199
}

declare dso_local i32 @GetFileAttributes(i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i64 @wcscpy_s(i8*, i32, i8*) #1

declare dso_local i64 @wcscat_s(i8*, i32, i8*) #1

declare dso_local i32 @FindFirstFile(i8*, %struct.TYPE_4__*) #1

declare dso_local i64 @_wcsicmp(i8*, i8*) #1

declare dso_local i64 @wcslen(i8*) #1

declare dso_local i64 @FindNextFile(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @FindClose(i32) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
