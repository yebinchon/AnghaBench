; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_WriteMTruncateXlogRec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_WriteMTruncateXlogRec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32 }

@SizeOfMultiXactTruncate = common dso_local global i32 0, align 4
@RM_MULTIXACT_ID = common dso_local global i32 0, align 4
@XLOG_MULTIXACT_TRUNCATE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*, i8*)* @WriteMTruncateXlogRec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteMTruncateXlogRec(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = call i32 (...) @XLogBeginInsert()
  %24 = bitcast %struct.TYPE_2__* %12 to i8*
  %25 = load i32, i32* @SizeOfMultiXactTruncate, align 4
  %26 = call i32 @XLogRegisterData(i8* %24, i32 %25)
  %27 = load i32, i32* @RM_MULTIXACT_ID, align 4
  %28 = load i32, i32* @XLOG_MULTIXACT_TRUNCATE_ID, align 4
  %29 = call i32 @XLogInsert(i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @XLogFlush(i32 %30)
  ret void
}

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @XLogFlush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
