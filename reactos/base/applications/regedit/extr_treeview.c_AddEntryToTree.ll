; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_AddEntryToTree.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_AddEntryToTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_4__ }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TVIF_TEXT = common dso_local global i32 0, align 4
@TVIF_IMAGE = common dso_local global i32 0, align 4
@TVIF_SELECTEDIMAGE = common dso_local global i32 0, align 4
@TVIF_CHILDREN = common dso_local global i32 0, align 4
@TVIF_PARAM = common dso_local global i32 0, align 4
@Image_Closed = common dso_local global i32 0, align 4
@Image_Open = common dso_local global i32 0, align 4
@TVI_LAST = common dso_local global i64 0, align 8
@TVI_FIRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32, i64, i64)* @AddEntryToTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @AddEntryToTree(i32 %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @RegQueryInfoKeyW(i64 %16, i32 0, i32 0, i32 0, i64* %10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %20, %15
  br label %22

22:                                               ; preds = %21, %5
  %23 = load i32, i32* @TVIF_TEXT, align 4
  %24 = load i32, i32* @TVIF_IMAGE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TVIF_SELECTEDIMAGE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @TVIF_CHILDREN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TVIF_PARAM, align 4
  %31 = or i32 %29, %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @wcslen(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @Image_Closed, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @Image_Open, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %48 = bitcast %struct.TYPE_4__* %47 to i8*
  %49 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 40, i1 false)
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %22
  %53 = load i64, i64* @TVI_LAST, align 8
  br label %56

54:                                               ; preds = %22
  %55 = load i64, i64* @TVI_FIRST, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i8* @TreeView_InsertItem(i32 %62, %struct.TYPE_5__* %12)
  ret i8* %63
}

declare dso_local i64 @RegQueryInfoKeyW(i64, i32, i32, i32, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wcslen(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @TreeView_InsertItem(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
