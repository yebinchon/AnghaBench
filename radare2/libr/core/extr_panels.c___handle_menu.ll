; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_menu.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32, %struct.TYPE_31__*, %struct.TYPE_33__** }
%struct.TYPE_31__ = type { i64, i64, %struct.TYPE_29__** }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_36__*)* }
%struct.TYPE_33__ = type { i64, i32 (%struct.TYPE_36__*)*, %struct.TYPE_33__**, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }

@PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dr PC=$$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__handle_menu(%struct.TYPE_36__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  store %struct.TYPE_35__* %12, %struct.TYPE_35__** %5, align 8
  %13 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  store %struct.TYPE_34__* %15, %struct.TYPE_34__** %6, align 8
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %17, align 8
  %19 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %18, i64 %23
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  store %struct.TYPE_33__* %25, %struct.TYPE_33__** %7, align 8
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %27, align 8
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %28, i64 %31
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  store %struct.TYPE_33__* %33, %struct.TYPE_33__** %8, align 8
  %34 = call i32 @r_cons_switchbuf(i32 0)
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %310 [
    i32 104, label %36
    i32 106, label %97
    i32 107, label %126
    i32 108, label %170
    i32 109, label %257
    i32 113, label %257
    i32 81, label %257
    i32 -1, label %257
    i32 36, label %277
    i32 32, label %280
    i32 13, label %280
    i32 10, label %280
    i32 9, label %286
    i32 90, label %289
    i32 58, label %292
    i32 63, label %296
    i32 34, label %299
  ]

36:                                               ; preds = %2
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %39, 2
  br i1 %40, label %41, label %93

41:                                               ; preds = %36
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %52, align 8
  br label %66

55:                                               ; preds = %41
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %60, 1
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %48
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %92

71:                                               ; preds = %66
  %72 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %75 = call i32 @__set_refresh_all(%struct.TYPE_36__* %74, i32 0, i32 0)
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %79, align 8
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %80, i64 %85
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_36__*)*, i32 (%struct.TYPE_36__*)** %88, align 8
  %90 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %91 = call i32 %89(%struct.TYPE_36__* %90)
  br label %92

92:                                               ; preds = %71, %66
  br label %96

93:                                               ; preds = %36
  %94 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %95 = call i32 @__del_menu(%struct.TYPE_36__* %94)
  br label %96

96:                                               ; preds = %93, %92
  br label %310

97:                                               ; preds = %2
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 1
  %105 = load i32 (%struct.TYPE_36__*)*, i32 (%struct.TYPE_36__*)** %104, align 8
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %107 = call i32 %105(%struct.TYPE_36__* %106)
  br label %125

108:                                              ; preds = %97
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 1
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  %117 = trunc i64 %116 to i32
  %118 = call i64 @R_MIN(i32 %112, i32 %117)
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %124 = call i32 @__update_menu_contents(%struct.TYPE_36__* %121, %struct.TYPE_34__* %122, %struct.TYPE_33__* %123)
  br label %125

125:                                              ; preds = %108, %102
  br label %310

126:                                              ; preds = %2
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %310

132:                                              ; preds = %126
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %134, align 8
  %136 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %135, i64 %140
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %141, align 8
  store %struct.TYPE_33__* %142, %struct.TYPE_33__** %9, align 8
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ugt i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %132
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, -1
  store i64 %151, i64* %149, align 8
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %153 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %155 = call i32 @__update_menu_contents(%struct.TYPE_36__* %152, %struct.TYPE_34__* %153, %struct.TYPE_33__* %154)
  br label %169

156:                                              ; preds = %132
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %167 = call i32 @__set_refresh_all(%struct.TYPE_36__* %166, i32 0, i32 0)
  br label %168

168:                                              ; preds = %161, %156
  br label %169

169:                                              ; preds = %168, %147
  br label %310

170:                                              ; preds = %2
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %193

175:                                              ; preds = %170
  %176 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %179, align 8
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = urem i64 %191, %186
  store i64 %192, i64* %190, align 8
  br label %310

193:                                              ; preds = %170
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %195, align 8
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %196, i64 %199
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %202, align 8
  %204 = icmp ne %struct.TYPE_33__** %203, null
  br i1 %204, label %205, label %218

