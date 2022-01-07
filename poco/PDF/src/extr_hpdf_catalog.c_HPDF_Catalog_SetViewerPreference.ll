; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_catalog.c_HPDF_Catalog_SetViewerPreference.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_catalog.c_HPDF_Catalog_SetViewerPreference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c" HPDF_Catalog_SetViewerPreference\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ViewerPreferences\00", align 1
@HPDF_DICT_ITEM_NOT_FOUND = common dso_local global i64 0, align 8
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_HIDE_TOOLBAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"HideToolbar\00", align 1
@HPDF_TRUE = common dso_local global i32 0, align 4
@HPDF_HIDE_MENUBAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"HideMenubar\00", align 1
@HPDF_HIDE_WINDOW_UI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"HideWindowUI\00", align 1
@HPDF_FIT_WINDOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"FitWindow\00", align 1
@HPDF_CENTER_WINDOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"CenterWindow\00", align 1
@HPDF_PRINT_SCALING_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"PrintScaling\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"None\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Catalog_SetViewerPreference(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = call i64 @HPDF_Dict_RemoveElement(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @HPDF_DICT_ITEM_NOT_FOUND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* @HPDF_OK, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %17, %11
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %3, align 8
  br label %205

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_12__* @HPDF_Dict_New(i32 %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %7, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %3, align 8
  br label %205

34:                                               ; preds = %21
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = call i64 @HPDF_Dict_Add(%struct.TYPE_12__* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* @HPDF_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %3, align 8
  br label %205

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @HPDF_HIDE_TOOLBAR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = load i32, i32* @HPDF_TRUE, align 4
  %50 = call i64 @HPDF_Dict_AddBoolean(%struct.TYPE_12__* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* @HPDF_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %3, align 8
  br label %205

55:                                               ; preds = %47
  br label %69

56:                                               ; preds = %42
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = call i64 @HPDF_Dict_RemoveElement(%struct.TYPE_12__* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* @HPDF_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @HPDF_DICT_ITEM_NOT_FOUND, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %3, align 8
  br label %205

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %56
  br label %69

69:                                               ; preds = %68, %55
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @HPDF_HIDE_MENUBAR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = load i32, i32* @HPDF_TRUE, align 4
  %77 = call i64 @HPDF_Dict_AddBoolean(%struct.TYPE_12__* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* @HPDF_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i64, i64* %6, align 8
  store i64 %81, i64* %3, align 8
  br label %205

82:                                               ; preds = %74
  br label %96

83:                                               ; preds = %69
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = call i64 @HPDF_Dict_RemoveElement(%struct.TYPE_12__* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* @HPDF_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @HPDF_DICT_ITEM_NOT_FOUND, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i64, i64* %6, align 8
  store i64 %93, i64* %3, align 8
  br label %205

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %83
  br label %96

96:                                               ; preds = %95, %82
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @HPDF_HIDE_WINDOW_UI, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = load i32, i32* @HPDF_TRUE, align 4
  %104 = call i64 @HPDF_Dict_AddBoolean(%struct.TYPE_12__* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* @HPDF_OK, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i64, i64* %6, align 8
  store i64 %108, i64* %3, align 8
  br label %205

109:                                              ; preds = %101
  br label %123

110:                                              ; preds = %96
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = call i64 @HPDF_Dict_RemoveElement(%struct.TYPE_12__* %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* @HPDF_OK, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @HPDF_DICT_ITEM_NOT_FOUND, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i64, i64* %6, align 8
  store i64 %120, i64* %3, align 8
  br label %205

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %110
  br label %123

123:                                              ; preds = %122, %109
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @HPDF_FIT_WINDOW, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = load i32, i32* @HPDF_TRUE, align 4
  %131 = call i64 @HPDF_Dict_AddBoolean(%struct.TYPE_12__* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* @HPDF_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i64, i64* %6, align 8
  store i64 %135, i64* %3, align 8
  br label %205

136:                                              ; preds = %128
  br label %150

137:                                              ; preds = %123
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = call i64 @HPDF_Dict_RemoveElement(%struct.TYPE_12__* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i64 %139, i64* %6, align 8
  %140 = load i64, i64* @HPDF_OK, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* @HPDF_DICT_ITEM_NOT_FOUND, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i64, i64* %6, align 8
  store i64 %147, i64* %3, align 8
  br label %205

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %137
  br label %150

150:                                              ; preds = %149, %136
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @HPDF_CENTER_WINDOW, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = load i32, i32* @HPDF_TRUE, align 4
  %158 = call i64 @HPDF_Dict_AddBoolean(%struct.TYPE_12__* %156, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  store i64 %158, i64* %6, align 8
  %159 = load i64, i64* @HPDF_OK, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i64, i64* %6, align 8
  store i64 %162, i64* %3, align 8
  br label %205

163:                                              ; preds = %155
  br label %177

164:                                              ; preds = %150
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %166 = call i64 @HPDF_Dict_RemoveElement(%struct.TYPE_12__* %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i64 %166, i64* %6, align 8
  %167 = load i64, i64* @HPDF_OK, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load i64, i64* %6, align 8
  %171 = load i64, i64* @HPDF_DICT_ITEM_NOT_FOUND, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i64, i64* %6, align 8
  store i64 %174, i64* %3, align 8
  br label %205

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175, %164
  br label %177

177:                                              ; preds = %176, %163
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @HPDF_PRINT_SCALING_NONE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %184 = call i64 @HPDF_Dict_AddName(%struct.TYPE_12__* %183, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i64 %184, i64* %6, align 8
  %185 = load i64, i64* @HPDF_OK, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i64, i64* %6, align 8
  store i64 %188, i64* %3, align 8
  br label %205

189:                                              ; preds = %182
  br label %203

190:                                              ; preds = %177
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %192 = call i64 @HPDF_Dict_RemoveElement(%struct.TYPE_12__* %191, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i64 %192, i64* %6, align 8
  %193 = load i64, i64* @HPDF_OK, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %190
  %196 = load i64, i64* %6, align 8
  %197 = load i64, i64* @HPDF_DICT_ITEM_NOT_FOUND, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i64, i64* %6, align 8
  store i64 %200, i64* %3, align 8
  br label %205

201:                                              ; preds = %195
  br label %202

202:                                              ; preds = %201, %190
  br label %203

203:                                              ; preds = %202, %189
  %204 = load i64, i64* @HPDF_OK, align 8
  store i64 %204, i64* %3, align 8
  br label %205

205:                                              ; preds = %203, %199, %187, %173, %161, %146, %134, %119, %107, %92, %80, %65, %53, %40, %28, %19
  %206 = load i64, i64* %3, align 8
  ret i64 %206
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Dict_RemoveElement(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.TYPE_12__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_12__*, i8*, %struct.TYPE_12__*) #1

declare dso_local i64 @HPDF_Dict_AddBoolean(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_12__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
