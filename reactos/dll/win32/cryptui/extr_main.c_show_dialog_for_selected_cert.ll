; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_show_dialog_for_selected_cert.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_show_dialog_for_selected_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.hierarchy_data = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@IDC_CERTPATH = common dso_local global i32 0, align 4
@TVIF_HANDLE = common dso_local global i32 0, align 4
@TVIF_PARAM = common dso_local global i32 0, align 4
@TVM_GETNEXTITEM = common dso_local global i32 0, align 4
@TVGN_CARET = common dso_local global i32 0, align 4
@TVM_GETITEMW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TVM_DELETEITEM = common dso_local global i32 0, align 4
@TVI_ROOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @show_dialog_for_selected_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dialog_for_selected_cert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca %struct.hierarchy_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @IDC_CERTPATH, align 4
  %12 = call i32 @GetDlgItem(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = call i32 @memset(%struct.TYPE_13__* %4, i32 0, i32 56)
  %14 = load i32, i32* @TVIF_HANDLE, align 4
  %15 = load i32, i32* @TVIF_PARAM, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %20 = load i32, i32* @TVGN_CARET, align 4
  %21 = call i64 @SendMessageW(i32 %18, i32 %19, i32 %20, i32 0)
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 11
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @TVM_GETITEMW, align 4
  %25 = ptrtoint %struct.TYPE_13__* %4 to i32
  %26 = call i64 @SendMessageW(i32 %23, i32 %24, i32 0, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 11
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.hierarchy_data* @get_hierarchy_data_from_tree_item(i32 %27, i64 %29)
  store %struct.hierarchy_data* %30, %struct.hierarchy_data** %5, align 8
  %31 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @lparam_to_index(%struct.hierarchy_data* %31, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %127

37:                                               ; preds = %1
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %9, align 8
  %39 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %40 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 10
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %47 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %52 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %57 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_14__* @WTHelperGetProvSignerFromChain(i32* %45, i32 %50, i32 %55, i32 %60)
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %7, align 8
  %62 = call i32 @memset(%struct.TYPE_13__* %8, i32 0, i32 56)
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 56, i32* %63, align 4
  %64 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %65 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 9
  store i32 %68, i32* %69, align 4
  %70 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %71 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 8
  store i32 %74, i32* %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 7
  store i32 %82, i32* %83, align 4
  %84 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %85 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 6
  store i32 %88, i32* %89, align 8
  %90 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %91 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 5
  store i32 %94, i32* %95, align 4
  %96 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %97 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 4
  store i32 %100, i32* %101, align 8
  %102 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %103 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i32 %106, i32* %107, align 4
  %108 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %109 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i32 %112, i32* %113, align 8
  %114 = call i32 @CryptUIDlgViewCertificateW(%struct.TYPE_13__* %8, i64* %9)
  %115 = load i64, i64* %9, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %37
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @TVM_DELETEITEM, align 4
  %120 = load i64, i64* @TVI_ROOT, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i64 @SendMessageW(i32 %118, i32 %119, i32 0, i32 %121)
  %123 = load i32, i32* %2, align 4
  %124 = load %struct.hierarchy_data*, %struct.hierarchy_data** %5, align 8
  %125 = call i32 @show_cert_hierarchy(i32 %123, %struct.hierarchy_data* %124)
  br label %126

126:                                              ; preds = %117, %37
  br label %127

127:                                              ; preds = %126, %1
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local %struct.hierarchy_data* @get_hierarchy_data_from_tree_item(i32, i64) #1

declare dso_local i64 @lparam_to_index(%struct.hierarchy_data*, i32) #1

declare dso_local %struct.TYPE_14__* @WTHelperGetProvSignerFromChain(i32*, i32, i32, i32) #1

declare dso_local i32 @CryptUIDlgViewCertificateW(%struct.TYPE_13__*, i64*) #1

declare dso_local i32 @show_cert_hierarchy(i32, %struct.hierarchy_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