205:                                              ; preds = %193
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %207, align 8
  %209 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %208, i64 %211
  %213 = load %struct.TYPE_33__*, %struct.TYPE_33__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %213, i32 0, i32 1
  %215 = load i32 (%struct.TYPE_36__*)*, i32 (%struct.TYPE_36__*)** %214, align 8
  %216 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %217 = call i32 %215(%struct.TYPE_36__* %216)
  br label %256

218:                                              ; preds = %193
  %219 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_31__*, %struct.TYPE_31__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %222, align 8
  %225 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_31__*, %struct.TYPE_31__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_31__*, %struct.TYPE_31__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = urem i64 %234, %229
  store i64 %235, i64* %233, align 8
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i32 0, i32 0
  store i32 1, i32* %237, align 8
  %238 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %239 = call i32 @__set_refresh_all(%struct.TYPE_36__* %238, i32 0, i32 0)
  %240 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %243, align 8
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %244, i64 %249
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %251, i32 0, i32 0
  %253 = load i32 (%struct.TYPE_36__*)*, i32 (%struct.TYPE_36__*)** %252, align 8
  %254 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %255 = call i32 %253(%struct.TYPE_36__* %254)
  br label %256

256:                                              ; preds = %218, %205
  br label %310

257:                                              ; preds = %2, %2, %2, %2
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp sgt i32 %262, 1
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %266 = call i32 @__del_menu(%struct.TYPE_36__* %265)
  br label %276

267:                                              ; preds = %257
  %268 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %269 = load i32, i32* @PANEL_MODE_DEFAULT, align 4
  %270 = call i32 @__set_mode(%struct.TYPE_36__* %268, i32 %269)
  %271 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %272 = call %struct.TYPE_30__* @__get_cur_panel(%struct.TYPE_35__* %271)
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_32__*, %struct.TYPE_32__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %274, i32 0, i32 0
  store i32 1, i32* %275, align 4
  br label %276

276:                                              ; preds = %267, %264
  br label %310

277:                                              ; preds = %2
  %278 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %279 = call i32 @r_core_cmd0(%struct.TYPE_36__* %278, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %310

280:                                              ; preds = %2, %2, %2
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %281, i32 0, i32 1
  %283 = load i32 (%struct.TYPE_36__*)*, i32 (%struct.TYPE_36__*)** %282, align 8
  %284 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %285 = call i32 %283(%struct.TYPE_36__* %284)
  br label %310

286:                                              ; preds = %2
  %287 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %288 = call i32 @__handle_tab_key(%struct.TYPE_36__* %287, i32 0)
  br label %310

289:                                              ; preds = %2
  %290 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %291 = call i32 @__handle_tab_key(%struct.TYPE_36__* %290, i32 1)
  br label %310

292:                                              ; preds = %2
  %293 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %294 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %295 = call i32 @__handlePrompt(%struct.TYPE_36__* %293, %struct.TYPE_35__* %294)
  br label %310

296:                                              ; preds = %2
  %297 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %298 = call i32 @__toggle_help(%struct.TYPE_36__* %297)
  br label %299

299:                                              ; preds = %2, %296
  %300 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %301 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %302 = call i32 @__get_panel(%struct.TYPE_35__* %301, i32 0)
  %303 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @__create_almighty(%struct.TYPE_36__* %300, i32 %302, i32 %305)
  %307 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %308 = load i32, i32* @PANEL_MODE_DEFAULT, align 4
  %309 = call i32 @__set_mode(%struct.TYPE_36__* %307, i32 %308)
  br label %310

310:                                              ; preds = %2, %299, %292, %289, %286, %280, %277, %276, %256, %175, %169, %131, %125, %96
  ret void
}

declare dso_local i32 @r_cons_switchbuf(i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @__del_menu(%struct.TYPE_36__*) #1

declare dso_local i64 @R_MIN(i32, i32) #1

declare dso_local i32 @__update_menu_contents(%struct.TYPE_36__*, %struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @__set_mode(%struct.TYPE_36__*, i32) #1

declare dso_local %struct.TYPE_30__* @__get_cur_panel(%struct.TYPE_35__*) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_36__*, i8*) #1

declare dso_local i32 @__handle_tab_key(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @__handlePrompt(%struct.TYPE_36__*, %struct.TYPE_35__*) #1

declare dso_local i32 @__toggle_help(%struct.TYPE_36__*) #1

declare dso_local i32 @__create_almighty(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @__get_panel(%struct.TYPE_35__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
