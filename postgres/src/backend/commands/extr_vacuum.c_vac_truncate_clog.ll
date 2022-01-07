; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vac_truncate_clog.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vac_truncate_clog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@MyDatabaseId = common dso_local global i32 0, align 4
@DatabaseRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"some databases have not been vacuumed in over 2 billion transactions\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"You might have already suffered transaction-wraparound data loss.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @vac_truncate_clog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vac_truncate_clog(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = call i32 (...) @ReadNewTransactionId()
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @MyDatabaseId, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @MyDatabaseId, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @DatabaseRelationId, align 4
  %24 = load i32, i32* @AccessShareLock, align 4
  %25 = call i32 @table_open(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @table_beginscan_catalog(i32 %26, i32 0, i32* null)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %87, %4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ForwardScanDirection, align 4
  %31 = call i32* @heap_getnext(i32 %29, i32 %30)
  store i32* %31, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %88

33:                                               ; preds = %28
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @GETSTRUCT(i32* %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %17, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load volatile i32, i32* %39, align 4
  store i32 %40, i32* %18, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load volatile i32, i32* %42, align 4
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @TransactionIdIsNormal(i32 %44)
  %46 = call i32 @Assert(i32 %45)
  %47 = load i32, i32* %19, align 4
  %48 = call i32 @MultiXactIdIsValid(i32 %47)
  %49 = call i32 @Assert(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call i64 @TransactionIdPrecedes(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %33
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %19, align 4
  %57 = call i64 @MultiXactIdPrecedes(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %33
  store i32 1, i32* %15, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call i64 @TransactionIdPrecedes(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %16, align 4
  br label %77

66:                                               ; preds = %60
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @TransactionIdPrecedes(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* %18, align 4
  store i32 %72, i32* %5, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load volatile i32, i32* %74, align 4
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @MultiXactIdPrecedes(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* %19, align 4
  store i32 %83, i32* %6, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load volatile i32, i32* %85, align 4
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %82, %77
  br label %28

88:                                               ; preds = %28
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @table_endscan(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @AccessShareLock, align 4
  %93 = call i32 @table_close(i32 %91, i32 %92)
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load i32, i32* @WARNING, align 4
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %99 = call i32 @errdetail(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %100 = call i32 @ereport(i32 %97, i32 %99)
  br label %122

101:                                              ; preds = %88
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %122

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @AdvanceOldestCommitTsXid(i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @TruncateCLOG(i32 %108, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @TruncateCommitTs(i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @TruncateMultiXact(i32 %113, i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @SetTransactionIdLimit(i32 %116, i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @SetMultiXactIdLimit(i32 %119, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %105, %104, %96
  ret void
}

declare dso_local i32 @ReadNewTransactionId(...) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsNormal(i32) #1

declare dso_local i32 @MultiXactIdIsValid(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i64 @MultiXactIdPrecedes(i32, i32) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @AdvanceOldestCommitTsXid(i32) #1

declare dso_local i32 @TruncateCLOG(i32, i32) #1

declare dso_local i32 @TruncateCommitTs(i32) #1

declare dso_local i32 @TruncateMultiXact(i32, i32) #1

declare dso_local i32 @SetTransactionIdLimit(i32, i32) #1

declare dso_local i32 @SetMultiXactIdLimit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
