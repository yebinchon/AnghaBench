; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogRestorePoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogRestorePoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAXFNAMELEN = common dso_local global i32 0, align 4
@RM_XLOG_ID = common dso_local global i32 0, align 4
@XLOG_RESTORE_POINT = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"restore point \22%s\22 created at %X/%X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XLogRestorePoint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @GetCurrentTimestamp()
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @MAXFNAMELEN, align 4
  %11 = call i32 @strlcpy(i32 %8, i8* %9, i32 %10)
  %12 = call i32 (...) @XLogBeginInsert()
  %13 = bitcast %struct.TYPE_2__* %4 to i8*
  %14 = call i32 @XLogRegisterData(i8* %13, i32 8)
  %15 = load i32, i32* @RM_XLOG_ID, align 4
  %16 = load i32, i32* @XLOG_RESTORE_POINT, align 4
  %17 = call i32 @XLogInsert(i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @LOG, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 32
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %21, i32 %22)
  %24 = call i32 @ereport(i32 %18, i32 %23)
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
