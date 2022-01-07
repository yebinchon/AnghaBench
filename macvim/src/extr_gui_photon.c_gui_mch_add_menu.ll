; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_add_menu.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_mch_add_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32*, i32, i32*, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32*, i64, i32* }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@NUL = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@Pt_ARG_TEXT_STRING = common dso_local global i32 0, align 4
@Pt_ARG_ACCEL_TEXT = common dso_local global i32 0, align 4
@Pt_ARG_ACCEL_KEY = common dso_local global i32 0, align 4
@Pt_ARG_POINTER = common dso_local global i32 0, align 4
@Pt_ARG_BUTTON_TYPE = common dso_local global i32 0, align 4
@Pt_MENU_RIGHT = common dso_local global %struct.TYPE_12__* null, align 8
@PtMenuButton = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@Pt_CB_ARM = common dso_local global i32 0, align 4
@gui_ph_handle_pulldown_menu = common dso_local global i32 0, align 4
@Pt_ARG_MENU_FLAGS = common dso_local global i32 0, align 4
@Pt_TRUE = common dso_local global %struct.TYPE_12__* null, align 8
@Pt_MENU_CHILD = common dso_local global i32 0, align 4
@PtMenu = common dso_local global i32 0, align 4
@Pt_CB_UNREALIZED = common dso_local global i32 0, align 4
@gui_ph_handle_menu_unrealized = common dso_local global i32 0, align 4
@Pk_KM_Alt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_add_menu(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 7
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %5, align 8
  %14 = load i32, i32* @MB_LEN_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca %struct.TYPE_12__, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @menu_is_menubar(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %176

27:                                               ; preds = %2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_12__* @vim_strchr(i32 %30, i8 signext 38)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %6, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i64 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 1
  %38 = bitcast %struct.TYPE_12__* %35 to i8*
  %39 = bitcast %struct.TYPE_12__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 8 %39, i64 64, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i64 1
  %41 = bitcast %struct.TYPE_12__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 8 bitcast (%struct.TYPE_12__* @NUL to i8*), i64 64, i1 false)
  br label %42

42:                                               ; preds = %34, %27
  store i32 0, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %45
  %47 = load i32, i32* @Pt_ARG_TEXT_STRING, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = call i32 @PtSetArg(i32* %46, i32 %47, %struct.TYPE_12__* %50, i32 0)
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %54
  %56 = load i32, i32* @Pt_ARG_ACCEL_TEXT, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = call i32 @PtSetArg(i32* %55, i32 %56, %struct.TYPE_12__* %59, i32 0)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = icmp ne %struct.TYPE_12__* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %42
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %66
  %68 = load i32, i32* @Pt_ARG_ACCEL_KEY, align 4
  %69 = call i32 @PtSetArg(i32* %67, i32 %68, %struct.TYPE_12__* %17, i32 0)
  br label %70

70:                                               ; preds = %63, %42
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %73
  %75 = load i32, i32* @Pt_ARG_POINTER, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = call i32 @PtSetArg(i32* %74, i32 %75, %struct.TYPE_12__* %76, i32 0)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = icmp ne %struct.TYPE_12__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %83
  %85 = load i32, i32* @Pt_ARG_BUTTON_TYPE, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Pt_MENU_RIGHT, align 8
  %87 = call i32 @PtSetArg(i32* %84, i32 %85, %struct.TYPE_12__* %86, i32 0)
  br label %88

88:                                               ; preds = %80, %70
  %89 = load i32, i32* @PtMenuButton, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = icmp eq %struct.TYPE_12__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 2), align 8
  br label %98

94:                                               ; preds = %88
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  br label %98

98:                                               ; preds = %94, %92
  %99 = phi i32* [ %93, %92 ], [ %97, %94 ]
  %100 = load i32, i32* %9, align 4
  %101 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %102 = call i8* @PtCreateWidget(i32 %89, i32* %99, i32 %100, i32* %101)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  store i32* %103, i32** %105, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @Pt_CB_ARM, align 4
  %110 = load i32, i32* @gui_ph_handle_pulldown_menu, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = call i32 @PtAddCallback(i32* %108, i32 %109, i32 %110, %struct.TYPE_12__* %111)
  store i32 0, i32* %9, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = icmp ne %struct.TYPE_12__* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %98
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %118
  %120 = load i32, i32* @Pt_ARG_MENU_FLAGS, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Pt_TRUE, align 8
  %122 = load i32, i32* @Pt_MENU_CHILD, align 4
  %123 = call i32 @PtSetArg(i32* %119, i32 %120, %struct.TYPE_12__* %121, i32 %122)
  br label %124

124:                                              ; preds = %115, %98
  %125 = load i32, i32* @PtMenu, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %131 = call i8* @PtCreateWidget(i32 %125, i32* %128, i32 %129, i32* %130)
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store i32* %132, i32** %134, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = icmp eq %struct.TYPE_12__* %135, null
  br i1 %136, label %137, label %160

137:                                              ; preds = %124
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* @Pt_CB_UNREALIZED, align 4
  %142 = load i32, i32* @gui_ph_handle_menu_unrealized, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = call i32 @PtAddCallback(i32* %140, i32 %141, i32 %142, %struct.TYPE_12__* %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %137
  %150 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 0), align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @tolower(i64 %153)
  %155 = load i32, i32* @Pk_KM_Alt, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %157 = load i32, i32* @gui_ph_handle_pulldown_menu, align 4
  %158 = call i32 @PtAddHotkeyHandler(i32* %150, i32 %154, i32 %155, i32 0, %struct.TYPE_12__* %156, i32 %157)
  br label %159

159:                                              ; preds = %149, %137
  br label %160

160:                                              ; preds = %159, %124
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @gui_ph_position_menu(i32* %163, i32 %166)
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %160
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @PtRealizeWidget(i32* %173)
  br label %175

175:                                              ; preds = %170, %160
  br label %197

176:                                              ; preds = %2
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @menu_is_popup(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %176
  %183 = load i32, i32* @PtMenu, align 4
  %184 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 0), align 8
  %185 = call i8* @PtCreateWidget(i32 %183, i32* %184, i32 0, i32* null)
  %186 = bitcast i8* %185 to i32*
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  store i32* %186, i32** %188, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @Pt_CB_UNREALIZED, align 4
  %193 = load i32, i32* @gui_ph_handle_menu_unrealized, align 4
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %195 = call i32 @PtAddCallback(i32* %191, i32 %192, i32 %193, %struct.TYPE_12__* %194)
  br label %196

196:                                              ; preds = %182, %176
  br label %197

197:                                              ; preds = %196, %175
  %198 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %198)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @menu_is_menubar(i32) #2

declare dso_local %struct.TYPE_12__* @vim_strchr(i32, i8 signext) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @PtSetArg(i32*, i32, %struct.TYPE_12__*, i32) #2

declare dso_local i8* @PtCreateWidget(i32, i32*, i32, i32*) #2

declare dso_local i32 @PtAddCallback(i32*, i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @PtAddHotkeyHandler(i32*, i32, i32, i32, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @tolower(i64) #2

declare dso_local i32 @gui_ph_position_menu(i32*, i32) #2

declare dso_local i32 @PtRealizeWidget(i32*) #2

declare dso_local i64 @menu_is_popup(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
