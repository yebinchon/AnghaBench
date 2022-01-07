; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_Refresh.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_Refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i32, i64, %struct.TYPE_16__*, i64, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }

@CDDS_PREPAINT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SYSTEM_FONT = common dso_local global i32 0, align 4
@COLOR_3DFACE = common dso_local global i32 0, align 4
@HP_HEADERITEM = common dso_local global i32 0, align 4
@HIS_NORMAL = common dso_local global i32 0, align 4
@HDS_FLAT = common dso_local global i32 0, align 4
@HDS_BUTTONS = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@BF_TOP = common dso_local global i32 0, align 4
@BF_LEFT = common dso_local global i32 0, align 4
@BF_BOTTOM = common dso_local global i32 0, align 4
@BF_SOFT = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@EDGE_ETCHED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CDRF_NOTIFYPOSTPAINT = common dso_local global i32 0, align 4
@CDDS_POSTPAINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32)* @HEADER_Refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HEADER_Refresh(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32* @GetWindowTheme(i32 %17)
  store i32* %18, i32** %13, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = call i32 @HEADER_SetItemBounds(%struct.TYPE_18__* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @GetClientRect(i32 %29, %struct.TYPE_17__* %7)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = load i32, i32* @CDDS_PREPAINT, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @HEADER_SendCtrlCustomDraw(%struct.TYPE_18__* %31, i32 %32, i32 %33, %struct.TYPE_17__* %7)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @ImageList_DragShowNolock(i32 %40)
  br label %42

42:                                               ; preds = %39, %26
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  br label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @SYSTEM_FONT, align 4
  %53 = call i64 @GetStockObject(i32 %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i64 [ %50, %47 ], [ %53, %51 ]
  store i64 %55, i64* %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @SelectObject(i32 %56, i64 %57)
  store i64 %58, i64* %6, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load i32*, i32** %13, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* @COLOR_3DFACE, align 4
  %68 = call i32 @GetSysColorBrush(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @FillRect(i32 %69, %struct.TYPE_17__* %7, i32 %70)
  br label %72

72:                                               ; preds = %66, %63, %54
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %75

75:                                               ; preds = %124, %72
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %76, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br label %86

86:                                               ; preds = %80, %75
  %87 = phi i1 [ false, %75 ], [ %85, %80 ]
  br i1 %87, label %88, label %127

88:                                               ; preds = %86
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @HEADER_OrderToIndex(%struct.TYPE_18__* %89, i64 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = call i64 @RectVisible(i32 %92, %struct.TYPE_17__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %88
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @HEADER_DrawItem(%struct.TYPE_18__* %103, i32 %104, i32 %105, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %102, %88
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %11, align 8
  br label %124

124:                                              ; preds = %114
  %125 = load i64, i64* %10, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %10, align 8
  br label %75

127:                                              ; preds = %86
  %128 = bitcast %struct.TYPE_17__* %8 to i8*
  %129 = bitcast %struct.TYPE_17__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 16, i1 false)
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  store i64 %130, i64* %131, align 8
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp sle i64 %132, %134
  br i1 %135, label %136, label %197

136:                                              ; preds = %127
  %137 = load i32, i32* %4, align 4
  %138 = call i64 @RectVisible(i32 %137, %struct.TYPE_17__* %8)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %197

140:                                              ; preds = %136
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %197

145:                                              ; preds = %140
  %146 = load i32*, i32** %13, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @HP_HEADERITEM, align 4
  %152 = load i32, i32* @HIS_NORMAL, align 4
  %153 = call i32 @DrawThemeBackground(i32* %149, i32 %150, i32 %151, i32 %152, %struct.TYPE_17__* %8, i32* null)
  br label %196

154:                                              ; preds = %145
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @HDS_FLAT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load i32, i32* @COLOR_3DFACE, align 4
  %163 = call i32 @GetSysColorBrush(i32 %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @FillRect(i32 %164, %struct.TYPE_17__* %8, i32 %165)
  br label %195

167:                                              ; preds = %154
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @HDS_BUTTONS, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %167
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @EDGE_RAISED, align 4
  %177 = load i32, i32* @BF_TOP, align 4
  %178 = load i32, i32* @BF_LEFT, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @BF_BOTTOM, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @BF_SOFT, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @BF_MIDDLE, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @DrawEdge(i32 %175, %struct.TYPE_17__* %8, i32 %176, i32 %185)
  br label %194

187:                                              ; preds = %167
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @EDGE_ETCHED, align 4
  %190 = load i32, i32* @BF_BOTTOM, align 4
  %191 = load i32, i32* @BF_MIDDLE, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @DrawEdge(i32 %188, %struct.TYPE_17__* %8, i32 %189, i32 %192)
  br label %194

194:                                              ; preds = %187, %174
  br label %195

195:                                              ; preds = %194, %161
  br label %196

196:                                              ; preds = %195, %148
  br label %197

197:                                              ; preds = %196, %140, %136, %127
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, -1
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @HEADER_DrawHotDivider(%struct.TYPE_18__* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %197
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i32, i32* @TRUE, align 4
  %213 = call i32 @ImageList_DragShowNolock(i32 %212)
  br label %214

214:                                              ; preds = %211, %206
  %215 = load i32, i32* %4, align 4
  %216 = load i64, i64* %6, align 8
  %217 = call i64 @SelectObject(i32 %215, i64 %216)
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @CDRF_NOTIFYPOSTPAINT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %214
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %224 = load i32, i32* @CDDS_POSTPAINT, align 4
  %225 = load i32, i32* %4, align 4
  %226 = call i32 @HEADER_SendCtrlCustomDraw(%struct.TYPE_18__* %223, i32 %224, i32 %225, %struct.TYPE_17__* %7)
  br label %227

227:                                              ; preds = %222, %214
  ret void
}

declare dso_local i32* @GetWindowTheme(i32) #1

declare dso_local i32 @HEADER_SetItemBounds(%struct.TYPE_18__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @HEADER_SendCtrlCustomDraw(%struct.TYPE_18__*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ImageList_DragShowNolock(i32) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @HEADER_OrderToIndex(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @RectVisible(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @HEADER_DrawItem(%struct.TYPE_18__*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DrawThemeBackground(i32*, i32, i32, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @DrawEdge(i32, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @HEADER_DrawHotDivider(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
