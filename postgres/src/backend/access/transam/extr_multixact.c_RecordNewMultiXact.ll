; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_RecordNewMultiXact.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_RecordNewMultiXact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i64* }
%struct.TYPE_8__ = type { i32, i32 }

@MultiXactOffsetControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MultiXactOffsetCtl = common dso_local global %struct.TYPE_9__* null, align 8
@MultiXactMemberControlLock = common dso_local global i32 0, align 4
@MultiXactStatusUpdate = common dso_local global i32 0, align 4
@MultiXactMemberCtl = common dso_local global %struct.TYPE_9__* null, align 8
@MXACT_MEMBER_BITS_PER_XACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.TYPE_8__*)* @RecordNewMultiXact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RecordNewMultiXact(i32 %0, i32 %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %21 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %22 = load i32, i32* @LW_EXCLUSIVE, align 4
  %23 = call i32 @LWLockAcquire(i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @MultiXactIdToOffsetPage(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @MultiXactIdToOffsetEntry(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactOffsetCtl, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @SimpleLruReadPage(%struct.TYPE_9__* %28, i32 %29, i32 1, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactOffsetCtl, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %13, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactOffsetCtl, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %57 = call i32 @LWLockRelease(i32 %56)
  %58 = load i32, i32* @MultiXactMemberControlLock, align 4
  %59 = load i32, i32* @LW_EXCLUSIVE, align 4
  %60 = call i32 @LWLockAcquire(i32 %58, i32 %59)
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %157, %4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %162

65:                                               ; preds = %61
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MultiXactStatusUpdate, align 4
  %73 = icmp sle i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @Assert(i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @MXOffsetToMemberPage(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @MXOffsetToMemberOffset(i32 %78)
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @MXOffsetToFlagsOffset(i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @MXOffsetToFlagsBitShift(i32 %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %65
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactMemberCtl, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @SimpleLruReadPage(%struct.TYPE_9__* %88, i32 %89, i32 1, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %87, %65
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactMemberCtl, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = inttoptr i64 %105 to i32*
  store i32* %106, i32** %15, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %15, align 8
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactMemberCtl, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = inttoptr i64 %125 to i32*
  store i32* %126, i32** %16, align 8
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* @MXACT_MEMBER_BITS_PER_XACT, align 4
  %130 = shl i32 1, %129
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* %18, align 4
  %133 = shl i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %17, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %17, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %18, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %17, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load i32*, i32** %16, align 8
  store i32 %147, i32* %148, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MultiXactMemberCtl, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 1, i32* %156, align 4
  br label %157

157:                                              ; preds = %93
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %61

162:                                              ; preds = %61
  %163 = load i32, i32* @MultiXactMemberControlLock, align 4
  %164 = call i32 @LWLockRelease(i32 %163)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @MultiXactIdToOffsetPage(i32) #1

declare dso_local i32 @MultiXactIdToOffsetEntry(i32) #1

declare dso_local i32 @SimpleLruReadPage(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MXOffsetToMemberPage(i32) #1

declare dso_local i32 @MXOffsetToMemberOffset(i32) #1

declare dso_local i32 @MXOffsetToFlagsOffset(i32) #1

declare dso_local i32 @MXOffsetToFlagsBitShift(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
