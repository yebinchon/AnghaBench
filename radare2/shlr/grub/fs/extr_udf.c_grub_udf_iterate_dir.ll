; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.grub_udf_file_ident = type { i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@GRUB_UDF_TAG_IDENT_FID = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid fid tag\00", align 1
@GRUB_UDF_FID_CHAR_PARENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@GRUB_UDF_FID_CHAR_DIRECTORY = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32 (i8*, i32, %struct.TYPE_12__*, i8*)*, i8*)* @grub_udf_iterate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_udf_iterate_dir(%struct.TYPE_12__* %0, i32 (i8*, i32, %struct.TYPE_12__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32 (i8*, i32, %struct.TYPE_12__*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.grub_udf_file_ident, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 (i8*, i32, %struct.TYPE_12__*, i8*)* %1, i32 (i8*, i32, %struct.TYPE_12__*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = call i8* @grub_malloc(i32 4)
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %8, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %235

25:                                               ; preds = %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = bitcast %struct.TYPE_12__* %26 to i8*
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = bitcast %struct.TYPE_12__* %28 to i8*
  %30 = call i32 @grub_memcpy(i8* %27, i8* %29, i32 4)
  %31 = load i32 (i8*, i32, %struct.TYPE_12__*, i8*)*, i32 (i8*, i32, %struct.TYPE_12__*, i8*)** %6, align 8
  %32 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 %31(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %32, %struct.TYPE_12__* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %235

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %225, %38
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @U64(i32 %44)
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %232

47:                                               ; preds = %39
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = bitcast %struct.grub_udf_file_ident* %9 to i8*
  %51 = call i32 @grub_udf_read_file(%struct.TYPE_12__* %48, i32 0, i32 0, i32 0, i32 %49, i32 20, i8* %50)
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 20
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %235

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @U16(i32 %58)
  %60 = load i64, i64* @GRUB_UDF_TAG_IDENT_FID, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %64 = call i32 @grub_error(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %235

65:                                               ; preds = %55
  %66 = call i8* @grub_malloc(i32 4)
  %67 = bitcast i8* %66 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %8, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = icmp ne %struct.TYPE_12__* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %235

71:                                               ; preds = %65
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 3
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = call i64 @grub_udf_read_icb(i32 %74, i32* %75, %struct.TYPE_12__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %235

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @U16(i32 %82)
  %84 = add i64 20, %83
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %10, align 4
  %89 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @GRUB_UDF_FID_CHAR_PARENT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %80
  %95 = load i32 (i8*, i32, %struct.TYPE_12__*, i8*)*, i32 (i8*, i32, %struct.TYPE_12__*, i8*)** %6, align 8
  %96 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 %95(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %96, %struct.TYPE_12__* %97, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i32 1, i32* %4, align 4
  br label %235

102:                                              ; preds = %94
  br label %225

103:                                              ; preds = %80
  %104 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  %107 = call i8* @llvm.stacksave()
  store i8* %107, i8** %12, align 8
  %108 = alloca i32, i64 %106, align 16
  store i64 %106, i64* %13, align 8
  %109 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = zext i32 %111 to i64
  %113 = alloca i32, i64 %112, align 16
  store i64 %112, i64* %14, align 8
  %114 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 2
  %117 = zext i32 %116 to i64
  %118 = alloca i32, i64 %117, align 16
  store i64 %117, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %119 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @GRUB_UDF_FID_CHAR_DIRECTORY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %103
  %125 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  br label %128

126:                                              ; preds = %103
  %127 = load i32, i32* @GRUB_FSHELP_REG, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  store i32 %129, i32* %11, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = load i32, i32* %10, align 4
  %132 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = bitcast i32* %108 to i8*
  %135 = call i32 @grub_udf_read_file(%struct.TYPE_12__* %130, i32 0, i32 0, i32 0, i32 %131, i32 %133, i8* %134)
  %136 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

140:                                              ; preds = %128
  %141 = getelementptr inbounds i32, i32* %108, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = icmp eq i32 %142, 8
  br i1 %143, label %144, label %165

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %148

148:                                              ; preds = %161, %144
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load i32, i32* %18, align 4
  %154 = add i32 %153, 1
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %108, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %18, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %113, i64 %159
  store i32 %157, i32* %160, align 4
  br label %161

161:                                              ; preds = %152
  %162 = load i32, i32* %18, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %18, align 4
  br label %148

164:                                              ; preds = %148
  br label %165

165:                                              ; preds = %164, %140
  %166 = getelementptr inbounds i32, i32* %108, i64 0
  %167 = load i32, i32* %166, align 16
  %168 = icmp eq i32 %167, 16
  br i1 %168, label %169, label %200

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sdiv i32 %172, 2
  store i32 %173, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %174

174:                                              ; preds = %196, %169
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp ult i32 %175, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %174
  %179 = load i32, i32* %19, align 4
  %180 = mul i32 2, %179
  %181 = add i32 %180, 1
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %108, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 8
  %186 = load i32, i32* %19, align 4
  %187 = mul i32 2, %186
  %188 = add i32 %187, 2
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %108, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %185, %191
  %193 = load i32, i32* %19, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %113, i64 %194
  store i32 %192, i32* %195, align 4
  br label %196

196:                                              ; preds = %178
  %197 = load i32, i32* %19, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %19, align 4
  br label %174

199:                                              ; preds = %174
  br label %200

200:                                              ; preds = %199, %165
  %201 = getelementptr inbounds i32, i32* %108, i64 0
  %202 = load i32, i32* %201, align 16
  %203 = icmp eq i32 %202, 8
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds i32, i32* %108, i64 0
  %206 = load i32, i32* %205, align 16
  %207 = icmp eq i32 %206, 16
  br i1 %207, label %208, label %220

208:                                              ; preds = %204, %200
  %209 = load i32, i32* %16, align 4
  %210 = call i8* @grub_utf16_to_utf8(i32* %118, i32* %113, i32 %209)
  store i8 0, i8* %210, align 1
  %211 = load i32 (i8*, i32, %struct.TYPE_12__*, i8*)*, i32 (i8*, i32, %struct.TYPE_12__*, i8*)** %6, align 8
  %212 = bitcast i32* %118 to i8*
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %215 = load i8*, i8** %7, align 8
  %216 = call i32 %211(i8* %212, i32 %213, %struct.TYPE_12__* %214, i8* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %221

219:                                              ; preds = %208
  br label %220

220:                                              ; preds = %219, %204
  store i32 0, i32* %17, align 4
  br label %221

221:                                              ; preds = %220, %218, %139
  %222 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %17, align 4
  switch i32 %223, label %237 [
    i32 0, label %224
    i32 1, label %235
  ]

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %224, %102
  %226 = load i32, i32* %10, align 4
  %227 = getelementptr inbounds %struct.grub_udf_file_ident, %struct.grub_udf_file_ident* %9, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %226, %228
  %230 = add nsw i32 %229, 3
  %231 = and i32 %230, -4
  store i32 %231, i32* %10, align 4
  br label %39

232:                                              ; preds = %39
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %234 = call i32 @grub_free(%struct.TYPE_12__* %233)
  store i32 0, i32* %4, align 4
  br label %235

235:                                              ; preds = %232, %221, %101, %79, %70, %62, %54, %37, %24
  %236 = load i32, i32* %4, align 4
  ret i32 %236

237:                                              ; preds = %221
  unreachable
}

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @U64(i32) #1

declare dso_local i32 @grub_udf_read_file(%struct.TYPE_12__*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @U16(i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i64 @grub_udf_read_icb(i32, i32*, %struct.TYPE_12__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @grub_utf16_to_utf8(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @grub_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
