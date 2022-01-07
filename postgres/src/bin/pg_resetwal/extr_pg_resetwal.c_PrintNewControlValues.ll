; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_resetwal/extr_pg_resetwal.c_PrintNewControlValues.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_resetwal/extr_pg_resetwal.c_PrintNewControlValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAXFNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\0A\0AValues to be changed:\0A\0A\00", align 1
@ControlFile = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@newXlogSegNo = common dso_local global i32 0, align 4
@WalSegSz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"First log segment after reset:        %s\0A\00", align 1
@set_mxid = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"NextMultiXactId:                      %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"OldestMultiXid:                       %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"OldestMulti's DB:                     %u\0A\00", align 1
@set_mxoff = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"NextMultiOffset:                      %u\0A\00", align 1
@set_oid = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"NextOID:                              %u\0A\00", align 1
@set_xid = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"NextXID:                              %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"OldestXID:                            %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"OldestXID's DB:                       %u\0A\00", align 1
@set_xid_epoch = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"NextXID epoch:                        %u\0A\00", align 1
@set_oldest_commit_ts_xid = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"oldestCommitTsXid:                    %u\0A\00", align 1
@set_newest_commit_ts_xid = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"newestCommitTsXid:                    %u\0A\00", align 1
@set_wal_segsize = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [42 x i8] c"Bytes per WAL segment:                %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PrintNewControlValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintNewControlValues() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @MAXFNAMELEN, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %1, align 8
  %6 = alloca i8, i64 %4, align 16
  store i64 %4, i64* %2, align 8
  %7 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 10), align 4
  %10 = load i32, i32* @newXlogSegNo, align 4
  %11 = load i32, i32* @WalSegSz, align 4
  %12 = call i32 @XLogFileName(i8* %6, i32 %9, i32 %10, i32 %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* %13, i8* %6)
  %15 = load i64, i64* @set_mxid, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %0
  %18 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 0), align 4
  %20 = call i32 (i8*, ...) @printf(i8* %18, i32 %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 1), align 4
  %23 = call i32 (i8*, ...) @printf(i8* %21, i32 %22)
  %24 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 2), align 4
  %26 = call i32 (i8*, ...) @printf(i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %0
  %28 = load i32, i32* @set_mxoff, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 3), align 4
  %33 = call i32 (i8*, ...) @printf(i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i64, i64* @set_oid, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 4), align 4
  %40 = call i32 (i8*, ...) @printf(i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i64, i64* @set_xid, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 9), align 4
  %47 = call i32 @XidFromFullTransactionId(i32 %46)
  %48 = call i32 (i8*, ...) @printf(i8* %45, i32 %47)
  %49 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 5), align 4
  %51 = call i32 (i8*, ...) @printf(i8* %49, i32 %50)
  %52 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 6), align 4
  %54 = call i32 (i8*, ...) @printf(i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %44, %41
  %56 = load i32, i32* @set_xid_epoch, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 9), align 4
  %61 = call i32 @EpochFromFullTransactionId(i32 %60)
  %62 = call i32 (i8*, ...) @printf(i8* %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i64, i64* @set_oldest_commit_ts_xid, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 7), align 4
  %69 = call i32 (i8*, ...) @printf(i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i64, i64* @set_newest_commit_ts_xid, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 1, i32 8), align 4
  %76 = call i32 (i8*, ...) @printf(i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i64, i64* @set_wal_segsize, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ControlFile, i32 0, i32 0), align 4
  %83 = call i32 (i8*, ...) @printf(i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @XLogFileName(i8*, i32, i32, i32) #2

declare dso_local i32 @XidFromFullTransactionId(i32) #2

declare dso_local i32 @EpochFromFullTransactionId(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
