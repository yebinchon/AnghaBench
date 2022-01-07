; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32* }

@DXFILEERR_BADFILETYPE = common dso_local global i32 0, align 4
@d3dxof_parsing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"header = '%s'\0A\00", align 1
@XOFFILE_FORMAT_MAGIC = common dso_local global i64 0, align 8
@XOFFILE_FORMAT_VERSION_302 = common dso_local global i64 0, align 8
@XOFFILE_FORMAT_VERSION_303 = common dso_local global i64 0, align 8
@DXFILEERR_BADFILEVERSION = common dso_local global i32 0, align 4
@XOFFILE_FORMAT_BINARY = common dso_local global i64 0, align 8
@XOFFILE_FORMAT_TEXT = common dso_local global i64 0, align 8
@XOFFILE_FORMAT_BINARY_MSZIP = common dso_local global i64 0, align 8
@XOFFILE_FORMAT_TEXT_MSZIP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"File type %s unknown\0A\00", align 1
@XOFFILE_FORMAT_FLOAT_BITS_32 = common dso_local global i64 0, align 8
@XOFFILE_FORMAT_FLOAT_BITS_64 = common dso_local global i64 0, align 8
@DXFILEERR_BADFILEFLOATSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"Compressed format %s detected: decompressed file size with xof header = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@DXFILEERR_BADALLOC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"Process chunk: compressed_size = %d, decompressed_size = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Error while decompressing MSZIP chunk %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"Size of all decompressed chunks (%u) does not match decompressed file size (%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Header is correct\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_header(%struct.TYPE_4__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca [4 x i64], align 16
  %7 = alloca [17 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %15 = call i32 @read_bytes(%struct.TYPE_4__* %13, i64* %14, i32 32)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @DXFILEERR_BADFILETYPE, align 4
  store i32 %18, i32* %3, align 4
  br label %220

19:                                               ; preds = %2
  %20 = load i32, i32* @d3dxof_parsing, align 4
  %21 = call i64 @TRACE_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 0
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %26 = call i32 @memcpy(i8* %24, i64* %25, i32 16)
  %27 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 16
  store i8 0, i8* %27, align 16
  %28 = getelementptr inbounds [17 x i8], [17 x i8]* %7, i64 0, i64 0
  %29 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %23, %19
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = load i64, i64* @XOFFILE_FORMAT_MAGIC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @DXFILEERR_BADFILETYPE, align 4
  store i32 %36, i32* %3, align 4
  br label %220

37:                                               ; preds = %30
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XOFFILE_FORMAT_VERSION_302, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XOFFILE_FORMAT_VERSION_303, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @DXFILEERR_BADFILEVERSION, align 4
  store i32 %48, i32* %3, align 4
  br label %220

49:                                               ; preds = %42, %37
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %51 = load i64, i64* %50, align 16
  %52 = load i64, i64* @XOFFILE_FORMAT_BINARY, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %56 = load i64, i64* %55, align 16
  %57 = load i64, i64* @XOFFILE_FORMAT_TEXT, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %61 = load i64, i64* %60, align 16
  %62 = load i64, i64* @XOFFILE_FORMAT_BINARY_MSZIP, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %66 = load i64, i64* %65, align 16
  %67 = load i64, i64* @XOFFILE_FORMAT_TEXT_MSZIP, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %71 = load i64, i64* %70, align 16
  %72 = call i32 @debugstr_fourcc(i64 %71)
  %73 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @DXFILEERR_BADFILETYPE, align 4
  store i32 %74, i32* %3, align 4
  br label %220

75:                                               ; preds = %64, %59, %54, %49
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @XOFFILE_FORMAT_FLOAT_BITS_32, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @XOFFILE_FORMAT_FLOAT_BITS_64, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @DXFILEERR_BADFILEFLOATSIZE, align 4
  store i32 %86, i32* %3, align 4
  br label %220

87:                                               ; preds = %80, %75
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %89 = load i64, i64* %88, align 16
  %90 = load i64, i64* @XOFFILE_FORMAT_TEXT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %94 = load i64, i64* %93, align 16
  %95 = load i64, i64* @XOFFILE_FORMAT_TEXT_MSZIP, align 8
  %96 = icmp eq i64 %94, %95
  br label %97

97:                                               ; preds = %92, %87
  %98 = phi i1 [ true, %87 ], [ %96, %92 ]
  %99 = zext i1 %98 to i32
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %103 = load i64, i64* %102, align 16
  %104 = load i64, i64* @XOFFILE_FORMAT_BINARY_MSZIP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %97
  %107 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %108 = load i64, i64* %107, align 16
  %109 = load i64, i64* @XOFFILE_FORMAT_TEXT_MSZIP, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %217

111:                                              ; preds = %106, %97
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = call i32 @read_bytes(%struct.TYPE_4__* %112, i64* %9, i32 8)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @DXFILEERR_BADFILETYPE, align 4
  store i32 %116, i32* %3, align 4
  br label %220

117:                                              ; preds = %111
  %118 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %119 = load i64, i64* %118, align 16
  %120 = call i32 @debugstr_fourcc(i64 %119)
  %121 = load i64, i64* %9, align 8
  %122 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %120, i64 %121)
  %123 = load i64, i64* %9, align 8
  %124 = sub nsw i64 %123, 16
  store i64 %124, i64* %9, align 8
  %125 = call i32 (...) @GetProcessHeap()
  %126 = load i64, i64* %9, align 8
  %127 = call i32* @HeapAlloc(i32 %125, i32 0, i64 %126)
  store i32* %127, i32** %12, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %117
  %131 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* @DXFILEERR_BADALLOC, align 4
  store i32 %132, i32* %3, align 4
  br label %220

