; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_InitTreeViewItems.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_InitTreeViewItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__ }

@TVIF_TEXT = common dso_local global i32 0, align 4
@TVIF_IMAGE = common dso_local global i32 0, align 4
@TVIF_SELECTEDIMAGE = common dso_local global i32 0, align 4
@TVIF_CHILDREN = common dso_local global i32 0, align 4
@TVIF_PARAM = common dso_local global i32 0, align 4
@Image_Root = common dso_local global i8* null, align 8
@TVI_FIRST = common dso_local global i64 0, align 8
@TVI_ROOT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i32] [i32 72, i32 75, i32 69, i32 89, i32 95, i32 67, i32 76, i32 65, i32 83, i32 83, i32 69, i32 83, i32 95, i32 82, i32 79, i32 79, i32 84, i32 0], align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i32] [i32 72, i32 75, i32 69, i32 89, i32 95, i32 67, i32 85, i32 82, i32 82, i32 69, i32 78, i32 84, i32 95, i32 85, i32 83, i32 69, i32 82, i32 0], align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i32] [i32 72, i32 75, i32 69, i32 89, i32 95, i32 76, i32 79, i32 67, i32 65, i32 76, i32 95, i32 77, i32 65, i32 67, i32 72, i32 73, i32 78, i32 69, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i32] [i32 72, i32 75, i32 69, i32 89, i32 95, i32 85, i32 83, i32 69, i32 82, i32 83, i32 0], align 4
@HKEY_USERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i32] [i32 72, i32 75, i32 69, i32 89, i32 95, i32 67, i32 85, i32 82, i32 82, i32 69, i32 78, i32 84, i32 95, i32 67, i32 79, i32 78, i32 70, i32 73, i32 71, i32 0], align 4
@HKEY_CURRENT_CONFIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i32] [i32 72, i32 75, i32 69, i32 89, i32 95, i32 68, i32 89, i32 78, i32 95, i32 68, i32 65, i32 84, i32 65, i32 0], align 4
@HKEY_DYN_DATA = common dso_local global i32 0, align 4
@TVE_EXPAND = common dso_local global i32 0, align 4
@TVGN_CARET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @InitTreeViewItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitTreeViewItems(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @TVIF_TEXT, align 4
  %10 = load i32, i32* @TVIF_IMAGE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TVIF_SELECTEDIMAGE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @TVIF_CHILDREN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @TVIF_PARAM, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @wcslen(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 6
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** @Image_Root, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** @Image_Root, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 5, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %32 = bitcast %struct.TYPE_4__* %31 to i8*
  %33 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 40, i1 false)
  %34 = load i64, i64* @TVI_FIRST, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* @TVI_ROOT, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @TreeView_InsertItem(i32 %38, %struct.TYPE_5__* %7)
  store i64 %39, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %106

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %47 = call i32 @AddEntryToTree(i32 %44, i64 %45, i8* bitcast ([18 x i32]* @.str to i8*), i32 %46, i32 1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %106

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %55 = call i32 @AddEntryToTree(i32 %52, i64 %53, i8* bitcast ([18 x i32]* @.str.1 to i8*), i32 %54, i32 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %106

59:                                               ; preds = %51
  %60 = load i32, i32* %4, align 4
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %63 = call i32 @AddEntryToTree(i32 %60, i64 %61, i8* bitcast ([19 x i32]* @.str.2 to i8*), i32 %62, i32 1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %106

67:                                               ; preds = %59
  %68 = load i32, i32* %4, align 4
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* @HKEY_USERS, align 4
  %71 = call i32 @AddEntryToTree(i32 %68, i64 %69, i8* bitcast ([11 x i32]* @.str.3 to i8*), i32 %70, i32 1)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %106

75:                                               ; preds = %67
  %76 = load i32, i32* %4, align 4
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* @HKEY_CURRENT_CONFIG, align 4
  %79 = call i32 @AddEntryToTree(i32 %76, i64 %77, i8* bitcast ([20 x i32]* @.str.4 to i8*), i32 %78, i32 1)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %3, align 4
  br label %106

83:                                               ; preds = %75
  %84 = call i32 (...) @GetVersion()
  %85 = and i32 %84, -2147483648
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %4, align 4
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* @HKEY_DYN_DATA, align 4
  %91 = call i32 @AddEntryToTree(i32 %88, i64 %89, i8* bitcast ([14 x i32]* @.str.5 to i8*), i32 %90, i32 1)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %3, align 4
  br label %106

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i32, i32* %4, align 4
  %98 = load i64, i64* %8, align 8
  %99 = load i32, i32* @TVE_EXPAND, align 4
  %100 = call i32 @TreeView_Expand(i32 %97, i64 %98, i32 %99)
  %101 = load i32, i32* %4, align 4
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* @TVGN_CARET, align 4
  %104 = call i32 @TreeView_Select(i32 %101, i64 %102, i32 %103)
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %96, %93, %81, %73, %65, %57, %49, %41
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @wcslen(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @TreeView_InsertItem(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @AddEntryToTree(i32, i64, i8*, i32, i32) #1

declare dso_local i32 @GetVersion(...) #1

declare dso_local i32 @TreeView_Expand(i32, i64, i32) #1

declare dso_local i32 @TreeView_Select(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
