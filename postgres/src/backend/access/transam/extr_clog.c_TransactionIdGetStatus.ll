; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionIdGetStatus.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionIdGetStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8**, i32* }

@CLOG_BITS_PER_XACT = common dso_local global i32 0, align 4
@ClogCtl = common dso_local global %struct.TYPE_5__* null, align 8
@CLOG_XACT_BITMASK = common dso_local global i8 0, align 1
@CLogControlLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @TransactionIdGetStatus(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @TransactionIdToPage(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @TransactionIdToByte(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TransactionIdToBIndex(i32 %16)
  %18 = load i32, i32* @CLOG_BITS_PER_XACT, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ClogCtl, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @SimpleLruReadPage_ReadOnly(%struct.TYPE_5__* %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ClogCtl, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %38, %39
  %41 = load i8, i8* @CLOG_XACT_BITMASK, align 1
  %42 = sext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %11, align 1
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @GetLSNIndex(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ClogCtl, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @CLogControlLock, align 4
  %59 = call i32 @LWLockRelease(i32 %58)
  %60 = load i8, i8* %11, align 1
  ret i8 %60
}

declare dso_local i32 @TransactionIdToPage(i32) #1

declare dso_local i32 @TransactionIdToByte(i32) #1

declare dso_local i32 @TransactionIdToBIndex(i32) #1

declare dso_local i32 @SimpleLruReadPage_ReadOnly(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @GetLSNIndex(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
