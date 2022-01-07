; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_key.c_kull_m_key_capi_decryptedkey_to_raw.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_key.c_kull_m_key_capi_decryptedkey_to_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8, i32, i8 }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PRIVATEKEYBLOB = common dso_local global i32 0, align 4
@CUR_BLOB_VERSION = common dso_local global i32 0, align 4
@CALG_RSA_KEYX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_key_capi_decryptedkey_to_raw(i64 %0, i32 %1, %struct.TYPE_7__** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 843141970
  br i1 %19, label %20, label %192

20:                                               ; preds = %4
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 %26, 9
  %28 = sdiv i32 %27, 16
  %29 = sext i32 %28 to i64
  %30 = add i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @LPTR, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @LocalAlloc(i32 %33, i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_7__*
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %38, align 8
  %39 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %39, label %40, label %191

40:                                               ; preds = %20
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @PRIVATEKEYBLOB, align 4
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @CUR_BLOB_VERSION, align 4
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 8
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @CALG_RSA_KEYX, align 4
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load i64, i64* %5, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i8 %64, i8* %68, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load i64, i64* %5, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  %77 = load i8, i8* %76, align 1
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  store i8 %77, i8* %81, align 8
  %82 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = ptrtoint %struct.TYPE_7__* %83 to i64
  %85 = add i64 %84, 4
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %5, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = getelementptr inbounds i8, i8* %87, i64 5
  %89 = ptrtoint i8* %88 to i64
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sdiv i32 %92, 8
  %94 = call i32 @RtlCopyMemory(i64 %90, i64 %91, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = sdiv i32 %95, 8
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %11, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %11, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sdiv i32 %100, 8
  %102 = add nsw i32 %101, 8
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %12, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sdiv i32 %108, 16
  %110 = call i32 @RtlCopyMemory(i64 %106, i64 %107, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = sdiv i32 %111, 16
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %11, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %11, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sdiv i32 %116, 16
  %118 = add nsw i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %12, align 8
  %121 = add nsw i64 %120, %119
  store i64 %121, i64* %12, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sdiv i32 %124, 16
  %126 = call i32 @RtlCopyMemory(i64 %122, i64 %123, i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = sdiv i32 %127, 16
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %11, align 8
  %131 = add nsw i64 %130, %129
  store i64 %131, i64* %11, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sdiv i32 %132, 16
  %134 = add nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %12, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sdiv i32 %140, 16
  %142 = call i32 @RtlCopyMemory(i64 %138, i64 %139, i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = sdiv i32 %143, 16
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %11, align 8
  %147 = add nsw i64 %146, %145
  store i64 %147, i64* %11, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sdiv i32 %148, 16
  %150 = add nsw i32 %149, 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %12, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %12, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sdiv i32 %156, 16
  %158 = call i32 @RtlCopyMemory(i64 %154, i64 %155, i32 %157)
  %159 = load i32, i32* %10, align 4
  %160 = sdiv i32 %159, 16
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %11, align 8
  %163 = add nsw i64 %162, %161
  store i64 %163, i64* %11, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sdiv i32 %164, 16
  %166 = add nsw i32 %165, 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %12, align 8
  %169 = add nsw i64 %168, %167
  store i64 %169, i64* %12, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %12, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sdiv i32 %172, 16
  %174 = call i32 @RtlCopyMemory(i64 %170, i64 %171, i32 %173)
  %175 = load i32, i32* %10, align 4
  %176 = sdiv i32 %175, 16
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %11, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %11, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sdiv i32 %180, 16
  %182 = add nsw i32 %181, 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %12, align 8
  %185 = add nsw i64 %184, %183
  store i64 %185, i64* %12, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %12, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sdiv i32 %188, 8
  %190 = call i32 @RtlCopyMemory(i64 %186, i64 %187, i32 %189)
  br label %191

191:                                              ; preds = %40, %20
  br label %192

192:                                              ; preds = %191, %4
  %193 = load i32, i32* %9, align 4
  ret i32 %193
}

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
