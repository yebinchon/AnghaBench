; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_show_cert_chain.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_show_cert_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hierarchy_data = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_23__, i32, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i8*, i8*, i64 }

@IDC_CERTPATH = common dso_local global i32 0, align 4
@TVM_SETIMAGELIST = common dso_local global i32 0, align 4
@TVSIL_NORMAL = common dso_local global i32 0, align 4
@TVI_LAST = common dso_local global i32 0, align 4
@TVIF_TEXT = common dso_local global i32 0, align 4
@TVIF_STATE = common dso_local global i32 0, align 4
@TVIF_IMAGE = common dso_local global i32 0, align 4
@TVIF_SELECTEDIMAGE = common dso_local global i32 0, align 4
@TVIF_PARAM = common dso_local global i32 0, align 4
@TVIS_EXPANDED = common dso_local global i8* null, align 8
@CERT_TRUST_IS_PARTIAL_CHAIN = common dso_local global i32 0, align 4
@TVM_INSERTITEMW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.hierarchy_data*)* @show_cert_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_cert_chain(i32 %0, %struct.hierarchy_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hierarchy_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  store i32 %0, i32* %3, align 4
  store %struct.hierarchy_data* %1, %struct.hierarchy_data** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IDC_CERTPATH, align 4
  %13 = call i32 @GetDlgItem(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.hierarchy_data*, %struct.hierarchy_data** %4, align 8
  %15 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.hierarchy_data*, %struct.hierarchy_data** %4, align 8
  %22 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hierarchy_data*, %struct.hierarchy_data** %4, align 8
  %27 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hierarchy_data*, %struct.hierarchy_data** %4, align 8
  %32 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_14__* @WTHelperGetProvSignerFromChain(i32* %20, i32 %25, i32 %30, i32 %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %6, align 8
  store i32* null, i32** %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @TVM_SETIMAGELIST, align 4
  %39 = load i32, i32* @TVSIL_NORMAL, align 4
  %40 = load %struct.hierarchy_data*, %struct.hierarchy_data** %4, align 8
  %41 = getelementptr inbounds %struct.hierarchy_data, %struct.hierarchy_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @SendMessageW(i32 %37, i32 %38, i32 %39, i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %161, %2
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %164

51:                                               ; preds = %48
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @get_cert_display_name(i32 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %160

64:                                               ; preds = %51
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32* %65, i32** %66, align 8
  %67 = load i32, i32* @TVI_LAST, align 4
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 %67, i32* %68, align 8
  %69 = load i32, i32* @TVIF_TEXT, align 4
  %70 = load i32, i32* @TVIF_STATE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @TVIF_IMAGE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @TVIF_SELECTEDIMAGE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @TVIF_PARAM, align 4
  %77 = or i32 %75, %76
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 6
  store i64 %81, i64* %84, align 8
  %85 = load i8*, i8** @TVIS_EXPANDED, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 5
  store i8* %85, i8** %88, align 8
  %89 = load i8*, i8** @TVIS_EXPANDED, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 4
  store i8* %89, i8** %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %114

95:                                               ; preds = %64
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = icmp ne %struct.TYPE_18__* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CERT_TRUST_IS_PARTIAL_CHAIN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %100, %95
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  store i32 2, i32* %113, align 4
  br label %137

114:                                              ; preds = %100, %64
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %114
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  br label %136

132:                                              ; preds = %114
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %132, %128
  br label %137

137:                                              ; preds = %136, %110
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 2
  store i32 %141, i32* %144, align 8
  %145 = load %struct.hierarchy_data*, %struct.hierarchy_data** %4, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @index_to_lparam(%struct.hierarchy_data* %145, i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 3
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @TVM_INSERTITEMW, align 4
  %154 = ptrtoint %struct.TYPE_13__* %10 to i32
  %155 = call i64 @SendMessageW(i32 %152, i32 %153, i32 0, i32 %154)
  %156 = inttoptr i64 %155 to i32*
  store i32* %156, i32** %8, align 8
  %157 = call i32 (...) @GetProcessHeap()
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @HeapFree(i32 %157, i32 0, i64 %158)
  br label %160

160:                                              ; preds = %137, %51
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %7, align 4
  br label %48

164:                                              ; preds = %48
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local %struct.TYPE_14__* @WTHelperGetProvSignerFromChain(i32*, i32, i32, i32) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @get_cert_display_name(i32) #1

declare dso_local i32 @index_to_lparam(%struct.hierarchy_data*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
