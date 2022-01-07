; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_basebackup.c_SendBaseBackup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_basebackup.c_SendBaseBackup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8* }

@WALSNDSTATE_BACKUP = common dso_local global i32 0, align 4
@update_process_title = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"sending backup \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SendBaseBackup(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca [50 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @parse_basebackup_options(i32 %7, %struct.TYPE_6__* %3)
  %9 = load i32, i32* @WALSNDSTATE_BACKUP, align 4
  %10 = call i32 @WalSndSetState(i32 %9)
  %11 = load i64, i64* @update_process_title, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @snprintf(i8* %14, i32 50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %19 = call i32 @set_ps_display(i8* %18, i32 0)
  br label %20

20:                                               ; preds = %13, %1
  %21 = call i32 @perform_base_backup(%struct.TYPE_6__* %3)
  ret void
}

declare dso_local i32 @parse_basebackup_options(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @WalSndSetState(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @set_ps_display(i8*, i32) #1

declare dso_local i32 @perform_base_backup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
