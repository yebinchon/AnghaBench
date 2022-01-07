; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/reactos/extr_treelist.c_CallbackEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/reactos/extr_treelist.c_CallbackEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64*, i64* }
%struct.TYPE_14__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i64*, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@TVIF_HANDLE = common dso_local global i32 0, align 4
@TVIF_PARAM = common dso_local global i32 0, align 4
@TVIF_STATE = common dso_local global i32 0, align 4
@I_IMAGECALLBACK = common dso_local global i8* null, align 8
@I_CHILDRENCALLBACK = common dso_local global i32 0, align 4
@TVIF_TEXT = common dso_local global i32 0, align 4
@GWL_ID = common dso_local global i32 0, align 4
@TVN_GETDISPINFO = common dso_local global i32 0, align 4
@WM_NOTIFY = common dso_local global i32 0, align 4
@TVIF_IMAGE = common dso_local global i32 0, align 4
@TVIS_SELECTED = common dso_local global i32 0, align 4
@TVIF_SELECTEDIMAGE = common dso_local global i32 0, align 4
@TVIF_CHILDREN = common dso_local global i32 0, align 4
@TVIX_HASBUTTON = common dso_local global i32 0, align 4
@TVIX_VARBUTTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_14__*, i32, i32, i32*, i32*, i64**)* @CallbackEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CallbackEntry(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, i32* %4, i32* %5, i64** %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64**, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64** %6, i64*** %14, align 8
  %16 = load i32, i32* @TVIF_HANDLE, align 4
  %17 = load i32, i32* @TVIF_PARAM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @TVIF_STATE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %11, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 8
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store i32 -1, i32* %40, align 8
  %41 = load i8*, i8** @I_IMAGECALLBACK, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** @I_IMAGECALLBACK, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @I_CHILDRENCALLBACK, align 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @TVIF_TEXT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %7
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 7
  store i64* %71, i64** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 6
  store i32 1, i32* %75, align 8
  br label %92

76:                                               ; preds = %56
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 7
  store i64* %87, i64** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 6
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %76, %60
  br label %98

93:                                               ; preds = %7
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 7
  store i64* null, i64** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 6
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %93, %92
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @GWL_ID, align 4
  %108 = call i32 @GetWindowLong(i32 %106, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @TVN_GETDISPINFO, align 4
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = call i32 @UNLOCK(%struct.TYPE_12__* %114)
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @GetParent(i32 %118)
  %120 = load i32, i32* @WM_NOTIFY, align 4
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = ptrtoint %struct.TYPE_13__* %15 to i32
  %125 = call i32 @SendMessage(i32 %119, i32 %120, i32 %123, i32 %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %127 = call i32 @LOCK(%struct.TYPE_12__* %126)
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @TVIF_IMAGE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %98
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @TVIS_SELECTED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %12, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %139, %132
  br label %164

145:                                              ; preds = %98
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @TVIF_SELECTEDIMAGE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %145
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @TVIS_SELECTED, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %12, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %150
  br label %163

163:                                              ; preds = %162, %145
  br label %164

164:                                              ; preds = %163, %144
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @TVIF_CHILDREN, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %222

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  switch i32 %172, label %197 [
    i32 0, label %173
    i32 1, label %185
  ]

173:                                              ; preds = %169
  %174 = load i32, i32* @TVIX_HASBUTTON, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load i32, i32* @TVIX_VARBUTTON, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %221

185:                                              ; preds = %169
  %186 = load i32, i32* @TVIX_VARBUTTON, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load i32, i32* @TVIX_HASBUTTON, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %221

197:                                              ; preds = %169
  %198 = load i32, i32* @TVIX_VARBUTTON, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %197
  %208 = load i32, i32* @TVIX_HASBUTTON, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %220

213:                                              ; preds = %197
  %214 = load i32, i32* @TVIX_HASBUTTON, align 4
  %215 = xor i32 %214, -1
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %213, %207
  br label %221

221:                                              ; preds = %220, %185, %173
  br label %222

222:                                              ; preds = %221, %164
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @TVIF_TEXT, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 7
  %230 = load i64*, i64** %229, align 8
  %231 = load i64**, i64*** %14, align 8
  store i64* %230, i64** %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 7
  %234 = load i64*, i64** %233, align 8
  %235 = call i32 @str_len(i64* %234)
  %236 = load i32*, i32** %13, align 8
  store i32 %235, i32* %236, align 4
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %227, %222
  ret void
}

declare dso_local i32 @GetWindowLong(i32, i32) #1

declare dso_local i32 @UNLOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @LOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @str_len(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
