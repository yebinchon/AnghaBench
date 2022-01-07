; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/cache/extr_cache.c_CacheReadDiskSectors.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/cache/extr_cache.c_CacheReadDiskSectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [89 x i8] c"CacheReadDiskSectors() DiskNumber: 0x%x StartSector: %I64d SectorCount: %d Buffer: 0x%x\0A\00", align 1
@CacheManagerInitialized = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@CacheManagerDrive = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [127 x i8] c"StartBlock: %d SectorOffsetInStartBlock: %d CopyLengthInStartBlock: %d EndBlock: %d SectorOffsetInEndBlock: %d BlockCount: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"1 - RtlCopyMemory(0x%x, 0x%x, %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"2 - RtlCopyMemory(0x%x, 0x%x, %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"3 - RtlCopyMemory(0x%x, 0x%x, %d)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CacheReadDiskSectors(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 (i8*, i64, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20, i64 %21, i64 %22)
  %24 = load i64, i64* @CacheManagerInitialized, align 8
  %25 = load i64, i64* @FALSE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %5, align 8
  br label %190

29:                                               ; preds = %4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 0), align 8
  %32 = sdiv i64 %30, %31
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 0), align 8
  %35 = srem i64 %33, %34
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 0), align 8
  %38 = load i64, i64* %12, align 8
  %39 = sub nsw i64 %37, %38
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 0), align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub nsw i64 %42, %43
  br label %47

45:                                               ; preds = %29
  %46 = load i64, i64* %8, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i64 [ %44, %41 ], [ %46, %45 ]
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub nsw i64 %50, 1
  %52 = add nsw i64 %49, %51
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 0), align 8
  %54 = sdiv i64 %52, %53
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub nsw i64 %56, 1
  %58 = add nsw i64 %55, %57
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 0), align 8
  %60 = srem i64 %58, %59
  %61 = add nsw i64 1, %60
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %11, align 8
  %64 = sub nsw i64 %62, %63
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %16, align 8
  %72 = call i32 (i8*, i64, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71)
  %73 = load i64, i64* %16, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %47
  %76 = load i64, i64* %11, align 8
  %77 = call %struct.TYPE_5__* @CacheInternalGetBlockPointer(%struct.TYPE_6__* @CacheManagerDrive, i64 %76)
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %10, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = icmp eq %struct.TYPE_5__* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i64, i64* @FALSE, align 8
  store i64 %81, i64* %5, align 8
  br label %190

82:                                               ; preds = %75
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %89 = mul nsw i64 %87, %88
  %90 = add nsw i64 %86, %89
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %93 = mul nsw i64 %91, %92
  %94 = call i32 @RtlCopyMemory(i64 %83, i64 %90, i64 %93)
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %101 = mul nsw i64 %99, %100
  %102 = add nsw i64 %98, %101
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %105 = mul nsw i64 %103, %104
  %106 = call i32 (i8*, i64, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %95, i64 %102, i64 %105)
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %110 = mul nsw i64 %108, %109
  %111 = add nsw i64 %107, %110
  store i64 %111, i64* %9, align 8
  %112 = load i64, i64* %16, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %16, align 8
  br label %114

114:                                              ; preds = %82, %47
  %115 = load i64, i64* %11, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %17, align 8
  br label %117

117:                                              ; preds = %151, %114
  %118 = load i64, i64* %16, align 8
  %119 = icmp sgt i64 %118, 1
  br i1 %119, label %120, label %154

120:                                              ; preds = %117
  %121 = load i64, i64* %17, align 8
  %122 = call %struct.TYPE_5__* @CacheInternalGetBlockPointer(%struct.TYPE_6__* @CacheManagerDrive, i64 %121)
  store %struct.TYPE_5__* %122, %struct.TYPE_5__** %10, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %124 = icmp eq %struct.TYPE_5__* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i64, i64* @FALSE, align 8
  store i64 %126, i64* %5, align 8
  br label %190

127:                                              ; preds = %120
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 0), align 8
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %134 = mul nsw i64 %132, %133
  %135 = call i32 @RtlCopyMemory(i64 %128, i64 %131, i64 %134)
  %136 = load i64, i64* %9, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 0), align 8
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %142 = mul nsw i64 %140, %141
  %143 = call i32 (i8*, i64, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %136, i64 %139, i64 %142)
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 0), align 8
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %147 = mul nsw i64 %145, %146
  %148 = add nsw i64 %144, %147
  store i64 %148, i64* %9, align 8
  %149 = load i64, i64* %16, align 8
  %150 = add nsw i64 %149, -1
  store i64 %150, i64* %16, align 8
  br label %151

151:                                              ; preds = %127
  %152 = load i64, i64* %17, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %17, align 8
  br label %117

154:                                              ; preds = %117
  %155 = load i64, i64* %16, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %188

157:                                              ; preds = %154
  %158 = load i64, i64* %14, align 8
  %159 = call %struct.TYPE_5__* @CacheInternalGetBlockPointer(%struct.TYPE_6__* @CacheManagerDrive, i64 %158)
  store %struct.TYPE_5__* %159, %struct.TYPE_5__** %10, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %161 = icmp eq %struct.TYPE_5__* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i64, i64* @FALSE, align 8
  store i64 %163, i64* %5, align 8
  br label %190

164:                                              ; preds = %157
  %165 = load i64, i64* %9, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %15, align 8
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %171 = mul nsw i64 %169, %170
  %172 = call i32 @RtlCopyMemory(i64 %165, i64 %168, i64 %171)
  %173 = load i64, i64* %9, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %179 = mul nsw i64 %177, %178
  %180 = call i32 (i8*, i64, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %173, i64 %176, i64 %179)
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* %15, align 8
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheManagerDrive, i32 0, i32 1), align 8
  %184 = mul nsw i64 %182, %183
  %185 = add nsw i64 %181, %184
  store i64 %185, i64* %9, align 8
  %186 = load i64, i64* %16, align 8
  %187 = add nsw i64 %186, -1
  store i64 %187, i64* %16, align 8
  br label %188

188:                                              ; preds = %164, %154
  %189 = load i64, i64* @TRUE, align 8
  store i64 %189, i64* %5, align 8
  br label %190

190:                                              ; preds = %188, %162, %125, %80, %27
  %191 = load i64, i64* %5, align 8
  ret i64 %191
}

declare dso_local i32 @TRACE(i8*, i64, i64, i64, ...) #1

declare dso_local %struct.TYPE_5__* @CacheInternalGetBlockPointer(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
