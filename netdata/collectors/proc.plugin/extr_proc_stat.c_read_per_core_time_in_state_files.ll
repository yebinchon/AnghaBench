; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_stat.c_read_per_core_time_in_state_files.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_stat.c_read_per_core_time_in_state_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_chart = type { %struct.per_core_time_in_state_file, %struct.per_core_single_number_file* }
%struct.per_core_time_in_state_file = type { i64, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.per_core_single_number_file = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c" \09:\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot open file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Cannot read file '%s'\00", align 1
@keep_per_core_fds_open = common dso_local global i64 0, align 8
@CONFIG_BOOLEAN_YES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"Cannot read time_in_state line. Expected 2 params, read %zu.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_chart*, i64, i64)* @read_per_core_time_in_state_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_per_core_time_in_state_files(%struct.cpu_chart* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_chart*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.per_core_single_number_file*, align 8
  %12 = alloca %struct.per_core_time_in_state_file*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.cpu_chart* %0, %struct.cpu_chart** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %281, %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %284

25:                                               ; preds = %21
  %26 = load %struct.cpu_chart*, %struct.cpu_chart** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.cpu_chart, %struct.cpu_chart* %26, i64 %27
  %29 = getelementptr inbounds %struct.cpu_chart, %struct.cpu_chart* %28, i32 0, i32 1
  %30 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %30, i64 %31
  store %struct.per_core_single_number_file* %32, %struct.per_core_single_number_file** %11, align 8
  %33 = load %struct.cpu_chart*, %struct.cpu_chart** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.cpu_chart, %struct.cpu_chart* %33, i64 %34
  %36 = getelementptr inbounds %struct.cpu_chart, %struct.cpu_chart* %35, i32 0, i32 0
  store %struct.per_core_time_in_state_file* %36, %struct.per_core_time_in_state_file** %12, align 8
  %37 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %11, align 8
  %38 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %40 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  br label %281

48:                                               ; preds = %25
  %49 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %50 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %48
  %58 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %59 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %62 = call i32* @procfile_open(i64 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %64 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %66 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %57
  %74 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %75 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  br label %281

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %48
  %80 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %81 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i32* @procfile_readall(i32* %82)
  %84 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %85 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %87 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %79
  %95 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %96 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  %99 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %100 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @procfile_close(i32* %101)
  %103 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %104 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %103, i32 0, i32 2
  store i32* null, i32** %104, align 8
  br label %281

105:                                              ; preds = %79
  %106 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %107 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i64 @procfile_lines(i32* %108)
  store i64 %109, i64* %13, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %110 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %111 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i8* @procfile_word(i32* %112, i32 0)
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %105
  %119 = load i64, i64* @keep_per_core_fds_open, align 8
  %120 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %121 = icmp ne i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %127 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @procfile_close(i32* %128)
  %130 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %131 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %130, i32 0, i32 2
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %125, %118
  br label %281

133:                                              ; preds = %105
  %134 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %135 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %13, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %133
  %140 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %141 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = icmp eq %struct.TYPE_4__* %142, null
  br label %144

144:                                              ; preds = %139, %133
  %145 = phi i1 [ true, %133 ], [ %143, %139 ]
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %151 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %150, i32 0, i32 3
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i64, i64* %13, align 8
  %154 = mul i64 4, %153
  %155 = trunc i64 %154 to i32
  %156 = call %struct.TYPE_4__* @reallocz(%struct.TYPE_4__* %152, i32 %155)
  %157 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %158 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %157, i32 0, i32 3
  store %struct.TYPE_4__* %156, %struct.TYPE_4__** %158, align 8
  %159 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %160 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %159, i32 0, i32 3
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i64, i64* %13, align 8
  %163 = mul i64 4, %162
  %164 = trunc i64 %163 to i32
  %165 = call i32 @memset(%struct.TYPE_4__* %161, i32 0, i32 %164)
  %166 = load i64, i64* %13, align 8
  %167 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %168 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %149, %144
  %170 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %11, align 8
  %171 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %170, i32 0, i32 1
  store i64 0, i64* %171, align 8
  store i64 0, i64* %14, align 8
  br label %172

172:                                              ; preds = %235, %169
  %173 = load i64, i64* %14, align 8
  %174 = load i64, i64* %13, align 8
  %175 = sub i64 %174, 1
  %176 = icmp ult i64 %173, %175
  br i1 %176, label %177, label %238

177:                                              ; preds = %172
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %178 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %179 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %14, align 8
  %182 = call i64 @procfile_linewords(i32* %180, i64 %181)
  store i64 %182, i64* %15, align 8
  %183 = load i64, i64* %15, align 8
  %184 = icmp ult i64 %183, 2
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %177
  %189 = load i64, i64* %15, align 8
  %190 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %189)
  br label %235

191:                                              ; preds = %177
  %192 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %193 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* %14, align 8
  %196 = call i32 @procfile_lineword(i32* %194, i64 %195, i32 0)
  %197 = call i64 @str2ull(i32 %196)
  store i64 %197, i64* %18, align 8
  %198 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %199 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %14, align 8
  %202 = call i32 @procfile_lineword(i32* %200, i64 %201, i32 1)
  %203 = call i64 @str2ull(i32 %202)
  store i64 %203, i64* %19, align 8
  %204 = load i64, i64* %19, align 8
  %205 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %206 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %205, i32 0, i32 3
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = load i64, i64* %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = sub i64 %204, %211
  store i64 %212, i64* %20, align 8
  %213 = load i64, i64* %18, align 8
  %214 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %215 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %214, i32 0, i32 3
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load i64, i64* %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  store i64 %213, i64* %219, align 8
  %220 = load i64, i64* %19, align 8
  %221 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %222 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %221, i32 0, i32 3
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = load i64, i64* %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  store i64 %220, i64* %226, align 8
  %227 = load i64, i64* %20, align 8
  %228 = load i64, i64* %16, align 8
  %229 = add i64 %228, %227
  store i64 %229, i64* %16, align 8
  %230 = load i64, i64* %18, align 8
  %231 = load i64, i64* %20, align 8
  %232 = mul i64 %230, %231
  %233 = load i64, i64* %17, align 8
  %234 = add i64 %233, %232
  store i64 %234, i64* %17, align 8
  br label %235

235:                                              ; preds = %191, %188
  %236 = load i64, i64* %14, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %14, align 8
  br label %172

238:                                              ; preds = %172
  %239 = load i64, i64* %16, align 8
  %240 = trunc i64 %239 to i32
  %241 = call i64 @likely(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load i64, i64* %16, align 8
  %245 = load i64, i64* %17, align 8
  %246 = udiv i64 %245, %244
  store i64 %246, i64* %17, align 8
  %247 = load i64, i64* %17, align 8
  %248 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %11, align 8
  %249 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %248, i32 0, i32 1
  store i64 %247, i64* %249, align 8
  br label %250

250:                                              ; preds = %243, %238
  %251 = load i64, i64* @keep_per_core_fds_open, align 8
  %252 = load i64, i64* @CONFIG_BOOLEAN_YES, align 8
  %253 = icmp ne i64 %251, %252
  %254 = zext i1 %253 to i32
  %255 = call i64 @unlikely(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %250
  %258 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %259 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 @procfile_close(i32* %260)
  %262 = load %struct.per_core_time_in_state_file*, %struct.per_core_time_in_state_file** %12, align 8
  %263 = getelementptr inbounds %struct.per_core_time_in_state_file, %struct.per_core_time_in_state_file* %262, i32 0, i32 2
  store i32* null, i32** %263, align 8
  br label %264

264:                                              ; preds = %257, %250
  br label %265

265:                                              ; preds = %264
  %266 = load i64, i64* %9, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %9, align 8
  %268 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %11, align 8
  %269 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %268, i32 0, i32 0
  store i32 1, i32* %269, align 8
  %270 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %11, align 8
  %271 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  %274 = zext i1 %273 to i32
  %275 = call i64 @likely(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %265
  %278 = load i64, i64* %10, align 8
  %279 = add i64 %278, 1
  store i64 %279, i64* %10, align 8
  br label %280

280:                                              ; preds = %277, %265
  br label %281

281:                                              ; preds = %280, %132, %94, %73, %47
  %282 = load i64, i64* %8, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %8, align 8
  br label %21

284:                                              ; preds = %21
  %285 = load i64, i64* %9, align 8
  %286 = icmp eq i64 %285, 0
  %287 = zext i1 %286 to i32
  %288 = call i64 @unlikely(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  store i32 -1, i32* %4, align 4
  br label %301

291:                                              ; preds = %284
  %292 = load i64, i64* %10, align 8
  %293 = icmp eq i64 %292, 0
  %294 = zext i1 %293 to i32
  %295 = call i64 @unlikely(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %291
  store i32 0, i32* %4, align 4
  br label %301

298:                                              ; preds = %291
  %299 = load i64, i64* %10, align 8
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %4, align 4
  br label %301

301:                                              ; preds = %298, %297, %290
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @procfile_open(i64, i8*, i32) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i32 @procfile_close(i32*) #1

declare dso_local i64 @procfile_lines(i32*) #1

declare dso_local i8* @procfile_word(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @reallocz(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @procfile_linewords(i32*, i64) #1

declare dso_local i64 @str2ull(i32) #1

declare dso_local i32 @procfile_lineword(i32*, i64, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
