; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseCMap.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_ParseCMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"cmap\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c" HPDF_TTFontDef_ParseCMap\0A\00", align 1
@HPDF_TTF_MISSING_TABLE = common dso_local global i32 0, align 4
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_TTF_INVALID_FOMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c" HPDF_TTFontDef_ParseCMap tables[%d] platformID=%u encodingID=%u format=%u offset=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" found microsoft unicode cmap.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c" found byte encoding cmap.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c" cannot found target cmap.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*)* @ParseCMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseCMap(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %4, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = call %struct.TYPE_10__* @FindTable(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %5, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %24 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HPDF_TTF_MISSING_TABLE, align 4
  %32 = call i64 @HPDF_SetError(i32 %30, i32 %31, i32 1)
  store i64 %32, i64* %2, align 8
  br label %235

33:                                               ; preds = %1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @HPDF_SEEK_SET, align 4
  %41 = call i64 @HPDF_Stream_Seek(i32 %36, i64 %39, i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @HPDF_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* %2, align 8
  br label %235

47:                                               ; preds = %33
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @GetUINT16(i32 %50, i64* %7)
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @HPDF_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @HPDF_Error_GetCode(i32 %60)
  store i64 %61, i64* %2, align 8
  br label %235

62:                                               ; preds = %47
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @HPDF_TTF_INVALID_FOMAT, align 4
  %70 = call i64 @HPDF_SetError(i32 %68, i32 %69, i32 0)
  store i64 %70, i64* %2, align 8
  br label %235

71:                                               ; preds = %62
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @GetUINT16(i32 %74, i64* %8)
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @HPDF_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @HPDF_Error_GetCode(i32 %84)
  store i64 %85, i64* %2, align 8
  br label %235

86:                                               ; preds = %71
  store i64 0, i64* %9, align 8
  br label %87

87:                                               ; preds = %198, %86
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %201

91:                                               ; preds = %87
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @GetUINT16(i32 %94, i64* %12)
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %6, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @GetUINT16(i32 %100, i64* %13)
  %102 = load i64, i64* %6, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %6, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @GetUINT32(i32 %106, i64* %15)
  %108 = load i64, i64* %6, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @HPDF_OK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %91
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @HPDF_Error_GetCode(i32 %116)
  store i64 %117, i64* %2, align 8
  br label %235

118:                                              ; preds = %91
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @HPDF_Stream_Tell(i32 %121)
  store i64 %122, i64* %16, align 8
  %123 = load i64, i64* %16, align 8
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @HPDF_Error_GetCode(i32 %128)
  store i64 %129, i64* %2, align 8
  br label %235

130:                                              ; preds = %118
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %15, align 8
  %138 = add nsw i64 %136, %137
  %139 = load i32, i32* @HPDF_SEEK_SET, align 4
  %140 = call i64 @HPDF_Stream_Seek(i32 %133, i64 %138, i32 %139)
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* @HPDF_OK, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %130
  %145 = load i64, i64* %6, align 8
  store i64 %145, i64* %2, align 8
  br label %235

146:                                              ; preds = %130
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @GetUINT16(i32 %149, i64* %14)
  store i64 %150, i64* %6, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* @HPDF_OK, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i64, i64* %6, align 8
  store i64 %155, i64* %2, align 8
  br label %235

156:                                              ; preds = %146
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %12, align 8
  %159 = load i64, i64* %13, align 8
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %15, align 8
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @HPDF_PTRACE(i8* %162)
  %164 = load i64, i64* %12, align 8
  %165 = icmp eq i64 %164, 3
  br i1 %165, label %166, label %174

166:                                              ; preds = %156
  %167 = load i64, i64* %13, align 8
  %168 = icmp eq i64 %167, 1
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load i64, i64* %14, align 8
  %171 = icmp eq i64 %170, 4
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i64, i64* %15, align 8
  store i64 %173, i64* %10, align 8
  br label %201

174:                                              ; preds = %169, %166, %156
  %175 = load i64, i64* %12, align 8
  %176 = icmp eq i64 %175, 1
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load i64, i64* %13, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load i64, i64* %14, align 8
  %182 = icmp eq i64 %181, 1
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i64, i64* %15, align 8
  store i64 %184, i64* %11, align 8
  br label %185

185:                                              ; preds = %183, %180, %177, %174
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i64, i64* %16, align 8
  %190 = load i32, i32* @HPDF_SEEK_SET, align 4
  %191 = call i64 @HPDF_Stream_Seek(i32 %188, i64 %189, i32 %190)
  store i64 %191, i64* %6, align 8
  %192 = load i64, i64* %6, align 8
  %193 = load i64, i64* @HPDF_OK, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %185
  %196 = load i64, i64* %6, align 8
  store i64 %196, i64* %2, align 8
  br label %235

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %9, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %9, align 8
  br label %87

201:                                              ; preds = %172, %87
  %202 = load i64, i64* %10, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %207 = load i64, i64* %10, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %207, %210
  %212 = call i64 @ParseCMAP_format4(%struct.TYPE_11__* %206, i64 %211)
  store i64 %212, i64* %6, align 8
  br label %233

213:                                              ; preds = %201
  %214 = load i64, i64* %11, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %213
  %217 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %219 = load i64, i64* %11, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %219, %222
  %224 = call i64 @ParseCMAP_format0(%struct.TYPE_11__* %218, i64 %223)
  store i64 %224, i64* %6, align 8
  br label %232

225:                                              ; preds = %213
  %226 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @HPDF_TTF_INVALID_FOMAT, align 4
  %231 = call i64 @HPDF_SetError(i32 %229, i32 %230, i32 0)
  store i64 %231, i64* %2, align 8
  br label %235

232:                                              ; preds = %216
  br label %233

233:                                              ; preds = %232, %204
  %234 = load i64, i64* %6, align 8
  store i64 %234, i64* %2, align 8
  br label %235

235:                                              ; preds = %233, %225, %195, %154, %144, %125, %113, %81, %65, %57, %45, %27
  %236 = load i64, i64* %2, align 8
  ret i64 %236
}

declare dso_local %struct.TYPE_10__* @FindTable(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_Stream_Seek(i32, i64, i32) #1

declare dso_local i64 @GetUINT16(i32, i64*) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @GetUINT32(i32, i64*) #1

declare dso_local i64 @HPDF_Stream_Tell(i32) #1

declare dso_local i64 @ParseCMAP_format4(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @ParseCMAP_format0(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
