; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_cdir_write.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_cdir_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32, %struct.zip_string*, %struct.zip_string*, i64, %struct.zip_entry* }
%struct.zip_string = type { i64, i32 }
%struct.zip_entry = type { i64, i64 }
%struct.zip_filelist = type { i32 }

@ZIP_ER_READ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZIP_FL_CENTRAL = common dso_local global i32 0, align 4
@ZIP_UINT32_MAX = common dso_local global i64 0, align 8
@ZIP_UINT16_MAX = common dso_local global i64 0, align 8
@EOCD64_MAGIC = common dso_local global i32 0, align 4
@EOCD64LEN = common dso_local global i32 0, align 4
@EOCD64LOC_MAGIC = common dso_local global i32 0, align 4
@EOCD_MAGIC = common dso_local global i32 0, align 4
@ZIP_ER_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_cdir_write(%struct.zip* %0, %struct.zip_filelist* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zip*, align 8
  %7 = alloca %struct.zip_filelist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.zip_string*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.zip_entry*, align 8
  store %struct.zip* %0, %struct.zip** %6, align 8
  store %struct.zip_filelist* %1, %struct.zip_filelist** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @ftello(i32* %18)
  store i64 %19, i64* %10, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.zip*, %struct.zip** %6, align 8
  %23 = getelementptr inbounds %struct.zip, %struct.zip* %22, i32 0, i32 0
  %24 = load i32, i32* @ZIP_ER_READ, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @_zip_error_set(i32* %23, i32 %24, i32 %25)
  store i32 -1, i32* %5, align 4
  br label %239

27:                                               ; preds = %4
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %11, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %14, align 8
  br label %29

29:                                               ; preds = %70, %27
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  %34 = load %struct.zip*, %struct.zip** %6, align 8
  %35 = getelementptr inbounds %struct.zip, %struct.zip* %34, i32 0, i32 4
  %36 = load %struct.zip_entry*, %struct.zip_entry** %35, align 8
  %37 = load %struct.zip_filelist*, %struct.zip_filelist** %7, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds %struct.zip_filelist, %struct.zip_filelist* %37, i64 %38
  %40 = getelementptr inbounds %struct.zip_filelist, %struct.zip_filelist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %36, i64 %42
  store %struct.zip_entry* %43, %struct.zip_entry** %17, align 8
  %44 = load %struct.zip_entry*, %struct.zip_entry** %17, align 8
  %45 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load %struct.zip_entry*, %struct.zip_entry** %17, align 8
  %50 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  br label %56

52:                                               ; preds = %33
  %53 = load %struct.zip_entry*, %struct.zip_entry** %17, align 8
  %54 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i64 [ %51, %48 ], [ %55, %52 ]
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @ZIP_FL_CENTRAL, align 4
  %60 = load %struct.zip*, %struct.zip** %6, align 8
  %61 = getelementptr inbounds %struct.zip, %struct.zip* %60, i32 0, i32 0
  %62 = call i32 @_zip_dirent_write(i64 %57, i32* %58, i32 %59, i32* %61)
  store i32 %62, i32* %16, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  br label %239

65:                                               ; preds = %56
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %15, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %14, align 8
  br label %29

73:                                               ; preds = %29
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @ftello(i32* %74)
  store i64 %75, i64* %10, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.zip*, %struct.zip** %6, align 8
  %79 = getelementptr inbounds %struct.zip, %struct.zip* %78, i32 0, i32 0
  %80 = load i32, i32* @ZIP_ER_READ, align 4
  %81 = load i32, i32* @errno, align 4
  %82 = call i32 @_zip_error_set(i32* %79, i32 %80, i32 %81)
  store i32 -1, i32* %5, align 4
  br label %239

83:                                               ; preds = %73
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = sub i64 %84, %85
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @ZIP_UINT16_MAX, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %83
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %94, %90
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %139

98:                                               ; preds = %95
  %99 = load i32, i32* @EOCD64_MAGIC, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @fwrite(i32 %99, i32 1, i32 4, i32* %100)
  %102 = load i32, i32* @EOCD64LEN, align 4
  %103 = sub nsw i32 %102, 12
  %104 = sext i32 %103 to i64
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @_zip_write8(i64 %104, i32* %105)
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @_zip_write2(i64 45, i32* %107)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @_zip_write2(i64 45, i32* %109)
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @_zip_write4(i64 0, i32* %111)
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @_zip_write4(i64 0, i32* %113)
  %115 = load i64, i64* %8, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @_zip_write8(i64 %115, i32* %116)
  %118 = load i64, i64* %8, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @_zip_write8(i64 %118, i32* %119)
  %121 = load i64, i64* %12, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @_zip_write8(i64 %121, i32* %122)
  %124 = load i64, i64* %11, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @_zip_write8(i64 %124, i32* %125)
  %127 = load i32, i32* @EOCD64LOC_MAGIC, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @fwrite(i32 %127, i32 1, i32 4, i32* %128)
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @_zip_write4(i64 0, i32* %130)
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = add i64 %132, %133
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @_zip_write8(i64 %134, i32* %135)
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @_zip_write4(i64 1, i32* %137)
  br label %139

139:                                              ; preds = %98, %95
  %140 = load i32, i32* @EOCD_MAGIC, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @fwrite(i32 %140, i32 1, i32 4, i32* %141)
  %143 = load i32*, i32** %9, align 8
  %144 = call i32 @_zip_write4(i64 0, i32* %143)
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* @ZIP_UINT16_MAX, align 8
  %147 = icmp uge i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i64, i64* @ZIP_UINT16_MAX, align 8
  br label %152

150:                                              ; preds = %139
  %151 = load i64, i64* %8, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i64 [ %149, %148 ], [ %151, %150 ]
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @_zip_write2(i64 %153, i32* %154)
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* @ZIP_UINT16_MAX, align 8
  %158 = icmp uge i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i64, i64* @ZIP_UINT16_MAX, align 8
  br label %163

161:                                              ; preds = %152
  %162 = load i64, i64* %8, align 8
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i64 [ %160, %159 ], [ %162, %161 ]
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @_zip_write2(i64 %164, i32* %165)
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %169 = icmp uge i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = load i64, i64* @ZIP_UINT32_MAX, align 8
  br label %174

172:                                              ; preds = %163
  %173 = load i64, i64* %12, align 8
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i64 [ %171, %170 ], [ %173, %172 ]
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @_zip_write4(i64 %175, i32* %176)
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %180 = icmp uge i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = load i64, i64* @ZIP_UINT32_MAX, align 8
  br label %185

183:                                              ; preds = %174
  %184 = load i64, i64* %11, align 8
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i64 [ %182, %181 ], [ %184, %183 ]
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @_zip_write4(i64 %186, i32* %187)
  %189 = load %struct.zip*, %struct.zip** %6, align 8
  %190 = getelementptr inbounds %struct.zip, %struct.zip* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load %struct.zip*, %struct.zip** %6, align 8
  %195 = getelementptr inbounds %struct.zip, %struct.zip* %194, i32 0, i32 2
  %196 = load %struct.zip_string*, %struct.zip_string** %195, align 8
  br label %201

197:                                              ; preds = %185
  %198 = load %struct.zip*, %struct.zip** %6, align 8
  %199 = getelementptr inbounds %struct.zip, %struct.zip* %198, i32 0, i32 1
  %200 = load %struct.zip_string*, %struct.zip_string** %199, align 8
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi %struct.zip_string* [ %196, %193 ], [ %200, %197 ]
  store %struct.zip_string* %202, %struct.zip_string** %13, align 8
  %203 = load %struct.zip_string*, %struct.zip_string** %13, align 8
  %204 = icmp ne %struct.zip_string* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load %struct.zip_string*, %struct.zip_string** %13, align 8
  %207 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  br label %210

209:                                              ; preds = %201
  br label %210

210:                                              ; preds = %209, %205
  %211 = phi i64 [ %208, %205 ], [ 0, %209 ]
  %212 = load i32*, i32** %9, align 8
  %213 = call i32 @_zip_write2(i64 %211, i32* %212)
  %214 = load %struct.zip_string*, %struct.zip_string** %13, align 8
  %215 = icmp ne %struct.zip_string* %214, null
  br i1 %215, label %216, label %226

216:                                              ; preds = %210
  %217 = load %struct.zip_string*, %struct.zip_string** %13, align 8
  %218 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.zip_string*, %struct.zip_string** %13, align 8
  %221 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  %224 = load i32*, i32** %9, align 8
  %225 = call i32 @fwrite(i32 %219, i32 1, i32 %223, i32* %224)
  br label %226

226:                                              ; preds = %216, %210
  %227 = load i32*, i32** %9, align 8
  %228 = call i64 @ferror(i32* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load %struct.zip*, %struct.zip** %6, align 8
  %232 = getelementptr inbounds %struct.zip, %struct.zip* %231, i32 0, i32 0
  %233 = load i32, i32* @ZIP_ER_WRITE, align 4
  %234 = load i32, i32* @errno, align 4
  %235 = call i32 @_zip_error_set(i32* %232, i32 %233, i32 %234)
  store i32 -1, i32* %5, align 4
  br label %239

236:                                              ; preds = %226
  %237 = load i64, i64* %12, align 8
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %236, %230, %77, %64, %21
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i64 @ftello(i32*) #1

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

declare dso_local i32 @_zip_dirent_write(i64, i32*, i32, i32*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @_zip_write8(i64, i32*) #1

declare dso_local i32 @_zip_write2(i64, i32*) #1

declare dso_local i32 @_zip_write4(i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
