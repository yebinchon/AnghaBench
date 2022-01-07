; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_InsertItemW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comboex.c_COMBOEX_InsertItemW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@comboex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"COMBOBOXEX item structures broken. Please report!\0A\00", align 1
@CBEIF_TEXT = common dso_local global i32 0, align 4
@LPSTR_TEXTCALLBACKW = common dso_local global i8* null, align 8
@CBEIF_IMAGE = common dso_local global i32 0, align 4
@CBEIF_SELECTEDIMAGE = common dso_local global i32 0, align 4
@CBEIF_OVERLAY = common dso_local global i32 0, align 4
@CBEIF_INDENT = common dso_local global i32 0, align 4
@CBEIF_LPARAM = common dso_local global i32 0, align 4
@CB_INSERTSTRING = common dso_local global i32 0, align 4
@CBEN_INSERTITEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @COMBOEX_InsertItemW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBOEX_InsertItemW(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @comboex, align 4
  %14 = call i64 @TRACE_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = call i32 @COMBOEX_DumpInput(%struct.TYPE_17__* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %260

36:                                               ; preds = %29
  %37 = call i8* @Alloc(i32 48)
  %38 = bitcast i8* %37 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %7, align 8
  %39 = icmp ne %struct.TYPE_18__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %260

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 8
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %55, align 8
  br label %95

56:                                               ; preds = %41
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %10, align 8
  br label %64

64:                                               ; preds = %73, %56
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %70 = icmp ne %struct.TYPE_18__* %69, null
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i1 [ false, %64 ], [ %70, %68 ]
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %9, align 4
  br label %64

79:                                               ; preds = %71
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %81 = icmp ne %struct.TYPE_18__* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = call i32 @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = call i32 @Free(%struct.TYPE_18__* %84)
  store i32 -1, i32* %3, align 4
  br label %260

86:                                               ; preds = %79
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 8
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %91, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 8
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %94, align 8
  br label %95

95:                                               ; preds = %86, %47
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CBEIF_TEXT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %162

107:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 8
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @is_textW(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 8
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strlenW(i8* %116)
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %113, %107
  %119 = load i32, i32* %11, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %118
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i8* @Alloc(i32 %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 7
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 7
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %121
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %136 = call i32 @Free(%struct.TYPE_18__* %135)
  store i32 -1, i32* %3, align 4
  br label %260

137:                                              ; preds = %121
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 7
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 8
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @strcpyW(i8* %140, i8* %143)
  br label %156

145:                                              ; preds = %118
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 8
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** @LPSTR_TEXTCALLBACKW, align 8
  %150 = icmp eq i8* %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i8*, i8** @LPSTR_TEXTCALLBACKW, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 7
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %151, %145
  br label %156

156:                                              ; preds = %155, %137
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %156, %95
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CBEIF_IMAGE, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %169, %162
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @CBEIF_SELECTEDIMAGE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %182, %175
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @CBEIF_OVERLAY, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %195, %188
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @CBEIF_INDENT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %201
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %208, %201
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @CBEIF_LPARAM, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %214
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  br label %227

227:                                              ; preds = %221, %214
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 8
  %232 = load i32, i32* @comboex, align 4
  %233 = call i64 @TRACE_ON(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %237 = call i32 @COMBOEX_DumpItem(%struct.TYPE_18__* %236)
  br label %238

238:                                              ; preds = %235, %227
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @CB_INSERTSTRING, align 4
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %247 = ptrtoint %struct.TYPE_18__* %246 to i32
  %248 = call i32 @SendMessageW(i32 %241, i32 %242, i32 %245, i32 %247)
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %250 = call i32 @memset(%struct.TYPE_19__* %249, i32 0, i32 4)
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  store i32 -1, i32* %252, align 4
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %255 = call i32 @COMBOEX_CopyItem(%struct.TYPE_18__* %253, %struct.TYPE_19__* %254)
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %257 = load i32, i32* @CBEN_INSERTITEM, align 4
  %258 = call i32 @COMBOEX_NotifyItem(%struct.TYPE_16__* %256, i32 %257, %struct.TYPE_15__* %8)
  %259 = load i32, i32* %6, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %238, %134, %82, %40, %35
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @COMBOEX_DumpInput(%struct.TYPE_17__*) #1

declare dso_local i8* @Alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @Free(%struct.TYPE_18__*) #1

declare dso_local i64 @is_textW(i8*) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @COMBOEX_DumpItem(%struct.TYPE_18__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @COMBOEX_CopyItem(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @COMBOEX_NotifyItem(%struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
