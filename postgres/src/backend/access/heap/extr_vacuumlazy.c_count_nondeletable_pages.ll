; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_count_nondeletable_pages.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_count_nondeletable_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@PREFETCH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"prefetch size must be power of 2\00", align 1
@InvalidBlockNumber = common dso_local global i32 0, align 4
@VACUUM_TRUNCATE_LOCK_CHECK_INTERVAL = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@elevel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"\22%s\22: suspending truncate due to conflicting lock request\00", align 1
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@vac_strategy = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @count_nondeletable_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_nondeletable_pages(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @INSTR_TIME_SET_CURRENT(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @PREFETCH_SIZE, align 4
  %25 = load i32, i32* @PREFETCH_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @StaticAssertStmt(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @InvalidBlockNumber, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %150, %119, %2
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %151

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = srem i32 %39, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @INSTR_TIME_SET_CURRENT(i32 %43)
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @INSTR_TIME_SUBTRACT(i32 %46, i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @INSTR_TIME_GET_MICROSEC(i32 %49)
  %51 = sdiv i32 %50, 1000
  %52 = load i32, i32* @VACUUM_TRUNCATE_LOCK_CHECK_INTERVAL, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %42
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @AccessExclusiveLock, align 4
  %57 = call i64 @LockHasWaitersRelation(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, i32* @elevel, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @RelationGetRelationName(i32 %61)
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = call i32 @ereport(i32 %60, i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %155

68:                                               ; preds = %54
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %42
  br label %71

71:                                               ; preds = %70, %38
  %72 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @PREFETCH_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = xor i32 %81, -1
  %83 = and i32 %79, %82
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %17, align 4
  br label %85

85:                                               ; preds = %95, %78
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @MAIN_FORKNUM, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @PrefetchBuffer(i32 %90, i32 %91, i32 %92)
  %94 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %85

98:                                               ; preds = %85
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %98, %71
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @MAIN_FORKNUM, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @RBM_NORMAL, align 4
  %105 = load i32, i32* @vac_strategy, align 4
  %106 = call i32 @ReadBufferExtended(i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %109 = call i32 @LockBuffer(i32 %107, i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @BufferGetPage(i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i64 @PageIsNew(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %100
  %116 = load i32, i32* %10, align 4
  %117 = call i64 @PageIsEmpty(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115, %100
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @UnlockReleaseBuffer(i32 %120)
  br label %32

122:                                              ; preds = %115
  store i32 0, i32* %13, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i64 @PageGetMaxOffsetNumber(i32 %123)
  store i64 %124, i64* %12, align 8
  %125 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %139, %122
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = icmp sle i64 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @PageGetItemId(i32 %131, i64 %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i64 @ItemIdIsUsed(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 1, i32* %13, align 4
  br label %142

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %11, align 8
  %141 = call i64 @OffsetNumberNext(i64 %140)
  store i64 %141, i64* %11, align 8
  br label %126

142:                                              ; preds = %137, %126
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @UnlockReleaseBuffer(i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  br label %155

150:                                              ; preds = %142
  br label %32

151:                                              ; preds = %32
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %147, %59
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @StaticAssertStmt(i32, i8*) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i32 @INSTR_TIME_GET_MICROSEC(i32) #1

declare dso_local i64 @LockHasWaitersRelation(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @PrefetchBuffer(i32, i32, i32) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i64 @PageIsEmpty(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @ItemIdIsUsed(i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
