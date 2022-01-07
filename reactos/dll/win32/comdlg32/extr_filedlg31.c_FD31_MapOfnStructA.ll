; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_MapOfnStructA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_MapOfnStructA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64*, i64*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i32, i64, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@COMDLG32_hInstance = common dso_local global i32 0, align 4
@IDS_OPEN_FILE = common dso_local global i32 0, align 4
@IDS_SAVE_AS = common dso_local global i32 0, align 4
@OFN_ENABLETEMPLATE = common dso_local global i32 0, align 4
@OPENFILENAME_SIZE_VERSION_400W = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i64)* @FD31_MapOfnStructA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FD31_MapOfnStructA(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 19
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 20
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 18
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 19
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 17
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 17
  %28 = load i64*, i64** %27, align 8
  %29 = call i8* @FD31_MapStringPairsToW(i64* %28, i64 0)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 18
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %25, %3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 16
  %35 = load i64*, i64** %34, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 16
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 16
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 15
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @FD31_MapStringPairsToW(i64* %46, i64 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 17
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %43, %37, %32
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 15
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 16
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 15
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @FD31_DupToW(i32 %71, i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 14
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @FD31_DupToW(i32 %85, i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 13
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 11
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %53
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 11
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @RtlCreateUnicodeStringFromAsciiz(%struct.TYPE_7__* %7, i64 %99)
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 12
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %96, %53
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 10
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 10
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @RtlCreateUnicodeStringFromAsciiz(%struct.TYPE_7__* %7, i64 %113)
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 11
  store i32 %116, i32* %118, align 8
  br label %151

119:                                              ; preds = %105
  %120 = load i32, i32* @COMDLG32_hInstance, align 4
  %121 = load i64, i64* %6, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @IDS_OPEN_FILE, align 4
  br label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @IDS_SAVE_AS, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %131 = call i32 @ARRAY_SIZE(i32* %130)
  %132 = call i32 @LoadStringW(i32 %120, i32 %128, i32* %129, i32 %131)
  %133 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %134 = call i32 @lstrlenW(i32* %133)
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i32 @heap_alloc(i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memcpy(i32 %141, i32* %142, i32 %146)
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 11
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %127, %110
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 10
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 9
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = call i8* @FD31_DupToW(i32 %169, i32 3)
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 8
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @OFN_ENABLETEMPLATE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %207

179:                                              ; preds = %151
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %207

184:                                              ; preds = %179
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @IS_INTRESOURCE(i64 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %184
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @RtlCreateUnicodeStringFromAsciiz(%struct.TYPE_7__* %7, i64 %193)
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 4
  br label %206

199:                                              ; preds = %184
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 7
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %199, %190
  br label %207

207:                                              ; preds = %206, %179, %151
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @OPENFILENAME_SIZE_VERSION_400W, align 8
  %212 = icmp sgt i64 %210, %211
  br i1 %212, label %213, label %229

213:                                              ; preds = %207
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 6
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %213, %207
  ret void
}

declare dso_local i8* @FD31_MapStringPairsToW(i64*, i64) #1

declare dso_local i8* @FD31_DupToW(i32, i32) #1

declare dso_local i32 @RtlCreateUnicodeStringFromAsciiz(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @IS_INTRESOURCE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
