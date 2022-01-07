; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_dshash.c_resize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_dshash.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@DSHASH_NUM_PARTITIONS = common dso_local global i64 0, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = shl i64 1, %14
  store i64 %15, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %49, %2
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @DSHASH_NUM_PARTITIONS, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @PARTITION_LOCK(%struct.TYPE_10__* %21, i64 %22)
  %24 = call i32 @LWLockHeldByMe(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @PARTITION_LOCK(%struct.TYPE_10__* %29, i64 %30)
  %32 = load i32, i32* @LW_EXCLUSIVE, align 4
  %33 = call i32 @LWLockAcquire(i32 %31, i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %20
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = call i32 @PARTITION_LOCK(%struct.TYPE_10__* %45, i64 0)
  %47 = call i32 @LWLockRelease(i32 %46)
  br label %159

48:                                               ; preds = %36, %20
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %16

52:                                               ; preds = %16
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  %60 = icmp eq i64 %53, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @dsa_allocate0(i32 %65, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i8* @dsa_get_address(i32 %72, i32 %73)
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** %7, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = shl i64 1, %80
  store i64 %81, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %82

82:                                               ; preds = %120, %52
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %123

86:                                               ; preds = %82
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %97, %86
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @DsaPointerIsValid(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i8* @dsa_get_address(i32 %100, i32 %101)
  %103 = bitcast i8* %102 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %12, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %13, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %4, align 8
  %115 = call i64 @BUCKET_INDEX_FOR_HASH_AND_SIZE(i32 %113, i64 %114)
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  %117 = call i32 @insert_item_into_bucket(%struct.TYPE_10__* %107, i32 %108, %struct.TYPE_9__* %109, i32* %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %11, align 4
  br label %93

119:                                              ; preds = %93
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %10, align 8
  br label %82

123:                                              ; preds = %82
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store i32 %129, i32* %133, align 8
  %134 = load i64, i64* %4, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i64 %134, i64* %138, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  store i32* %139, i32** %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @dsa_free(i32 %144, i32 %145)
  store i64 0, i64* %10, align 8
  br label %147

147:                                              ; preds = %156, %123
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* @DSHASH_NUM_PARTITIONS, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = load i64, i64* %10, align 8
  %154 = call i32 @PARTITION_LOCK(%struct.TYPE_10__* %152, i64 %153)
  %155 = call i32 @LWLockRelease(i32 %154)
  br label %156

156:                                              ; preds = %151
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %10, align 8
  br label %147

159:                                              ; preds = %44, %147
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32 @PARTITION_LOCK(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @dsa_allocate0(i32, i32) #1

declare dso_local i8* @dsa_get_address(i32, i32) #1

declare dso_local i64 @DsaPointerIsValid(i32) #1

declare dso_local i32 @insert_item_into_bucket(%struct.TYPE_10__*, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @BUCKET_INDEX_FOR_HASH_AND_SIZE(i32, i64) #1

declare dso_local i32 @dsa_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
