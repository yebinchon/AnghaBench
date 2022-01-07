; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_alloc_object.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_alloc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }

@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidDsaPointer = common dso_local global i64 0, align 8
@DSA_NUM_SIZE_CLASSES = common dso_local global i32 0, align 4
@dsa_size_classes = common dso_local global i64* null, align 8
@DSA_SPAN_NOTHING_FREE = common dso_local global i64 0, align 8
@DSA_FULLNESS_CLASSES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i32)* @alloc_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alloc_object(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i64 %17
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @DSA_SCLASS_LOCK(%struct.TYPE_15__* %19, i32 %20)
  %22 = call i32 @LWLockHeldByMe(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @DSA_SCLASS_LOCK(%struct.TYPE_15__* %27, i32 %28)
  %30 = load i32, i32* @LW_EXCLUSIVE, align 4
  %31 = call i32 @LWLockAcquire(i32 %29, i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @DsaPointerIsValid(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %2
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ensure_active_superblock(%struct.TYPE_15__* %40, %struct.TYPE_14__* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* @InvalidDsaPointer, align 8
  store i64 %46, i64* %8, align 8
  br label %130

47:                                               ; preds = %39, %2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @DsaPointerIsValid(i64 %52)
  %54 = call i32 @Assert(i32 %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @dsa_get_address(%struct.TYPE_15__* %55, i64 %60)
  %62 = bitcast i8* %61 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %6, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %7, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @DSA_NUM_SIZE_CLASSES, align 4
  %74 = icmp slt i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @Assert(i32 %75)
  %77 = load i64*, i64** @dsa_size_classes, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %10, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DSA_SPAN_NOTHING_FREE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %47
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = mul i64 %91, %92
  %94 = add i64 %88, %93
  store i64 %94, i64* %8, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i8* @dsa_get_address(%struct.TYPE_15__* %95, i64 %96)
  store i8* %97, i8** %9, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i64 @NextFreeObjectIndex(i8* %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %114

102:                                              ; preds = %47
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = mul i64 %106, %107
  %109 = add i64 %103, %108
  store i64 %109, i64* %8, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %102, %87
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %126 = load i64, i64* @DSA_FULLNESS_CLASSES, align 8
  %127 = sub nsw i64 %126, 1
  %128 = call i32 @transfer_first_span(%struct.TYPE_15__* %124, %struct.TYPE_14__* %125, i32 1, i64 %127)
  br label %129

129:                                              ; preds = %123, %114
  br label %130

130:                                              ; preds = %129, %45
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @DSA_SCLASS_LOCK(%struct.TYPE_15__* %131, i32 %132)
  %134 = call i32 @LWLockHeldByMe(i32 %133)
  %135 = call i32 @Assert(i32 %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @DSA_SCLASS_LOCK(%struct.TYPE_15__* %136, i32 %137)
  %139 = call i32 @LWLockRelease(i32 %138)
  %140 = load i64, i64* %8, align 8
  ret i64 %140
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32 @DSA_SCLASS_LOCK(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @DsaPointerIsValid(i64) #1

declare dso_local i32 @ensure_active_superblock(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i8* @dsa_get_address(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @NextFreeObjectIndex(i8*) #1

declare dso_local i32 @transfer_first_span(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