133:                                              ; preds = %117
  %134 = load i32*, i32** %12, align 8
  %135 = load i32**, i32*** %5, align 8
  store i32* %134, i32** %135, align 8
  br label %136

136:                                              ; preds = %175, %133
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %189

141:                                              ; preds = %136
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = call i32 @read_bytes(%struct.TYPE_4__* %142, i64* %10, i32 8)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* @DXFILEERR_BADFILETYPE, align 4
  store i32 %146, i32* %3, align 4
  br label %220

147:                                              ; preds = %141
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %149 = call i32 @read_bytes(%struct.TYPE_4__* %148, i64* %11, i32 8)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* @DXFILEERR_BADFILETYPE, align 4
  store i32 %152, i32* %3, align 4
  br label %220

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %10, align 8
  %156 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %154, i64 %155)
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i32*, i32** %12, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = call i32 @mszip_decompress(i64 %157, i64 %158, i8* %162, i8* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %153
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  %171 = call i32 (...) @GetProcessHeap()
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @HeapFree(i32 %171, i32 0, i32* %172)
  %174 = load i32, i32* @DXFILEERR_BADALLOC, align 4
  store i32 %174, i32* %3, align 4
  br label %220

175:                                              ; preds = %153
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %179, %176
  store i64 %180, i64* %178, align 8
  %181 = load i64, i64* %11, align 8
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 %181
  store i32* %185, i32** %183, align 8
  %186 = load i64, i64* %10, align 8
  %187 = load i32*, i32** %12, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 %186
  store i32* %188, i32** %12, align 8
  br label %136

189:                                              ; preds = %136
  %190 = load i32*, i32** %12, align 8
  %191 = load i32**, i32*** %5, align 8
  %192 = load i32*, i32** %191, align 8
  %193 = ptrtoint i32* %190 to i64
  %194 = ptrtoint i32* %192 to i64
  %195 = sub i64 %193, %194
  %196 = sdiv exact i64 %195, 4
  %197 = load i64, i64* %9, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %189
  %200 = load i32*, i32** %12, align 8
  %201 = load i32**, i32*** %5, align 8
  %202 = load i32*, i32** %201, align 8
  %203 = ptrtoint i32* %200 to i64
  %204 = ptrtoint i32* %202 to i64
  %205 = sub i64 %203, %204
  %206 = sdiv exact i64 %205, 4
  %207 = load i64, i64* %9, align 8
  %208 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i64 %206, i64 %207)
  br label %209

209:                                              ; preds = %199, %189
  %210 = load i32**, i32*** %5, align 8
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 2
  store i32* %211, i32** %213, align 8
  %214 = load i64, i64* %9, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  br label %217

217:                                              ; preds = %209, %106
  %218 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %219 = load i32, i32* @S_OK, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %217, %168, %151, %145, %130, %115, %85, %69, %47, %35, %17
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @read_bytes(%struct.TYPE_4__*, i64*, i32) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_fourcc(i64) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @mszip_decompress(i64, i64, i8*, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
