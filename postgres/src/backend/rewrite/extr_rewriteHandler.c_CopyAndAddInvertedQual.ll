; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteHandler.c_CopyAndAddInvertedQual.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteHandler.c_CopyAndAddInvertedQual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@PRS2_OLD_VARNO = common dso_local global i32 0, align 4
@CMD_INSERT = common dso_local global i64 0, align 8
@CMD_UPDATE = common dso_local global i64 0, align 8
@PRS2_NEW_VARNO = common dso_local global i32 0, align 4
@REPLACEVARS_CHANGE_VARNO = common dso_local global i32 0, align 4
@REPLACEVARS_SUBSTITUTE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, i32*, i32, i64)* @CopyAndAddInvertedQual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @CopyAndAddInvertedQual(%struct.TYPE_8__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32* @copyObject(i32* %11)
  store i32* %12, i32** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @acquireLocksOnSubLinks(i32* %14, %struct.TYPE_7__* %10)
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* @PRS2_OLD_VARNO, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ChangeVarNodes(i32* %16, i32 %17, i32 %18, i32 0)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @CMD_INSERT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @CMD_UPDATE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23, %4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @PRS2_NEW_VARNO, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rt_fetch(i32 %30, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @CMD_UPDATE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @REPLACEVARS_CHANGE_VARNO, align 4
  br label %45

43:                                               ; preds = %27
  %44 = load i32, i32* @REPLACEVARS_SUBSTITUTE_NULL, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32* @ReplaceVarsFromTargetList(i32* %28, i32 %29, i32 0, i32 %34, i32 %37, i32 %46, i32 %47, i32* %49)
  store i32* %50, i32** %9, align 8
  br label %51

51:                                               ; preds = %45, %23
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @AddInvertedQual(%struct.TYPE_8__* %52, i32* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %55
}

declare dso_local i32* @copyObject(i32*) #1

declare dso_local i32 @acquireLocksOnSubLinks(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ChangeVarNodes(i32*, i32, i32, i32) #1

declare dso_local i32* @ReplaceVarsFromTargetList(i32*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rt_fetch(i32, i32) #1

declare dso_local i32 @AddInvertedQual(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
