; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_ContextMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_ContextMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"user32.dll\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"EDITMENU\00", align 1
@MF_BYPOSITION = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@ES_PASSWORD = common dso_local global i32 0, align 4
@CF_UNICODETEXT = common dso_local global i32 0, align 4
@EF_FOCUSED = common dso_local global i32 0, align 4
@TPM_LEFTALIGN = common dso_local global i32 0, align 4
@TPM_RIGHTBUTTON = common dso_local global i32 0, align 4
@TPM_RETURNCMD = common dso_local global i32 0, align 4
@TPM_NONOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i8*)* @EDIT_WM_ContextMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_WM_ContextMenu(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__, align 4
  %13 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @LoadMenuA(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @GetSubMenu(i32 %16, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @ORDER_UINT(i64 %24, i64 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @MF_BYPOSITION, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = call i64 @EDIT_EM_CanUndo(%struct.TYPE_12__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ES_READONLY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @MF_ENABLED, align 4
  br label %43

41:                                               ; preds = %32, %3
  %42 = load i32, i32* @MF_GRAYED, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = or i32 %28, %44
  %46 = call i32 @EnableMenuItem(i32 %27, i32 0, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MF_BYPOSITION, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %43
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ES_PASSWORD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ES_READONLY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @MF_ENABLED, align 4
  br label %71

69:                                               ; preds = %60, %53, %43
  %70 = load i32, i32* @MF_GRAYED, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = or i32 %48, %72
  %74 = call i32 @EnableMenuItem(i32 %47, i32 2, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @MF_BYPOSITION, align 4
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub nsw i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %71
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ES_PASSWORD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @MF_ENABLED, align 4
  br label %92

90:                                               ; preds = %81, %71
  %91 = load i32, i32* @MF_GRAYED, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = or i32 %76, %93
  %95 = call i32 @EnableMenuItem(i32 %75, i32 3, i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @MF_BYPOSITION, align 4
  %98 = load i32, i32* @CF_UNICODETEXT, align 4
  %99 = call i64 @IsClipboardFormatAvailable(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %92
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ES_READONLY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* @MF_ENABLED, align 4
  br label %112

110:                                              ; preds = %101, %92
  %111 = load i32, i32* @MF_GRAYED, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = or i32 %97, %113
  %115 = call i32 @EnableMenuItem(i32 %96, i32 4, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @MF_BYPOSITION, align 4
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %9, align 8
  %120 = sub nsw i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %112
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ES_READONLY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @MF_ENABLED, align 4
  br label %133

131:                                              ; preds = %122, %112
  %132 = load i32, i32* @MF_GRAYED, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = or i32 %117, %134
  %136 = call i32 @EnableMenuItem(i32 %116, i32 5, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @MF_BYPOSITION, align 4
  %139 = load i64, i64* %9, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %133
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %144 = call i64 @get_text_length(%struct.TYPE_12__* %143)
  %145 = icmp ne i64 %142, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %141, %133
  %147 = load i32, i32* @MF_ENABLED, align 4
  br label %150

148:                                              ; preds = %141
  %149 = load i32, i32* @MF_GRAYED, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = or i32 %138, %151
  %153 = call i32 @EnableMenuItem(i32 %137, i32 7, i32 %152)
  %154 = load i8*, i8** %5, align 8
  %155 = ptrtoint i8* %154 to i32
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i32 %155, i32* %156, align 4
  %157 = load i8*, i8** %6, align 8
  %158 = ptrtoint i8* %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i32 %158, i32* %159, align 4
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %196

163:                                              ; preds = %150
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %196

167:                                              ; preds = %163
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @GetClientRect(i32 %170, %struct.TYPE_10__* %13)
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %175, %177
  %179 = sdiv i32 %178, 2
  %180 = add nsw i32 %173, %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i32 %180, i32* %181, align 4
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %185, %187
  %189 = sdiv i32 %188, 2
  %190 = add nsw i32 %183, %189
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i32 %190, i32* %191, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ClientToScreen(i32 %194, %struct.TYPE_11__* %12)
  br label %196

196:                                              ; preds = %167, %163, %150
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @EF_FOCUSED, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %196
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @SetFocus(i32 %206)
  br label %208

208:                                              ; preds = %203, %196
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @TPM_LEFTALIGN, align 4
  %211 = load i32, i32* @TPM_RIGHTBUTTON, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @TPM_RETURNCMD, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @TPM_NONOTIFY, align 4
  %216 = or i32 %214, %215
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @TrackPopupMenu(i32 %209, i32 %216, i32 %218, i32 %220, i32 0, i32 %223, i32* null)
  store i64 %224, i64* %11, align 8
  %225 = load i64, i64* %11, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %208
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %229 = load i64, i64* %11, align 8
  %230 = call i32 @EDIT_ContextMenuCommand(%struct.TYPE_12__* %228, i64 %229)
  br label %231

231:                                              ; preds = %227, %208
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @DestroyMenu(i32 %232)
  ret void
}

declare dso_local i32 @LoadMenuA(i32, i8*) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @ORDER_UINT(i64, i64) #1

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #1

declare dso_local i64 @EDIT_EM_CanUndo(%struct.TYPE_12__*) #1

declare dso_local i64 @IsClipboardFormatAvailable(i32) #1

declare dso_local i64 @get_text_length(%struct.TYPE_12__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @SetFocus(i32) #1

declare dso_local i64 @TrackPopupMenu(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @EDIT_ContextMenuCommand(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @DestroyMenu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
