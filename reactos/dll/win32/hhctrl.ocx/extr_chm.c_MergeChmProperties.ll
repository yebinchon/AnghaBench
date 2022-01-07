; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_MergeChmProperties.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_MergeChmProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HHWIN_PARAM_PROPERTIES = common dso_local global i32 0, align 4
@HHWIN_PARAM_STYLES = common dso_local global i32 0, align 4
@HHWIN_PARAM_EXSTYLES = common dso_local global i32 0, align 4
@HHWIN_PARAM_RECT = common dso_local global i32 0, align 4
@HHWIN_PARAM_NAV_WIDTH = common dso_local global i32 0, align 4
@HHWIN_PARAM_SHOWSTATE = common dso_local global i32 0, align 4
@HHWIN_PARAM_INFOTYPES = common dso_local global i32 0, align 4
@HHWIN_PARAM_TB_FLAGS = common dso_local global i32 0, align 4
@HHWIN_PARAM_EXPANSION = common dso_local global i32 0, align 4
@HHWIN_PARAM_TABPOS = common dso_local global i32 0, align 4
@HHWIN_PARAM_TABORDER = common dso_local global i32 0, align 4
@HHWIN_PARAM_HISTORY_COUNT = common dso_local global i32 0, align 4
@HHWIN_PARAM_CUR_TAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unsupported fsValidMembers fields: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MergeChmProperties(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HHWIN_PARAM_PROPERTIES, align 4
  %14 = load i32, i32* @HHWIN_PARAM_STYLES, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @HHWIN_PARAM_EXSTYLES, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @HHWIN_PARAM_RECT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @HHWIN_PARAM_NAV_WIDTH, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HHWIN_PARAM_SHOWSTATE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HHWIN_PARAM_INFOTYPES, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HHWIN_PARAM_TB_FLAGS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HHWIN_PARAM_EXPANSION, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @HHWIN_PARAM_TABPOS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @HHWIN_PARAM_TABORDER, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @HHWIN_PARAM_HISTORY_COUNT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @HHWIN_PARAM_CUR_TAB, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %12, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %8, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  br label %57

48:                                               ; preds = %3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = xor i32 %54, -1
  %56 = and i32 %51, %55
  br label %57

57:                                               ; preds = %48, %44
  %58 = phi i32 [ %47, %44 ], [ %56, %48 ]
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 152, i32* %76, align 4
  store i32 -1, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %64
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @HHWIN_PARAM_PROPERTIES, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 25
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 25
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @HHWIN_PARAM_STYLES, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 24
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 24
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @HHWIN_PARAM_EXSTYLES, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 23
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 23
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %99
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @HHWIN_PARAM_RECT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 22
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 22
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %110
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @HHWIN_PARAM_NAV_WIDTH, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 21
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 21
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %126, %121
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @HHWIN_PARAM_SHOWSTATE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 20
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 20
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %137, %132
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @HHWIN_PARAM_INFOTYPES, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 19
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 19
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %148, %143
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @HHWIN_PARAM_TB_FLAGS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 18
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 18
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %159, %154
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @HHWIN_PARAM_EXPANSION, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 17
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 17
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %170, %165
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @HHWIN_PARAM_TABPOS, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 16
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 16
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %181, %176
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @HHWIN_PARAM_TABORDER, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 15
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 15
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @memcpy(i32 %195, i32 %198, i32 4)
  br label %200

200:                                              ; preds = %192, %187
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @HHWIN_PARAM_HISTORY_COUNT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 14
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 14
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %205, %200
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @HHWIN_PARAM_CUR_TAB, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 13
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 13
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %216, %211
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 12
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 9
  %229 = call i8* @MergeChmString(i8* %225, i32* %228)
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 12
  store i8* %229, i8** %231, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 11
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 8
  %238 = call i8* @MergeChmString(i8* %234, i32* %237)
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 11
  store i8* %238, i8** %240, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 10
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 7
  %247 = call i8* @MergeChmString(i8* %243, i32* %246)
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 10
  store i8* %247, i8** %249, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 9
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 6
  %256 = call i8* @MergeChmString(i8* %252, i32* %255)
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 9
  store i8* %256, i8** %258, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 8
  %261 = load i8*, i8** %260, align 8
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 5
  %265 = call i8* @MergeChmString(i8* %261, i32* %264)
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 8
  store i8* %265, i8** %267, align 8
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 7
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 4
  %274 = call i8* @MergeChmString(i8* %270, i32* %273)
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 7
  store i8* %274, i8** %276, align 8
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 6
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 3
  %283 = call i8* @MergeChmString(i8* %279, i32* %282)
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 6
  store i8* %283, i8** %285, align 8
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 5
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 2
  %292 = call i8* @MergeChmString(i8* %288, i32* %291)
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 5
  store i8* %292, i8** %294, align 8
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 4
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  %301 = call i8* @MergeChmString(i8* %297, i32* %300)
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 4
  store i8* %301, i8** %303, align 8
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 3
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  %310 = call i8* @MergeChmString(i8* %306, i32* %309)
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 3
  store i8* %310, i8** %312, align 8
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @MergeChmString(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
