; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_serialize.c_CRYPT_SerializeStoreElement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_serialize.c_CRYPT_SerializeStoreElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i8*, i64)*, i64 (i8*, i64, i32*, i64*)* }
%struct.TYPE_6__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"(%p, %p, %08x, %d, %p, %p)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i64, i64, %struct.TYPE_5__*, i64, i64, i32*, i64*)* @CRYPT_SerializeStoreElement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_SerializeStoreElement(i8* %0, i32* %1, i64 %2, i64 %3, %struct.TYPE_5__* %4, i64 %5, i64 %6, i32* %7, i64* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  store i64* %8, i64** %18, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = load i64*, i64** %18, align 8
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %27, %struct.TYPE_5__* %28, i64 %29, i64 %30, i32* %31, i64* %32)
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %211

36:                                               ; preds = %9
  %37 = load i64, i64* %12, align 8
  %38 = add i64 24, %37
  store i64 %38, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %19, align 8
  br label %40

40:                                               ; preds = %78, %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64 (i8*, i64)*, i64 (i8*, i64)** %42, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %21, align 8
  %46 = call i64 %43(i8* %44, i64 %45)
  store i64 %46, i64* %21, align 8
  %47 = load i64, i64* %21, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %40
  %50 = load i64, i64* %16, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* %21, align 8
  %54 = call i32 @IS_CERT_HASH_PROP_ID(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %52, %49
  store i64 0, i64* %22, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64 (i8*, i64, i32*, i64*)*, i64 (i8*, i64, i32*, i64*)** %58, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %21, align 8
  %62 = call i64 %59(i8* %60, i64 %61, i32* null, i64* %22)
  store i64 %62, i64* %19, align 8
  %63 = load i64, i64* %19, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load i64, i64* %22, align 8
  %67 = add i64 24, %66
  %68 = load i64, i64* %20, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %20, align 8
  br label %70

70:                                               ; preds = %65, %56
  br label %71

71:                                               ; preds = %70, %52, %40
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %19, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i64, i64* %21, align 8
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  br i1 %79, label %40, label %80

80:                                               ; preds = %78
  %81 = load i32*, i32** %17, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %20, align 8
  %85 = load i64*, i64** %18, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i64, i64* @TRUE, align 8
  store i64 %86, i64* %19, align 8
  br label %210

87:                                               ; preds = %80
  %88 = load i64*, i64** %18, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %20, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i64, i64* %20, align 8
  %94 = load i64*, i64** %18, align 8
  store i64 %93, i64* %94, align 8
  %95 = load i32, i32* @ERROR_MORE_DATA, align 4
  %96 = call i32 @SetLastError(i32 %95)
  %97 = load i64, i64* @FALSE, align 8
  store i64 %97, i64* %19, align 8
  br label %209

98:                                               ; preds = %87
  store i64 0, i64* %24, align 8
  store i32* null, i32** %25, align 8
  store i64 0, i64* %21, align 8
  br label %99

99:                                               ; preds = %189, %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64 (i8*, i64)*, i64 (i8*, i64)** %101, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i64, i64* %21, align 8
  %105 = call i64 %102(i8* %103, i64 %104)
  store i64 %105, i64* %21, align 8
  %106 = load i64, i64* %21, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %182

108:                                              ; preds = %99
  %109 = load i64, i64* %16, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i64, i64* %21, align 8
  %113 = call i32 @IS_CERT_HASH_PROP_ID(i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %182, label %115

115:                                              ; preds = %111, %108
  store i64 0, i64* %26, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i64 (i8*, i64, i32*, i64*)*, i64 (i8*, i64, i32*, i64*)** %117, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i64, i64* %21, align 8
  %121 = call i64 %118(i8* %119, i64 %120, i32* null, i64* %26)
  store i64 %121, i64* %19, align 8
  %122 = load i64, i64* %19, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %181

124:                                              ; preds = %115
  %125 = load i64, i64* %24, align 8
  %126 = load i64, i64* %26, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load i32*, i32** %25, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32*, i32** %25, align 8
  %133 = load i64, i64* %26, align 8
  %134 = call i32* @CryptMemRealloc(i32* %132, i64 %133)
  store i32* %134, i32** %25, align 8
  br label %138

135:                                              ; preds = %128
  %136 = load i64, i64* %26, align 8
  %137 = call i32* @CryptMemAlloc(i64 %136)
  store i32* %137, i32** %25, align 8
  br label %138

138:                                              ; preds = %135, %131
  %139 = load i64, i64* %26, align 8
  store i64 %139, i64* %24, align 8
  br label %140

140:                                              ; preds = %138, %124
  %141 = load i32*, i32** %25, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %178

143:                                              ; preds = %140
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i64 (i8*, i64, i32*, i64*)*, i64 (i8*, i64, i32*, i64*)** %145, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = load i64, i64* %21, align 8
  %149 = load i32*, i32** %25, align 8
  %150 = call i64 %146(i8* %147, i64 %148, i32* %149, i64* %26)
  store i64 %150, i64* %19, align 8
  %151 = load i64, i64* %19, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %143
  %154 = load i32*, i32** %17, align 8
  %155 = bitcast i32* %154 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %155, %struct.TYPE_6__** %23, align 8
  %156 = load i64, i64* %21, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load i64, i64* %26, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  %164 = load i32*, i32** %17, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 24
  store i32* %165, i32** %17, align 8
  %166 = load i64, i64* %26, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %153
  %169 = load i32*, i32** %17, align 8
  %170 = load i32*, i32** %25, align 8
  %171 = load i64, i64* %26, align 8
  %172 = call i32 @memcpy(i32* %169, i32* %170, i64 %171)
  %173 = load i64, i64* %26, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 %173
  store i32* %175, i32** %17, align 8
  br label %176

176:                                              ; preds = %168, %153
  br label %177

177:                                              ; preds = %176, %143
  br label %180

178:                                              ; preds = %140
  %179 = load i64, i64* @FALSE, align 8
  store i64 %179, i64* %19, align 8
  br label %180

180:                                              ; preds = %178, %177
  br label %181

181:                                              ; preds = %180, %115
  br label %182

182:                                              ; preds = %181, %111, %99
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %19, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i64, i64* %21, align 8
  %188 = icmp ne i64 %187, 0
  br label %189

189:                                              ; preds = %186, %183
  %190 = phi i1 [ false, %183 ], [ %188, %186 ]
  br i1 %190, label %99, label %191

191:                                              ; preds = %189
  %192 = load i32*, i32** %25, align 8
  %193 = call i32 @CryptMemFree(i32* %192)
  %194 = load i32*, i32** %17, align 8
  %195 = bitcast i32* %194 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %195, %struct.TYPE_6__** %23, align 8
  %196 = load i64, i64* %13, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  store i64 %196, i64* %198, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  %201 = load i64, i64* %12, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  %204 = load i32*, i32** %17, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 24
  %206 = load i32*, i32** %11, align 8
  %207 = load i64, i64* %12, align 8
  %208 = call i32 @memcpy(i32* %205, i32* %206, i64 %207)
  br label %209

209:                                              ; preds = %191, %92
  br label %210

210:                                              ; preds = %209, %83
  br label %213

211:                                              ; preds = %9
  %212 = load i64, i64* @FALSE, align 8
  store i64 %212, i64* %19, align 8
  br label %213

213:                                              ; preds = %211, %210
  %214 = load i64, i64* %19, align 8
  ret i64 %214
}

declare dso_local i32 @TRACE(i8*, i8*, %struct.TYPE_5__*, i64, i64, i32*, i64*) #1

declare dso_local i32 @IS_CERT_HASH_PROP_ID(i64) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @CryptMemRealloc(i32*, i64) #1

declare dso_local i32* @CryptMemAlloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @CryptMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
