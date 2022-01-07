; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_security.c_ParseStringSecurityDescriptorToSecurityDescriptor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_security.c_ParseStringSecurityDescriptorToSecurityDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SE_DACL_PRESENT = common dso_local global i32 0, align 4
@SE_SACL_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Unknown token\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*, i32*)* @ParseStringSecurityDescriptorToSecurityDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseStringSecurityDescriptorToSecurityDescriptor(i8* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %7, align 4
  store i8* null, i8** %11, align 8
  %20 = load i32*, i32** %6, align 8
  store i32 40, i32* %20, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @lstrlenW(i8* %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = call i8* @heap_alloc(i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 1
  %33 = bitcast %struct.TYPE_3__* %32 to i8*
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %30, %3
  br label %35

35:                                               ; preds = %40, %34
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  br label %35

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %238, %43
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %240

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %8, align 1
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 58
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %59 = call i32 @SetLastError(i32 %58)
  br label %242

60:                                               ; preds = %48
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %4, align 8
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** %10, align 8
  br label %64

64:                                               ; preds = %76, %60
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 58
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i1 [ false, %64 ], [ %73, %69 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %10, align 8
  br label %64

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 -1
  store i8* %85, i8** %10, align 8
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 1
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memcpy(i8* %93, i8* %94, i32 %98)
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i8, i8* %8, align 1
  %105 = sext i8 %104 to i32
  switch i32 %105, label %234 [
    i32 79, label %106
    i32 71, label %134
    i32 68, label %162
    i32 83, label %198
  ]

106:                                              ; preds = %86
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @ParseStringSidToSid(i8* %107, i8* %108, i32* %13)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  br label %242

112:                                              ; preds = %106
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = icmp ne %struct.TYPE_3__* %113, null
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load i8*, i8** %11, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %118 = bitcast %struct.TYPE_3__* %117 to i8*
  %119 = ptrtoint i8* %116 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = inttoptr i64 %121 to i8*
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load i8*, i8** %11, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr i8, i8* %126, i64 %127
  store i8* %128, i8** %11, align 8
  br label %129

129:                                              ; preds = %115, %112
  %130 = load i32, i32* %13, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, %130
  store i32 %133, i32* %131, align 4
  br label %238

134:                                              ; preds = %86
  %135 = load i8*, i8** %9, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = call i32 @ParseStringSidToSid(i8* %135, i8* %136, i32* %14)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %242

140:                                              ; preds = %134
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %142 = icmp ne %struct.TYPE_3__* %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load i8*, i8** %11, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = bitcast %struct.TYPE_3__* %145 to i8*
  %147 = ptrtoint i8* %144 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i8*, i8** %11, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr i8, i8* %154, i64 %155
  store i8* %156, i8** %11, align 8
  br label %157

157:                                              ; preds = %143, %140
  %158 = load i32, i32* %14, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %158
  store i32 %161, i32* %159, align 4
  br label %238

162:                                              ; preds = %86
  %163 = load i8*, i8** %9, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = call i32 @ParseStringAclToAcl(i8* %163, i32* %15, i32 %165, i32* %16)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  br label %242

169:                                              ; preds = %162
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %171 = icmp ne %struct.TYPE_3__* %170, null
  br i1 %171, label %172, label %193

172:                                              ; preds = %169
  %173 = load i32, i32* @SE_DACL_PRESENT, align 4
  %174 = load i32, i32* %15, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %182 = bitcast %struct.TYPE_3__* %181 to i8*
  %183 = ptrtoint i8* %180 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = inttoptr i64 %185 to i8*
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* %16, align 4
  %190 = load i8*, i8** %11, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr i8, i8* %190, i64 %191
  store i8* %192, i8** %11, align 8
  br label %193

193:                                              ; preds = %172, %169
  %194 = load i32, i32* %16, align 4
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %194
  store i32 %197, i32* %195, align 4
  br label %238

198:                                              ; preds = %86
  %199 = load i8*, i8** %9, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = ptrtoint i8* %200 to i32
  %202 = call i32 @ParseStringAclToAcl(i8* %199, i32* %17, i32 %201, i32* %18)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %198
  br label %242

205:                                              ; preds = %198
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %207 = icmp ne %struct.TYPE_3__* %206, null
  br i1 %207, label %208, label %229

208:                                              ; preds = %205
  %209 = load i32, i32* @SE_SACL_PRESENT, align 4
  %210 = load i32, i32* %17, align 4
  %211 = or i32 %209, %210
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %218 = bitcast %struct.TYPE_3__* %217 to i8*
  %219 = ptrtoint i8* %216 to i64
  %220 = ptrtoint i8* %218 to i64
  %221 = sub i64 %219, %220
  %222 = inttoptr i64 %221 to i8*
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  store i8* %222, i8** %224, align 8
  %225 = load i32, i32* %18, align 4
  %226 = load i8*, i8** %11, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr i8, i8* %226, i64 %227
  store i8* %228, i8** %11, align 8
  br label %229

229:                                              ; preds = %208, %205
  %230 = load i32, i32* %18, align 4
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, %230
  store i32 %233, i32* %231, align 4
  br label %238

234:                                              ; preds = %86
  %235 = call i32 @FIXME(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %236 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %237 = call i32 @SetLastError(i32 %236)
  br label %242

238:                                              ; preds = %229, %193, %157, %129
  %239 = load i8*, i8** %10, align 8
  store i8* %239, i8** %4, align 8
  br label %44

240:                                              ; preds = %44
  %241 = load i32, i32* @TRUE, align 4
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %240, %234, %204, %168, %139, %111, %57
  %243 = load i8*, i8** %9, align 8
  %244 = call i32 @heap_free(i8* %243)
  %245 = load i32, i32* %7, align 4
  ret i32 %245
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ParseStringSidToSid(i8*, i8*, i32*) #1

declare dso_local i32 @ParseStringAclToAcl(i8*, i32*, i32, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
