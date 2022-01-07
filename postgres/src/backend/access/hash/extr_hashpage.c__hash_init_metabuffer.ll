; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_init_metabuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_init_metabuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, i32, i32, i32, i32, i32, i32*, i32*, i32, i64, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@HASH_MAX_SPLITPOINTS = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i8* null, align 8
@LH_META_PAGE = common dso_local global i32 0, align 4
@HASHO_PAGE_ID = common dso_local global i32 0, align 4
@HASH_MAGIC = common dso_local global i32 0, align 4
@HASH_VERSION = common dso_local global i32 0, align 4
@BYTE_TO_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_hash_init_metabuffer(i32 %0, double %1, i32 %2, double %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store double %1, double* %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load double, double* %7, align 8
  %19 = load double, double* %9, align 8
  %20 = fdiv double %18, %19
  store double %20, double* %14, align 8
  %21 = load double, double* %14, align 8
  %22 = fcmp ole double %21, 2.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 2, i32* %15, align 4
  br label %34

24:                                               ; preds = %5
  %25 = load double, double* %14, align 8
  %26 = fcmp oge double %25, 0x41D0000000000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1073741824, i32* %15, align 4
  br label %33

28:                                               ; preds = %24
  %29 = load double, double* %14, align 8
  %30 = fptosi double %29 to i32
  %31 = call i32 @_hash_spareindex(i32 %30)
  %32 = call i32 @_hash_get_totalbuckets(i32 %31)
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %28, %27
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @_hash_spareindex(i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @HASH_MAX_SPLITPOINTS, align 4
  %39 = icmp slt i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @Assert(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @BufferGetPage(i32 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i64, i64* %13, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @BufferGetPageSize(i32 %48)
  %50 = call i32 @_hash_pageinit(i64 %47, i32 %49)
  br label %51

51:                                               ; preds = %46, %34
  %52 = load i64, i64* %13, align 8
  %53 = call i64 @PageGetSpecialPointer(i64 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %12, align 8
  %55 = load i8*, i8** @InvalidBlockNumber, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @InvalidBlockNumber, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  %63 = load i32, i32* @LH_META_PAGE, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @HASHO_PAGE_ID, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i64, i64* %13, align 8
  %70 = call %struct.TYPE_9__* @HashPageGetMeta(i64 %69)
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %11, align 8
  %71 = load i32, i32* @HASH_MAGIC, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 15
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @HASH_VERSION, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 14
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 13
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 12
  store i64 0, i64* %80, align 8
  %81 = load double, double* %9, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store double %81, double* %83, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @HashGetMaxBitmapSize(i64 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @_hash_log2(i32 %90)
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %104, %51
  %93 = load i32, i32* %17, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %17, align 4
  %97 = shl i32 1, %96
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp sle i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %107

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %17, align 4
  br label %92

107:                                              ; preds = %102, %92
  %108 = load i32, i32* %17, align 4
  %109 = icmp sgt i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @Assert(i32 %110)
  %112 = load i32, i32* %17, align 4
  %113 = shl i32 1, %112
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* @BYTE_TO_BIT, align 8
  %119 = add nsw i64 %117, %118
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 11
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %123 = call i32 @BMPG_SHIFT(%struct.TYPE_9__* %122)
  %124 = shl i32 1, %123
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %126 = call i32 @BMPG_MASK(%struct.TYPE_9__* %125)
  %127 = add nsw i32 %126, 1
  %128 = icmp eq i32 %124, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @Assert(i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 10
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sub nsw i32 %134, 1
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i32 @_hash_log2(i32 %139)
  %141 = shl i32 1, %140
  %142 = sub nsw i32 %141, 1
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @MemSet(i32* %153, i32 0, i32 8)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 7
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @MemSet(i32* %157, i32 0, i32 8)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 6
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 1, i32* %164, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 9
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %171 = bitcast %struct.TYPE_9__* %170 to i8*
  %172 = getelementptr inbounds i8, i8* %171, i64 4
  %173 = load i64, i64* %13, align 8
  %174 = inttoptr i64 %173 to i8*
  %175 = ptrtoint i8* %172 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = trunc i64 %177 to i32
  %179 = load i64, i64* %13, align 8
  %180 = inttoptr i64 %179 to %struct.TYPE_7__*
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 4
  ret void
}

declare dso_local i32 @_hash_get_totalbuckets(i32) #1

declare dso_local i32 @_hash_spareindex(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @_hash_pageinit(i64, i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local %struct.TYPE_9__* @HashPageGetMeta(i64) #1

declare dso_local i32 @HashGetMaxBitmapSize(i64) #1

declare dso_local i32 @_hash_log2(i32) #1

declare dso_local i32 @BMPG_SHIFT(%struct.TYPE_9__*) #1

declare dso_local i32 @BMPG_MASK(%struct.TYPE_9__*) #1

declare dso_local i32 @MemSet(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
