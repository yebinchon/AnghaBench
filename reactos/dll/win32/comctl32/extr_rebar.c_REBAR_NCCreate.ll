; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_NCCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_NCCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"Strange info structure pointer *not* NULL\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@rebar = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"window=(%s) client=(%s) cs=(%d,%d %dx%d)\0A\00", align 1
@CLR_NONE = common dso_local global i8* null, align 8
@comctl32_color = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i64 0, align 8
@IDC_SIZEWE = common dso_local global i64 0, align 8
@IDC_SIZENS = common dso_local global i64 0, align 8
@IDC_SIZE = common dso_local global i64 0, align 8
@SYSTEM_FONT = common dso_local global i32 0, align 4
@NF_REQUERY = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@CCS_LAYOUT_MASK = common dso_local global i32 0, align 4
@CCS_TOP = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@SPI_GETNONCLIENTMETRICS = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__*)* @REBAR_NCCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_NCCreate(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_11__* @REBAR_GetInfoPtr(i32 %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %162

18:                                               ; preds = %2
  %19 = load i32, i32* @rebar, align 4
  %20 = call i64 @TRACE_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @GetWindowRect(i32 %23, i32* %7)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @GetClientRect(i32 %25, i32* %8)
  %27 = call i32 @wine_dbgstr_rect(i32* %7)
  %28 = call i32 @wine_dbgstr_rect(i32* %8)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %22, %18
  %43 = call %struct.TYPE_11__* @Alloc(i32 120)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = ptrtoint %struct.TYPE_11__* %45 to i32
  %47 = call i32 @SetWindowLongPtrW(i32 %44, i32 0, i32 %46)
  %48 = load i8*, i8** @CLR_NONE, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 18
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @CLR_NONE, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 17
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @comctl32_color, i32 0, i32 1), align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 16
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @comctl32_color, i32 0, i32 0), align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 15
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i32 -2, i32* %63, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  store i32 -1, i32* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 14
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @TRUE, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 13
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* @IDC_ARROW, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i8* @LoadCursorW(i32 0, i32 %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 12
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* @IDC_SIZEWE, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i8* @LoadCursorW(i32 0, i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 11
  store i8* %79, i8** %81, align 8
  %82 = load i64, i64* @IDC_SIZENS, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i8* @LoadCursorW(i32 0, i32 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* @IDC_SIZE, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i8* @LoadCursorW(i32 0, i32 %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 9
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 8
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @SYSTEM_FONT, align 4
  %95 = call i64 @GetStockObject(i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 6
  store i64 %95, i64* %97, align 8
  %98 = call i32 @DPA_Create(i32 8)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = load i32, i32* @NF_REQUERY, align 4
  %103 = call i32 @REBAR_NotifyFormat(%struct.TYPE_11__* %101, i32 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @WS_VISIBLE, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CCS_LAYOUT_MASK, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %42
  %123 = load i32, i32* @CCS_TOP, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %42
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @GWL_STYLE, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @SetWindowLongW(i32 %129, i32 %130, i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 16, i32* %135, align 8
  %136 = load i32, i32* @SPI_GETNONCLIENTMETRICS, align 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @SystemParametersInfoW(i32 %136, i32 %138, %struct.TYPE_12__* %9, i32 0)
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @FW_NORMAL, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %128
  %146 = load i64, i64* @FW_NORMAL, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %128
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %151 = call i64 @CreateFontIndirectW(%struct.TYPE_15__* %150)
  store i64 %151, i64* %10, align 8
  %152 = load i64, i64* %10, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 5
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 6
  store i64 %155, i64* %159, align 8
  br label %160

160:                                              ; preds = %154, %149
  %161 = load i32, i32* @TRUE, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %15
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.TYPE_11__* @REBAR_GetInfoPtr(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @GetWindowRect(i32, i32*) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wine_dbgstr_rect(i32*) #1

declare dso_local %struct.TYPE_11__* @Alloc(i32) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i8* @LoadCursorW(i32, i32) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @DPA_Create(i32) #1

declare dso_local i32 @REBAR_NotifyFormat(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @SetWindowLongW(i32, i32, i32) #1

declare dso_local i32 @SystemParametersInfoW(i32, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @CreateFontIndirectW(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
