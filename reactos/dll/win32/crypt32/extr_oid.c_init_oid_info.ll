; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_oid.c_init_oid_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_oid.c_init_oid_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__*, i32, i32, i32, i64* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.OIDInfo = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i64*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@oidInfoConstructors = common dso_local global %struct.TYPE_11__* null, align 8
@oidInfo = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_oid_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_oid_info() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.OIDInfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.OIDInfo*, align 8
  %6 = call i32 (...) @oid_init_localizednames()
  store i64 0, i64* %1, align 8
  br label %7

7:                                                ; preds = %238, %0
  %8 = load i64, i64* %1, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %10 = call i64 @ARRAY_SIZE(%struct.TYPE_11__* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %241

12:                                               ; preds = %7
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 6
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 @IS_INTRESOURCE(i64* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %113, label %20

20:                                               ; preds = %12
  %21 = call %struct.OIDInfo* @CryptMemAlloc(i32 56)
  store %struct.OIDInfo* %21, %struct.OIDInfo** %2, align 8
  %22 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %23 = icmp ne %struct.OIDInfo* %22, null
  br i1 %23, label %24, label %112

24:                                               ; preds = %20
  %25 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %26 = call i32 @memset(%struct.OIDInfo* %25, i32 0, i32 56)
  %27 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %28 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %31 = load i64, i64* %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %36 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 7
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %39 = load i64, i64* %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 6
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %44 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 6
  store i64* %42, i64** %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %47 = load i64, i64* %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %52 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  store i32 %50, i32* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %55 = load i64, i64* %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %60 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %64 = load i64, i64* %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %92

69:                                               ; preds = %24
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %71 = load i64, i64* %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %78 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %82 = load i64, i64* %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %89 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %69, %24
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %94 = load i64, i64* %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %99 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %102 = load i64, i64* %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %107 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load %struct.OIDInfo*, %struct.OIDInfo** %2, align 8
  %110 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %109, i32 0, i32 0
  %111 = call i32 @list_add_tail(i32* @oidInfo, i32* %110)
  br label %112

112:                                              ; preds = %92, %20
  br label %237

113:                                              ; preds = %12
  %114 = load i32, i32* @hInstance, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %116 = load i64, i64* %1, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 6
  %119 = load i64*, i64** %118, align 8
  %120 = ptrtoint i64* %119 to i32
  %121 = bitcast i32* %3 to i64*
  %122 = call i32 @LoadStringW(i32 %114, i32 %120, i64* %121, i32 0)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %236

125:                                              ; preds = %113
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 4
  %130 = add i64 56, %129
  %131 = trunc i64 %130 to i32
  %132 = call %struct.OIDInfo* @CryptMemAlloc(i32 %131)
  store %struct.OIDInfo* %132, %struct.OIDInfo** %5, align 8
  %133 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %134 = icmp ne %struct.OIDInfo* %133, null
  br i1 %134, label %135, label %235

135:                                              ; preds = %125
  %136 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %137 = call i32 @memset(%struct.OIDInfo* %136, i32 0, i32 56)
  %138 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %139 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  store i32 4, i32* %140, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %142 = load i64, i64* %1, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %147 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 7
  store i32 %145, i32* %148, align 8
  %149 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %150 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %149, i64 1
  %151 = bitcast %struct.OIDInfo* %150 to i64*
  %152 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %153 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 6
  store i64* %151, i64** %154, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %156 = load i64, i64* %1, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %161 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 5
  store i32 %159, i32* %162, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %164 = load i64, i64* %1, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %169 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  store i32 %167, i32* %171, align 4
  %172 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %173 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %172, i64 1
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  %178 = trunc i64 %177 to i32
  %179 = call i32 @memcpy(%struct.OIDInfo* %173, i32 %174, i32 %178)
  %180 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %181 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %180, i64 1
  %182 = bitcast %struct.OIDInfo* %181 to i64*
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %187 = load i64, i64* %1, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = icmp ne %struct.TYPE_9__* %190, null
  br i1 %191, label %192, label %215

192:                                              ; preds = %135
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %194 = load i64, i64* %1, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %201 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  store i32 %199, i32* %203, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %205 = load i64, i64* %1, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %212 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  store i32 %210, i32* %214, align 4
  br label %215

215:                                              ; preds = %192, %135
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %217 = load i64, i64* %1, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %222 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 2
  store i32 %220, i32* %223, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** @oidInfoConstructors, align 8
  %225 = load i64, i64* %1, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %230 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  %232 = load %struct.OIDInfo*, %struct.OIDInfo** %5, align 8
  %233 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %232, i32 0, i32 0
  %234 = call i32 @list_add_tail(i32* @oidInfo, i32* %233)
  br label %235

235:                                              ; preds = %215, %125
  br label %236

236:                                              ; preds = %235, %113
  br label %237

237:                                              ; preds = %236, %112
  br label %238

238:                                              ; preds = %237
  %239 = load i64, i64* %1, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %1, align 8
  br label %7

241:                                              ; preds = %7
  ret void
}

declare dso_local i32 @oid_init_localizednames(...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @IS_INTRESOURCE(i64*) #1

declare dso_local %struct.OIDInfo* @CryptMemAlloc(i32) #1

declare dso_local i32 @memset(%struct.OIDInfo*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @LoadStringW(i32, i32, i64*, i32) #1

declare dso_local i32 @memcpy(%struct.OIDInfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
