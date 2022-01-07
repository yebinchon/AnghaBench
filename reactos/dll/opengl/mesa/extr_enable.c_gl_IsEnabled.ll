; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_enable.c_gl_IsEnabled.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_enable.c_gl_IsEnabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32* }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@TEXTURE_1D = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@TEXTURE_2D = common dso_local global i32 0, align 4
@Q_BIT = common dso_local global i32 0, align 4
@R_BIT = common dso_local global i32 0, align 4
@S_BIT = common dso_local global i32 0, align 4
@T_BIT = common dso_local global i32 0, align 4
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"glIsEnabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_IsEnabled(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %342 [
    i32 193, label %7
    i32 192, label %12
    i32 191, label %17
    i32 190, label %22
    i32 189, label %22
    i32 188, label %22
    i32 187, label %22
    i32 186, label %22
    i32 185, label %22
    i32 182, label %32
    i32 181, label %37
    i32 180, label %42
    i32 179, label %47
    i32 177, label %52
    i32 166, label %57
    i32 174, label %62
    i32 173, label %62
    i32 172, label %62
    i32 171, label %62
    i32 170, label %62
    i32 169, label %62
    i32 168, label %62
    i32 167, label %62
    i32 165, label %73
    i32 164, label %78
    i32 175, label %83
    i32 183, label %88
    i32 163, label %93
    i32 162, label %98
    i32 161, label %103
    i32 160, label %108
    i32 159, label %113
    i32 158, label %118
    i32 157, label %123
    i32 156, label %128
    i32 155, label %133
    i32 154, label %138
    i32 153, label %143
    i32 152, label %148
    i32 151, label %153
    i32 150, label %158
    i32 149, label %163
    i32 148, label %168
    i32 147, label %173
    i32 146, label %178
    i32 145, label %183
    i32 143, label %188
    i32 139, label %193
    i32 138, label %198
    i32 140, label %203
    i32 141, label %208
    i32 142, label %213
    i32 137, label %218
    i32 136, label %223
    i32 135, label %228
    i32 134, label %242
    i32 132, label %256
    i32 131, label %270
    i32 130, label %284
    i32 129, label %298
    i32 128, label %312
    i32 144, label %317
    i32 184, label %322
    i32 176, label %327
    i32 133, label %332
    i32 178, label %337
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  br label %347

12:                                               ; preds = %2
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 18
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  br label %347

17:                                               ; preds = %2
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %347

22:                                               ; preds = %2, %2, %2, %2, %2, %2
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 190
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %347

32:                                               ; preds = %2
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 10
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %347

37:                                               ; preds = %2
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  br label %347

42:                                               ; preds = %2
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 12
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %3, align 4
  br label %347

47:                                               ; preds = %2
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %347

52:                                               ; preds = %2
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 11
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %3, align 4
  br label %347

57:                                               ; preds = %2
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %3, align 4
  br label %347

62:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 10
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %67, 174
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %3, align 4
  br label %347

73:                                               ; preds = %2
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 9
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %3, align 4
  br label %347

78:                                               ; preds = %2
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 9
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %3, align 4
  br label %347

83:                                               ; preds = %2
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  br label %347

88:                                               ; preds = %2
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %3, align 4
  br label %347

93:                                               ; preds = %2
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 17
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %3, align 4
  br label %347

98:                                               ; preds = %2
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 16
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %3, align 4
  br label %347

103:                                              ; preds = %2
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 15
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %3, align 4
  br label %347

108:                                              ; preds = %2
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 14
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %3, align 4
  br label %347

113:                                              ; preds = %2
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 13
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %3, align 4
  br label %347

118:                                              ; preds = %2
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 12
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %3, align 4
  br label %347

123:                                              ; preds = %2
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 11
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %3, align 4
  br label %347

128:                                              ; preds = %2
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %3, align 4
  br label %347

133:                                              ; preds = %2
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %3, align 4
  br label %347

138:                                              ; preds = %2
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %3, align 4
  br label %347

143:                                              ; preds = %2
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %3, align 4
  br label %347

148:                                              ; preds = %2
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %3, align 4
  br label %347

153:                                              ; preds = %2
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %3, align 4
  br label %347

158:                                              ; preds = %2
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %3, align 4
  br label %347

163:                                              ; preds = %2
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 7
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %3, align 4
  br label %347

168:                                              ; preds = %2
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %3, align 4
  br label %347

173:                                              ; preds = %2
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %3, align 4
  br label %347

