; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_varsup.c_SetTransactionIdLimit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_varsup.c_SetTransactionIdLimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64, i64, i64, i64, i64 }

@MaxTransactionId = common dso_local global i32 0, align 4
@FirstNormalTransactionId = common dso_local global i64 0, align 8
@autovacuum_freeze_max_age = common dso_local global i64 0, align 8
@XidGenLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_2__* null, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"transaction ID wrap limit is %u, limited by database with OID %u\00", align 1
@IsUnderPostmaster = common dso_local global i64 0, align 8
@InRecovery = common dso_local global i32 0, align 4
@PMSIGNAL_START_AUTOVAC_LAUNCHER = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"database \22%s\22 must be vacuumed within %u transactions\00", align 1
@.str.2 = private unnamed_addr constant [182 x i8] c"To avoid a database shutdown, execute a database-wide VACUUM in that database.\0AYou might also need to commit or roll back old prepared transactions, or drop stale replication slots.\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"database with OID %u must be vacuumed within %u transactions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetTransactionIdLimit(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @TransactionIdIsNormal(i64 %11)
  %13 = call i32 @Assert(i32 %12)
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* @MaxTransactionId, align 4
  %16 = ashr i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @FirstNormalTransactionId, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i64, i64* @FirstNormalTransactionId, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i64, i64* %8, align 8
  %28 = sub nsw i64 %27, 1000000
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @FirstNormalTransactionId, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* @FirstNormalTransactionId, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i64, i64* %7, align 8
  %38 = sub nsw i64 %37, 10000000
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @FirstNormalTransactionId, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* @FirstNormalTransactionId, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @autovacuum_freeze_max_age, align 8
  %49 = add nsw i64 %47, %48
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @FirstNormalTransactionId, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i64, i64* @FirstNormalTransactionId, align 8
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i32, i32* @XidGenLock, align 4
  %59 = load i32, i32* @LW_EXCLUSIVE, align 4
  %60 = call i32 @LWLockAcquire(i32 %58, i32 %59)
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @XidFromFullTransactionId(i32 %81)
  store i64 %82, i64* %9, align 8
  %83 = load i32, i32* @XidGenLock, align 4
  %84 = call i32 @LWLockRelease(i32 %83)
  %85 = load i32, i32* @DEBUG1, align 4
  %86 = load i64, i64* %8, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8*, i8** %4, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %87, i64 %89)
  %91 = call i32 @ereport(i32 %85, i32 %90)
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @TransactionIdFollowsOrEquals(i64 %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %57
  %97 = load i64, i64* @IsUnderPostmaster, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @InRecovery, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @PMSIGNAL_START_AUTOVAC_LAUNCHER, align 4
  %104 = call i32 @SendPostmasterSignal(i32 %103)
  br label %105

105:                                              ; preds = %102, %99, %96, %57
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @TransactionIdFollowsOrEquals(i64 %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %142

110:                                              ; preds = %105
  %111 = load i32, i32* @InRecovery, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %142, label %113

113:                                              ; preds = %110
  %114 = call i64 (...) @IsTransactionState()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8*, i8** %4, align 8
  %118 = call i8* @get_database_name(i8* %117)
  store i8* %118, i8** %10, align 8
  br label %120

119:                                              ; preds = %113
  store i8* null, i8** %10, align 8
  br label %120

120:                                              ; preds = %119, %116
  %121 = load i8*, i8** %10, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i32, i32* @WARNING, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %9, align 8
  %128 = sub nsw i64 %126, %127
  %129 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %125, i64 %128)
  %130 = call i32 @errhint(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.2, i64 0, i64 0))
  %131 = call i32 @ereport(i32 %124, i32 %130)
  br label %141

132:                                              ; preds = %120
  %133 = load i32, i32* @WARNING, align 4
  %134 = load i8*, i8** %4, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %9, align 8
  %137 = sub nsw i64 %135, %136
  %138 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* %134, i64 %137)
  %139 = call i32 @errhint(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.2, i64 0, i64 0))
  %140 = call i32 @ereport(i32 %133, i32 %139)
  br label %141

141:                                              ; preds = %132, %123
  br label %142

142:                                              ; preds = %141, %110, %105
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsNormal(i64) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i64) #1

declare dso_local i64 @TransactionIdFollowsOrEquals(i64, i64) #1

declare dso_local i32 @SendPostmasterSignal(i32) #1

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i8* @get_database_name(i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
