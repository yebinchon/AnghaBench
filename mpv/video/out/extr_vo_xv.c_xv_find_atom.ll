; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_xv_find_atom.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_xv_find_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32 }

@None = common dso_local global i64 0, align 8
@XvGettable = common dso_local global i32 0, align 4
@XvSettable = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"XV_BRIGHTNESS\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"XV_CONTRAST\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"XV_SATURATION\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"XV_HUE\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"XV_RED_INTENSITY\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"red_intensity\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"XV_GREEN_INTENSITY\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"green_intensity\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"XV_BLUE_INTENSITY\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"blue_intensity\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"XV_ITURBT_709\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"XV_COLORSPACE\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"bt_709\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32, i8*, i32, i32*, i32*)* @xv_find_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xv_find_atom(%struct.vo* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.vo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i64, i64* @None, align 8
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.vo*, %struct.vo** %7, align 8
  %20 = getelementptr inbounds %struct.vo, %struct.vo* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.TYPE_6__* @XvQueryPortAttributes(i32 %23, i32 %24, i32* %14)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %15, align 8
  store i32 0, i32* %16, align 4
  br label %26

26:                                               ; preds = %215, %6
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i1 [ false, %26 ], [ %32, %30 ]
  br i1 %34, label %35, label %218

35:                                               ; preds = %33
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @XvGettable, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @XvSettable, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %17, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %17, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %214

53:                                               ; preds = %42
  %54 = load %struct.vo*, %struct.vo** %7, align 8
  %55 = getelementptr inbounds %struct.vo, %struct.vo* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @True, align 4
  %66 = call i64 @XInternAtom(i32 %58, i8* %64, i32 %65)
  store i64 %66, i64* %13, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %12, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* @None, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %213

84:                                               ; preds = %53
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %84
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %218

98:                                               ; preds = %93, %84
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %98
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  br label %218

112:                                              ; preds = %107, %98
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %112
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  br label %218

126:                                              ; preds = %121, %112
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %126
  %136 = load i8*, i8** %9, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  br label %218

140:                                              ; preds = %135, %126
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %143
  %153 = load i8*, i8** %9, align 8
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  br label %218

157:                                              ; preds = %152, %143
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %157
  %167 = load i8*, i8** %9, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  br label %218

171:                                              ; preds = %166, %157
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @strcmp(i8* %177, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %171
  %181 = load i8*, i8** %9, align 8
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  br label %218

185:                                              ; preds = %180, %171
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %185
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %194, %185
  %204 = load i8*, i8** %9, align 8
  %205 = call i32 @strcmp(i8* %204, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %203
  br label %218

208:                                              ; preds = %203, %194
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210
  %212 = load i64, i64* @None, align 8
  store i64 %212, i64* %13, align 8
  br label %215

213:                                              ; preds = %53
  br label %214

214:                                              ; preds = %213, %42
  br label %215

215:                                              ; preds = %214, %211
  %216 = load i32, i32* %16, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %16, align 4
  br label %26

218:                                              ; preds = %207, %184, %170, %156, %139, %125, %111, %97, %33
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %220 = call i32 @XFree(%struct.TYPE_6__* %219)
  %221 = load i64, i64* %13, align 8
  %222 = trunc i64 %221 to i32
  ret i32 %222
}

declare dso_local %struct.TYPE_6__* @XvQueryPortAttributes(i32, i32, i32*) #1

declare dso_local i64 @XInternAtom(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @XFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