178:                                              ; preds = %2
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %3, align 4
  br label %347

183:                                              ; preds = %2
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %3, align 4
  br label %347

188:                                              ; preds = %2
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %3, align 4
  br label %347

193:                                              ; preds = %2
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  store i32 %197, i32* %3, align 4
  br label %347

198:                                              ; preds = %2
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %3, align 4
  br label %347

203:                                              ; preds = %2
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  store i32 %207, i32* %3, align 4
  br label %347

208:                                              ; preds = %2
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %3, align 4
  br label %347

213:                                              ; preds = %2
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  store i32 %217, i32* %3, align 4
  br label %347

218:                                              ; preds = %2
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %3, align 4
  br label %347

223:                                              ; preds = %2
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %3, align 4
  br label %347

228:                                              ; preds = %2
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @TEXTURE_1D, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %228
  %237 = load i32, i32* @GL_TRUE, align 4
  br label %240

238:                                              ; preds = %228
  %239 = load i32, i32* @GL_FALSE, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  store i32 %241, i32* %3, align 4
  br label %347

242:                                              ; preds = %2
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @TEXTURE_2D, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %242
  %251 = load i32, i32* @GL_TRUE, align 4
  br label %254

252:                                              ; preds = %242
  %253 = load i32, i32* @GL_FALSE, align 4
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi i32 [ %251, %250 ], [ %253, %252 ]
  store i32 %255, i32* %3, align 4
  br label %347

256:                                              ; preds = %2
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @Q_BIT, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %256
  %265 = load i32, i32* @GL_TRUE, align 4
  br label %268

266:                                              ; preds = %256
  %267 = load i32, i32* @GL_FALSE, align 4
  br label %268

268:                                              ; preds = %266, %264
  %269 = phi i32 [ %265, %264 ], [ %267, %266 ]
  store i32 %269, i32* %3, align 4
  br label %347

270:                                              ; preds = %2
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @R_BIT, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %270
  %279 = load i32, i32* @GL_TRUE, align 4
  br label %282

280:                                              ; preds = %270
  %281 = load i32, i32* @GL_FALSE, align 4
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi i32 [ %279, %278 ], [ %281, %280 ]
  store i32 %283, i32* %3, align 4
  br label %347

284:                                              ; preds = %2
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @S_BIT, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %284
  %293 = load i32, i32* @GL_TRUE, align 4
  br label %296

294:                                              ; preds = %284
  %295 = load i32, i32* @GL_FALSE, align 4
  br label %296

296:                                              ; preds = %294, %292
  %297 = phi i32 [ %293, %292 ], [ %295, %294 ]
  store i32 %297, i32* %3, align 4
  br label %347

298:                                              ; preds = %2
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @T_BIT, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %298
  %307 = load i32, i32* @GL_TRUE, align 4
  br label %310

308:                                              ; preds = %298
  %309 = load i32, i32* @GL_FALSE, align 4
  br label %310

310:                                              ; preds = %308, %306
  %311 = phi i32 [ %307, %306 ], [ %309, %308 ]
  store i32 %311, i32* %3, align 4
  br label %347

312:                                              ; preds = %2
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* %3, align 4
  br label %347

317:                                              ; preds = %2
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  store i32 %321, i32* %3, align 4
  br label %347

322:                                              ; preds = %2
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  store i32 %326, i32* %3, align 4
  br label %347

327:                                              ; preds = %2
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  store i32 %331, i32* %3, align 4
  br label %347

332:                                              ; preds = %2
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %3, align 4
  br label %347

337:                                              ; preds = %2
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %3, align 4
  br label %347

342:                                              ; preds = %2
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %344 = load i32, i32* @GL_INVALID_ENUM, align 4
  %345 = call i32 @gl_error(%struct.TYPE_23__* %343, i32 %344, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %346 = load i32, i32* @GL_FALSE, align 4
  store i32 %346, i32* %3, align 4
  br label %347

347:                                              ; preds = %342, %337, %332, %327, %322, %317, %312, %310, %296, %282, %268, %254, %240, %223, %218, %213, %208, %203, %198, %193, %188, %183, %178, %173, %168, %163, %158, %153, %148, %143, %138, %133, %128, %123, %118, %113, %108, %103, %98, %93, %88, %83, %78, %73, %62, %57, %52, %47, %42, %37, %32, %22, %17, %12, %7
  %348 = load i32, i32* %3, align 4
  ret i32 %348
}

declare dso_local i32 @gl_error(%struct.TYPE_23__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
