; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_SetMultiXactIdLimit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_SetMultiXactIdLimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i32, i64, i64, i64, i64, i64 }

@MaxMultiXactId = common dso_local global i32 0, align 4
@FirstMultiXactId = common dso_local global i64 0, align 8
@autovacuum_multixact_freeze_max_age = common dso_local global i64 0, align 8
@MultiXactGenLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MultiXactState = common dso_local global %struct.TYPE_2__* null, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"MultiXactId wrap limit is %u, limited by database with OID %u\00", align 1
@InRecovery = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i64 0, align 8
@PMSIGNAL_START_AUTOVAC_LAUNCHER = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"database \22%s\22 must be vacuumed before %u more MultiXactId is used\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"database \22%s\22 must be vacuumed before %u more MultiXactIds are used\00", align 1
@.str.3 = private unnamed_addr constant [182 x i8] c"To avoid a database shutdown, execute a database-wide VACUUM in that database.\0AYou might also need to commit or roll back old prepared transactions, or drop stale replication slots.\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"database with OID %u must be vacuumed before %u more MultiXactId is used\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"database with OID %u must be vacuumed before %u more MultiXactIds are used\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetMultiXactIdLimit(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @MultiXactIdIsValid(i64 %14)
  %16 = call i32 @Assert(i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @MaxMultiXactId, align 4
  %19 = ashr i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @FirstMultiXactId, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i64, i64* @FirstMultiXactId, align 8
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i64, i64* %10, align 8
  %31 = sub nsw i64 %30, 100
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @FirstMultiXactId, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @FirstMultiXactId, align 8
  %37 = load i64, i64* %9, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i64, i64* %9, align 8
  %41 = sub nsw i64 %40, 10000000
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @FirstMultiXactId, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64, i64* @FirstMultiXactId, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @autovacuum_multixact_freeze_max_age, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @FirstMultiXactId, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i64, i64* @FirstMultiXactId, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %56, %49
  %61 = load i32, i32* @MultiXactGenLock, align 4
  %62 = load i32, i32* @LW_EXCLUSIVE, align 4
  %63 = call i32 @LWLockAcquire(i32 %61, i32 %62)
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 7
  store i64 %64, i64* %66, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 6
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %11, align 8
  %85 = load i32, i32* @MultiXactGenLock, align 4
  %86 = call i32 @LWLockRelease(i32 %85)
  %87 = load i32, i32* @DEBUG1, align 4
  %88 = load i64, i64* %10, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %88, i8* %89)
  %91 = call i32 @ereport(i32 %87, i32 %90)
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %60
  br label %158

97:                                               ; preds = %60
  %98 = load i32, i32* @InRecovery, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @SetOffsetVacuumLimit(i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i64 @MultiXactIdPrecedes(i64 %105, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109, %97
  %113 = load i64, i64* @IsUnderPostmaster, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @PMSIGNAL_START_AUTOVAC_LAUNCHER, align 4
  %117 = call i32 @SendPostmasterSignal(i32 %116)
  br label %118

118:                                              ; preds = %115, %112, %109
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %11, align 8
  %121 = call i64 @MultiXactIdPrecedes(i64 %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %158

123:                                              ; preds = %118
  %124 = call i64 (...) @IsTransactionState()
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i8*, i8** %5, align 8
  %128 = call i8* @get_database_name(i8* %127)
  store i8* %128, i8** %13, align 8
  br label %130

129:                                              ; preds = %123
  store i8* null, i8** %13, align 8
  br label %130

130:                                              ; preds = %129, %126
  %131 = load i8*, i8** %13, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load i32, i32* @WARNING, align 4
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* %11, align 8
  %137 = sub nsw i64 %135, %136
  %138 = load i8*, i8** %13, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* %11, align 8
  %141 = sub nsw i64 %139, %140
  %142 = call i32 @errmsg_plural(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i64 %137, i8* %138, i64 %141)
  %143 = call i32 @errhint(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.3, i64 0, i64 0))
  %144 = call i32 @ereport(i32 %134, i32 %143)
  br label %157

145:                                              ; preds = %130
  %146 = load i32, i32* @WARNING, align 4
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %11, align 8
  %149 = sub nsw i64 %147, %148
  %150 = load i8*, i8** %5, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* %11, align 8
  %153 = sub nsw i64 %151, %152
  %154 = call i32 @errmsg_plural(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i64 %149, i8* %150, i64 %153)
  %155 = call i32 @errhint(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.3, i64 0, i64 0))
  %156 = call i32 @ereport(i32 %146, i32 %155)
  br label %157

157:                                              ; preds = %145, %133
  br label %158

158:                                              ; preds = %96, %157, %118
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MultiXactIdIsValid(i64) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i64, i8*) #1

declare dso_local i32 @SetOffsetVacuumLimit(i32) #1

declare dso_local i64 @MultiXactIdPrecedes(i64, i64) #1

declare dso_local i32 @SendPostmasterSignal(i32) #1

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i8* @get_database_name(i8*) #1

declare dso_local i32 @errmsg_plural(i8*, i8*, i64, i8*, i64) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
