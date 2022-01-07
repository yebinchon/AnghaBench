; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/progman/extr_program.c_PROGRAM_AddProgram.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/progman/extr_program.c_PROGRAM_AddProgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32*, i64, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32, i32, i64, %struct.TYPE_11__* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@IDS_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@IDS_ERROR = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@LVIF_IMAGE = common dso_local global i32 0, align 4
@LVIF_TEXT = common dso_local global i32 0, align 4
@LVM_GETITEMCOUNT = common dso_local global i32 0, align 4
@LVM_INSERTITEMW = common dso_local global i32 0, align 4
@LVM_SETITEMPOSITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @PROGRAM_AddProgram(%struct.TYPE_12__* %0, i32 %1, i64 %2, i32 %3, i32 %4, i64 %5, i64 %6, i32 %7, i64 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_11__*, align 8
  %27 = alloca %struct.TYPE_11__*, align 8
  %28 = alloca %struct.TYPE_11__**, align 8
  %29 = alloca %struct.TYPE_11__*, align 8
  %30 = alloca %struct.TYPE_11__*, align 8
  %31 = alloca %struct.TYPE_11__*, align 8
  %32 = alloca %struct.TYPE_11__*, align 8
  %33 = alloca %struct.TYPE_13__, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %14, align 8
  store i32 %1, i32* %15, align 4
  store i64 %2, i64* %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i32 %7, i32* %21, align 4
  store i64 %8, i64* %22, align 8
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  %35 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %36 = call %struct.TYPE_11__* @Alloc(i32 %35, i32 96)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %26, align 8
  %37 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %38 = load i64, i64* %16, align 8
  %39 = call i32 @wcslen(i64 %38)
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call %struct.TYPE_11__* @Alloc(i32 %37, i32 %43)
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %31, align 8
  %45 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %46 = load i64, i64* %19, align 8
  %47 = call i32 @wcslen(i64 %46)
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call %struct.TYPE_11__* @Alloc(i32 %45, i32 %51)
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %29, align 8
  %53 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %54 = load i64, i64* %20, align 8
  %55 = call i32 @wcslen(i64 %54)
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call %struct.TYPE_11__* @Alloc(i32 %53, i32 %59)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %30, align 8
  %61 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %62 = load i64, i64* %22, align 8
  %63 = call i32 @wcslen(i64 %62)
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call %struct.TYPE_11__* @Alloc(i32 %61, i32 %67)
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %32, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %12
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %73 = icmp ne %struct.TYPE_11__* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %79 = icmp ne %struct.TYPE_11__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %82 = icmp ne %struct.TYPE_11__* %81, null
  br i1 %82, label %118, label %83

83:                                               ; preds = %80, %77, %74, %71, %12
  %84 = load i32, i32* @IDS_OUT_OF_MEMORY, align 4
  %85 = load i32, i32* @IDS_ERROR, align 4
  %86 = load i32, i32* @MB_OK, align 4
  %87 = call i32 @MAIN_MessageBoxIDS(i32 %84, i32 %85, i32 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %89 = icmp ne %struct.TYPE_11__* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %92 = call i32 @Free(%struct.TYPE_11__* %91)
  br label %93

93:                                               ; preds = %90, %83
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %95 = icmp ne %struct.TYPE_11__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %98 = call i32 @Free(%struct.TYPE_11__* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %101 = icmp ne %struct.TYPE_11__* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %104 = call i32 @Free(%struct.TYPE_11__* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %107 = icmp ne %struct.TYPE_11__* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %110 = call i32 @Free(%struct.TYPE_11__* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %113 = icmp ne %struct.TYPE_11__* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %116 = call i32 @Free(%struct.TYPE_11__* %115)
  br label %117

117:                                              ; preds = %114, %111
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  br label %266

118:                                              ; preds = %80
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %16, align 8
  %122 = call i32 @wcslen(i64 %121)
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memcpy(%struct.TYPE_11__* %119, i64 %120, i32 %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %19, align 8
  %131 = call i32 @wcslen(i64 %130)
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = call i32 @memcpy(%struct.TYPE_11__* %128, i64 %129, i32 %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %138 = load i64, i64* %20, align 8
  %139 = load i64, i64* %20, align 8
  %140 = call i32 @wcslen(i64 %139)
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call i32 @memcpy(%struct.TYPE_11__* %137, i64 %138, i32 %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %147 = load i64, i64* %22, align 8
  %148 = load i64, i64* %22, align 8
  %149 = call i32 @wcslen(i64 %148)
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 4
  %153 = trunc i64 %152 to i32
  %154 = call i32 @memcpy(%struct.TYPE_11__* %146, i64 %147, i32 %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  store %struct.TYPE_11__* %155, %struct.TYPE_11__** %157, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %27, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  store %struct.TYPE_11__** %159, %struct.TYPE_11__*** %28, align 8
  br label %160

160:                                              ; preds = %167, %118
  %161 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %28, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = icmp ne %struct.TYPE_11__* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %28, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  store %struct.TYPE_11__* %166, %struct.TYPE_11__** %27, align 8
  br label %167

167:                                              ; preds = %164
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 12
  store %struct.TYPE_11__** %169, %struct.TYPE_11__*** %28, align 8
  br label %160

170:                                              ; preds = %160
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %172 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %28, align 8
  store %struct.TYPE_11__* %171, %struct.TYPE_11__** %172, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 14
  store %struct.TYPE_12__* %173, %struct.TYPE_12__** %175, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 13
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %178, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 12
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %180, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 11
  store %struct.TYPE_11__* %181, %struct.TYPE_11__** %183, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 10
  store %struct.TYPE_11__* %184, %struct.TYPE_11__** %186, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 9
  store %struct.TYPE_11__* %187, %struct.TYPE_11__** %189, align 8
  %190 = load i32, i32* %21, align 4
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 8
  store %struct.TYPE_11__* %193, %struct.TYPE_11__** %195, align 8
  %196 = load i32, i32* %15, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %24, align 4
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* %23, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %25, align 4
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 6
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 5
  store i64 0, i64* %209, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 4
  store i32* null, i32** %211, align 8
  %212 = call i32 @ZeroMemory(%struct.TYPE_13__* %33, i32 32)
  %213 = load i32, i32* @LVIF_PARAM, align 4
  %214 = load i32, i32* @LVIF_IMAGE, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @LVIF_TEXT, align 4
  %217 = or i32 %215, %216
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  store i32 %217, i32* %218, align 8
  %219 = load i64, i64* %16, align 8
  %220 = inttoptr i64 %219 to %struct.TYPE_11__*
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 4
  store %struct.TYPE_11__* %220, %struct.TYPE_11__** %221, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %223 = ptrtoint %struct.TYPE_11__* %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  store i64 %223, i64* %224, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @ImageList_ReplaceIcon(i32 %227, i32 -1, i32 %228)
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  store i32 %229, i32* %230, align 8
  %231 = load i32, i32* %15, align 4
  %232 = call i32 @DestroyIcon(i32 %231)
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @LVM_GETITEMCOUNT, align 4
  %237 = call i32 @SendMessageA(i32 %235, i32 %236, i32 0, i32 0)
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  store i32 %237, i32* %238, align 4
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @LVM_INSERTITEMW, align 4
  %243 = ptrtoint %struct.TYPE_13__* %33 to i64
  %244 = call i32 @SendMessageW(i32 %241, i32 %242, i32 0, i64 %243)
  store i32 %244, i32* %34, align 4
  %245 = load i32, i32* %34, align 4
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %17, align 4
  %249 = icmp ne i32 %248, -1
  br i1 %249, label %250, label %264

250:                                              ; preds = %170
  %251 = load i32, i32* %18, align 4
  %252 = icmp ne i32 %251, -1
  br i1 %252, label %253, label %264

253:                                              ; preds = %250
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @LVM_SETITEMPOSITION, align 4
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* %18, align 4
  %262 = call i32 @MAKELPARAM(i32 %260, i32 %261)
  %263 = call i32 @SendMessageA(i32 %256, i32 %257, i32 %259, i32 %262)
  br label %264

264:                                              ; preds = %253, %250, %170
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %265, %struct.TYPE_11__** %13, align 8
  br label %266

266:                                              ; preds = %264, %117
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  ret %struct.TYPE_11__* %267
}

declare dso_local %struct.TYPE_11__* @Alloc(i32, i32) #1

declare dso_local i32 @wcslen(i64) #1

declare dso_local i32 @MAIN_MessageBoxIDS(i32, i32, i32) #1

declare dso_local i32 @Free(%struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ImageList_ReplaceIcon(i32, i32, i32) #1

declare dso_local i32 @DestroyIcon(i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i64) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
