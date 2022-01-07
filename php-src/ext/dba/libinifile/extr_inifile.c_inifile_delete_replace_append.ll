; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_delete_replace_append.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_delete_replace_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i8* }

@SUCCESS = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not create temporary stream\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@PHP_STREAM_COPY_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not copy remainder to temporary stream\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Could not copy from temporary stream - ini file truncated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32*)* @inifile_delete_replace_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inifile_delete_replace_append(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.TYPE_18__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %13, align 8
  store i32* null, i32** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = icmp ne %struct.TYPE_18__* %24, null
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i1 [ false, %18 ], [ %25, %23 ]
  br label %28

28:                                               ; preds = %26, %5
  %29 = phi i1 [ true, %5 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %34 = call i32 @inifile_find_group(%struct.TYPE_20__* %32, %struct.TYPE_19__* %33, i64* %11)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %37 = call i32 @inifile_next_group(%struct.TYPE_20__* %35, %struct.TYPE_19__* %36, i64* %12)
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @SUCCESS, align 4
  store i32 %41, i32* %15, align 4
  br label %47

42:                                               ; preds = %28
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @inifile_copy_to(%struct.TYPE_20__* %43, i64 %44, i64 %45, %struct.TYPE_20__** %13)
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %42, %40
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %47
  %52 = call i32* @php_stream_temp_create(i32 0, i32 65536)
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @E_WARNING, align 4
  %57 = call i32 @php_error_docref(i32* null, i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @FAILURE, align 4
  store i32 %58, i32* %15, align 4
  br label %92

59:                                               ; preds = %51
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @SEEK_END, align 4
  %64 = call i32 @php_stream_seek(i32* %62, i64 0, i32 %63)
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @php_stream_tell(i32* %68)
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %59
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* @SEEK_SET, align 4
  %77 = call i32 @php_stream_seek(i32* %74, i64 %75, i32 %76)
  %78 = load i32, i32* @SUCCESS, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* @PHP_STREAM_COPY_ALL, align 4
  %84 = call i32 @php_stream_copy_to_stream_ex(i32* %81, i32* %82, i32 %83, i32* null)
  %85 = icmp ne i32 %78, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %71
  %87 = load i32, i32* @E_WARNING, align 4
  %88 = call i32 @php_error_docref(i32* null, i32 %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @FAILURE, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %86, %71
  br label %91

91:                                               ; preds = %90, %59
  br label %92

92:                                               ; preds = %91, %55
  br label %93

93:                                               ; preds = %92, %47
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @SUCCESS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %123

97:                                               ; preds = %93
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = icmp ne %struct.TYPE_18__* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %100
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @strlen(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %105, %97
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i64, i64* %12, align 8
  br label %119

117:                                              ; preds = %111
  %118 = load i64, i64* %11, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i64 [ %116, %115 ], [ %118, %117 ]
  %121 = call i32 @inifile_truncate(%struct.TYPE_20__* %112, i64 %120)
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %119, %105, %100
  br label %123

123:                                              ; preds = %122, %93
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @SUCCESS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %225

127:                                              ; preds = %123
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %196

132:                                              ; preds = %127
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @strlen(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %196

138:                                              ; preds = %132
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %138
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %143 = icmp ne %struct.TYPE_20__* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @inifile_filter(%struct.TYPE_20__* %145, %struct.TYPE_20__* %146, %struct.TYPE_19__* %147, i32* %148)
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %144, %141, %138
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %152 = icmp ne %struct.TYPE_18__* %151, null
  br i1 %152, label %153, label %195

153:                                              ; preds = %150
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %12, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %153
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %157
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @strlen(i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (i32*, i8*, i64, ...) @php_stream_printf(i32* %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %174)
  br label %176

176:                                              ; preds = %168, %162, %157, %153
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %176
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  br label %192

191:                                              ; preds = %176
  br label %192

192:                                              ; preds = %191, %187
  %193 = phi i8* [ %190, %187 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %191 ]
  %194 = call i32 (i32*, i8*, i64, ...) @php_stream_printf(i32* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %182, i8* %193)
  br label %195

195:                                              ; preds = %192, %150
  br label %196

196:                                              ; preds = %195, %132, %127
  %197 = load i32*, i32** %14, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %224

199:                                              ; preds = %196
  %200 = load i32*, i32** %14, align 8
  %201 = call i64 @php_stream_tell(i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %224

203:                                              ; preds = %199
  %204 = load i32*, i32** %14, align 8
  %205 = load i32, i32* @SEEK_SET, align 4
  %206 = call i32 @php_stream_seek(i32* %204, i64 0, i32 %205)
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* @SEEK_END, align 4
  %211 = call i32 @php_stream_seek(i32* %209, i64 0, i32 %210)
  %212 = load i32, i32* @SUCCESS, align 4
  %213 = load i32*, i32** %14, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* @PHP_STREAM_COPY_ALL, align 4
  %218 = call i32 @php_stream_copy_to_stream_ex(i32* %213, i32* %216, i32 %217, i32* null)
  %219 = icmp ne i32 %212, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %203
  %221 = call i32 @zend_throw_error(i32* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %222 = load i32, i32* @FAILURE, align 4
  store i32 %222, i32* %15, align 4
  br label %223

223:                                              ; preds = %220, %203
  br label %224

224:                                              ; preds = %223, %199, %196
  br label %225

225:                                              ; preds = %224, %123
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %227 = icmp ne %struct.TYPE_20__* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @php_stream_close(i32* %231)
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %234 = call i32 @inifile_free(%struct.TYPE_20__* %233, i32 0)
  br label %235

235:                                              ; preds = %228, %225
  %236 = load i32*, i32** %14, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32*, i32** %14, align 8
  %240 = call i32 @php_stream_close(i32* %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @php_stream_flush(i32* %244)
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* @SEEK_SET, align 4
  %250 = call i32 @php_stream_seek(i32* %248, i64 0, i32 %249)
  %251 = load i32, i32* %15, align 4
  ret i32 %251
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @inifile_find_group(%struct.TYPE_20__*, %struct.TYPE_19__*, i64*) #1

declare dso_local i32 @inifile_next_group(%struct.TYPE_20__*, %struct.TYPE_19__*, i64*) #1

declare dso_local i32 @inifile_copy_to(%struct.TYPE_20__*, i64, i64, %struct.TYPE_20__**) #1

declare dso_local i32* @php_stream_temp_create(i32, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @php_stream_seek(i32*, i64, i32) #1

declare dso_local i64 @php_stream_tell(i32*) #1

declare dso_local i32 @php_stream_copy_to_stream_ex(i32*, i32*, i32, i32*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @inifile_truncate(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @inifile_filter(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @php_stream_printf(i32*, i8*, i64, ...) #1

declare dso_local i32 @zend_throw_error(i32*, i8*) #1

declare dso_local i32 @php_stream_close(i32*) #1

declare dso_local i32 @inifile_free(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @php_stream_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
