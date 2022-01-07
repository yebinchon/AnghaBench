; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_DrawPart.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_DrawPart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i64, %struct.TYPE_14__, i32, i32 }

@BDR_SUNKENOUTER = common dso_local global i64 0, align 8
@SP_PANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"part bound %s\0A\00", align 1
@SBT_POPOUT = common dso_local global i32 0, align 4
@BDR_RAISEDOUTER = common dso_local global i64 0, align 8
@SBT_NOBORDERS = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@SBARS_SIZEGRIP = common dso_local global i32 0, align 4
@SP_GRIPPERPANE = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BF_ADJUST = common dso_local global i32 0, align 4
@DI_NORMAL = common dso_local global i32 0, align 4
@SBT_OWNERDRAW = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@WM_DRAWITEM = common dso_local global i32 0, align 4
@DT_NOPREFIX = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, %struct.TYPE_13__*, i32)* @STATUSBAR_DrawPart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @STATUSBAR_DrawPart(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = bitcast %struct.TYPE_14__* %9 to i8*
  %19 = bitcast %struct.TYPE_14__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  %20 = load i64, i64* @BDR_SUNKENOUTER, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @GetWindowTheme(i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* @SP_PANE, align 4
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = call i32 @wine_dbgstr_rect(%struct.TYPE_14__* %9)
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SBT_POPOUT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i64, i64* @BDR_RAISEDOUTER, align 8
  store i64 %35, i64* %10, align 8
  br label %45

36:                                               ; preds = %4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SBT_NOBORDERS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %43, %36
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GWL_STYLE, align 4
  %53 = call i32 @GetWindowLongW(i32 %51, i32 %52)
  %54 = load i32, i32* @SBARS_SIZEGRIP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %48
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62, %57
  %70 = load i32, i32* @SP_GRIPPERPANE, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %62, %48
  %72 = load i64, i64* %11, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @DrawThemeBackground(i64 %72, i32 %73, i32 %74, i32 0, %struct.TYPE_14__* %9, i32* null)
  br label %83

76:                                               ; preds = %45
  %77 = load i32, i32* %6, align 4
  %78 = load i64, i64* %10, align 8
  %79 = load i32, i32* @BF_RECT, align 4
  %80 = load i32, i32* @BF_ADJUST, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @DrawEdge(i32 %77, %struct.TYPE_14__* %9, i64 %78, i32 %81)
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %90, %92
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %6, align 4
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 2
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @DI_NORMAL, align 4
  %106 = call i32 @DrawIconEx(i32 %94, i64 %97, i32 %99, i32 %102, i32 %103, i32 %104, i32 0, i32 0, i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 2, %107
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %88, %83
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @SBT_OWNERDRAW, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %109
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @GWLP_ID, align 4
  %121 = call i32 @GetWindowLongPtrW(i32 %119, i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %8, align 4
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* %6, align 4
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  store i32 %129, i32* %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %132 = bitcast %struct.TYPE_14__* %131 to i8*
  %133 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 8 %133, i64 24, i1 false)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  store i64 %136, i64* %137, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @WM_DRAWITEM, align 4
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = ptrtoint %struct.TYPE_15__* %15 to i32
  %145 = call i32 @SendMessageW(i32 %140, i32 %141, i32 %143, i32 %144)
  br label %158

146:                                              ; preds = %109
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %148
  store i64 %151, i64* %149, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @SBT_NOBORDERS, align 4
  %157 = call i32 @DrawStatusTextW(i32 %152, %struct.TYPE_14__* %9, i64 %155, i32 %156)
  br label %158

158:                                              ; preds = %146, %116
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @GetWindowTheme(i32) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_14__*) #2

declare dso_local i32 @GetWindowLongW(i32, i32) #2

declare dso_local i32 @DrawThemeBackground(i64, i32, i32, i32, %struct.TYPE_14__*, i32*) #2

declare dso_local i32 @DrawEdge(i32, %struct.TYPE_14__*, i64, i32) #2

declare dso_local i32 @DrawIconEx(i32, i64, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #2

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #2

declare dso_local i32 @DrawStatusTextW(i32, %struct.TYPE_14__*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
