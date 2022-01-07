; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_SnapBuildExportSnapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_SnapBuildExportSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"cannot export a snapshot from within a transaction\00", align 1
@SavedResourceOwnerDuringExport = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"can only export one snapshot at a time\00", align 1
@CurrentResourceOwner = common dso_local global i64 0, align 8
@ExportInProgress = common dso_local global i32 0, align 4
@XACT_REPEATABLE_READ = common dso_local global i32 0, align 4
@XactIsoLevel = common dso_local global i32 0, align 4
@XactReadOnly = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"exported logical decoding snapshot: \22%s\22 with %u transaction ID\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"exported logical decoding snapshot: \22%s\22 with %u transaction IDs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SnapBuildExportSnapshot(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i64 (...) @IsTransactionOrTransactionBlock()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ERROR, align 4
  %9 = call i32 @elog(i32 %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i64, i64* @SavedResourceOwnerDuringExport, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @ERROR, align 4
  %15 = call i32 @elog(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* @CurrentResourceOwner, align 8
  store i64 %17, i64* @SavedResourceOwnerDuringExport, align 8
  store i32 1, i32* @ExportInProgress, align 4
  %18 = call i32 (...) @StartTransactionCommand()
  %19 = load i32, i32* @XACT_REPEATABLE_READ, align 4
  store i32 %19, i32* @XactIsoLevel, align 4
  store i32 1, i32* @XactReadOnly, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call %struct.TYPE_4__* @SnapBuildInitialSnapshot(i32* %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = call i8* @ExportSnapshot(%struct.TYPE_4__* %22)
  store i8* %23, i8** %4, align 8
  %24 = load i32, i32* @LOG, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @errmsg_plural(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %27, i8* %28, i32 %31)
  %33 = call i32 @ereport(i32 %24, i32 %32)
  %34 = load i8*, i8** %4, align 8
  ret i8* %34
}

declare dso_local i64 @IsTransactionOrTransactionBlock(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local %struct.TYPE_4__* @SnapBuildInitialSnapshot(i32*) #1

declare dso_local i8* @ExportSnapshot(%struct.TYPE_4__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_plural(i8*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
