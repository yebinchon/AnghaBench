; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_find_tmpreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_find_tmpreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_stage_op = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@MAX_TEXTURES = common dso_local global i32 0, align 4
@WINED3D_TOP_DISABLE = common dso_local global i64 0, align 8
@WINED3DTA_TEMP = common dso_local global i64 0, align 8
@tempreg = common dso_local global i64 0, align 8
@WINED3DTA_TEXTURE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GL_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Temp register read before being written\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Temp register read without being written\0A\00", align 1
@GL_REG_1_ATI = common dso_local global i64 0, align 8
@GL_REG_0_ATI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Could not find a register for the temporary register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.texture_stage_op*)* @find_tmpreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_tmpreg(%struct.texture_stage_op* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.texture_stage_op*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.texture_stage_op* %0, %struct.texture_stage_op** %3, align 8
  %10 = load i32, i32* @MAX_TEXTURES, align 4
  %11 = zext i32 %10 to i64
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %12 = load i32, i32* @MAX_TEXTURES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = mul nuw i64 4, %13
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(i32* %15, i32 0, i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %166, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MAX_TEXTURES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %169

23:                                               ; preds = %19
  %24 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %24, i64 %26
  %28 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WINED3D_TOP_DISABLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %169

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %92

36:                                               ; preds = %33
  %37 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %37, i64 %39
  %41 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WINED3DTA_TEMP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %90, label %45

45:                                               ; preds = %36
  %46 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %46, i64 %48
  %50 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WINED3DTA_TEMP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %90, label %54

54:                                               ; preds = %45
  %55 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %55, i64 %57
  %59 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @WINED3DTA_TEMP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %90, label %63

63:                                               ; preds = %54
  %64 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %64, i64 %66
  %68 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @WINED3DTA_TEMP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %90, label %72

72:                                               ; preds = %63
  %73 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %73, i64 %75
  %77 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @WINED3DTA_TEMP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %90, label %81

81:                                               ; preds = %72
  %82 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %82, i64 %84
  %86 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @WINED3DTA_TEMP, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %81, %72, %63, %54, %45, %36
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %81, %33
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %96, i64 %98
  %100 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @tempreg, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %95, %92
  %107 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %107, i64 %109
  %111 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %160, label %115

115:                                              ; preds = %106
  %116 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %116, i64 %118
  %120 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %160, label %124

124:                                              ; preds = %115
  %125 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %125, i64 %127
  %129 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %160, label %133

133:                                              ; preds = %124
  %134 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %134, i64 %136
  %138 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %160, label %142

142:                                              ; preds = %133
  %143 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %143, i64 %145
  %147 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %142
  %152 = load %struct.texture_stage_op*, %struct.texture_stage_op** %3, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %152, i64 %154
  %156 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %151, %142, %133, %124, %115, %106
  %161 = load i32, i32* @TRUE, align 4
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %15, i64 %163
  store i32 %161, i32* %164, align 4
  br label %165

165:                                              ; preds = %160, %151
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %19

169:                                              ; preds = %32, %19
  %170 = load i32, i32* %4, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i64, i64* @GL_NONE, align 8
  store i64 %173, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %212

174:                                              ; preds = %169
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* %4, align 4
  %177 = icmp sge i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = call i32 @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %174
  %181 = load i32, i32* %5, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = call i32 @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %185 = load i64, i64* @GL_REG_1_ATI, align 8
  store i64 %185, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %212

186:                                              ; preds = %180
  %187 = load i32, i32* %5, align 4
  %188 = icmp sge i32 %187, 1
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i64, i64* @GL_REG_1_ATI, align 8
  store i64 %190, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %212

191:                                              ; preds = %186
  store i32 1, i32* %6, align 4
  br label %192

192:                                              ; preds = %207, %191
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %193, 6
  br i1 %194, label %195, label %210

195:                                              ; preds = %192
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %15, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %195
  %202 = load i64, i64* @GL_REG_0_ATI, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %202, %204
  store i64 %205, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %212

206:                                              ; preds = %195
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %192

210:                                              ; preds = %192
  %211 = call i32 @FIXME(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  store i32 1, i32* %9, align 4
  br label %212

212:                                              ; preds = %210, %201, %189, %183, %172
  %213 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %213)
  %214 = load i64, i64* %2, align 8
  ret i64 %214
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @FIXME(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
