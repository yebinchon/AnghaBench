; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rabin2.c_rabin_do_operation.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rabin2.c_rabin_do_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i8* (%struct.TYPE_13__*, i32)* }
%struct.TYPE_11__ = type { i32 }

@output = common dso_local global i64 0, align 8
@file = common dso_local global i64 0, align 8
@bin = common dso_local global i32 0, align 4
@UT64_MAX = common dso_local global i32 0, align 4
@rad = common dso_local global i32 0, align 4
@R_MODE_JSON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknown operation. use -O help\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Cannot dump :(\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rabin_do_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rabin_do_operation(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %252

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 47)
  store i8* %21, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  store i8 0, i8* %24, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 47)
  store i8* %27, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %29, %23
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i64, i64* @output, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @file, align 8
  store i64 %39, i64* @output, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* @bin, align 4
  %42 = call %struct.TYPE_13__* @r_bin_cur(i32 %41)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %8, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* @r_buf_new_with_buf(i32* %48)
  store i32* %49, i32** %9, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @r_buf_free(i32* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %45, %40
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  switch i32 %61, label %238 [
    i32 101, label %62
    i32 100, label %74
    i32 97, label %110
    i32 82, label %133
    i32 67, label %139
    i32 114, label %212
    i32 112, label %221
  ]

62:                                               ; preds = %57
  %63 = load i32, i32* @bin, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @r_num_math(i32* null, i8* %64)
  %66 = call i32 @r_bin_wr_entry(i32 %63, i64 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @bin, align 4
  %71 = load i64, i64* @output, align 8
  %72 = call i32 @r_bin_wr_output(i32 %70, i64 %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %62
  br label %241

74:                                               ; preds = %57
  %75 = load i8*, i8** %5, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %239

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %108 [
    i32 115, label %82
    i32 83, label %98
  ]

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = call i64 @r_num_math(i32* null, i8* %86)
  %88 = call i32 @rabin_dump_symbols(i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %249

91:                                               ; preds = %85
  br label %97

92:                                               ; preds = %82
  %93 = call i32 @rabin_dump_symbols(i64 0)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %249

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %91
  br label %109

98:                                               ; preds = %78
  %99 = load i8*, i8** %6, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %239

102:                                              ; preds = %98
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @__dumpSections(i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %249

107:                                              ; preds = %102
  br label %109

108:                                              ; preds = %78
  br label %239

109:                                              ; preds = %107, %97
  br label %241

110:                                              ; preds = %57
  %111 = load i8*, i8** %5, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  br label %239

114:                                              ; preds = %110
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  switch i32 %117, label %131 [
    i32 108, label %118
  ]

118:                                              ; preds = %114
  %119 = load i8*, i8** %6, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, i32* @bin, align 4
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @r_bin_wr_addlib(i32 %122, i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121, %118
  br label %249

127:                                              ; preds = %121
  %128 = load i32, i32* @bin, align 4
  %129 = load i64, i64* @output, align 8
  %130 = call i32 @r_bin_wr_output(i32 %128, i64 %129)
  store i32 %130, i32* %7, align 4
  br label %132

131:                                              ; preds = %114
  br label %239

132:                                              ; preds = %127
  br label %241

133:                                              ; preds = %57
  %134 = load i32, i32* @bin, align 4
  %135 = call i32 @r_bin_wr_rpath_del(i32 %134)
  %136 = load i32, i32* @bin, align 4
  %137 = load i64, i64* @output, align 8
  %138 = call i32 @r_bin_wr_output(i32 %136, i64 %137)
  store i32 %138, i32* %7, align 4
  br label %241

139:                                              ; preds = %57
  %140 = load i32, i32* @bin, align 4
  %141 = call %struct.TYPE_13__* @r_bin_cur(i32 %140)
  store %struct.TYPE_13__* %141, %struct.TYPE_13__** %10, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %143 = call %struct.TYPE_12__* @r_bin_file_cur_plugin(%struct.TYPE_13__* %142)
  store %struct.TYPE_12__* %143, %struct.TYPE_12__** %11, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %145 = icmp ne %struct.TYPE_12__* %144, null
  br i1 %145, label %184, label %146

146:                                              ; preds = %139
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %148 = icmp ne %struct.TYPE_13__* %147, null
  br i1 %148, label %149, label %184

149:                                              ; preds = %146
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call %struct.TYPE_11__* @r_list_get_n(i32 %157, i32 0)
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %12, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %160 = icmp ne %struct.TYPE_11__* %159, null
  br i1 %160, label %161, label %176

161:                                              ; preds = %154
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @bin, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %169 = load i32, i32* @UT64_MAX, align 4
  %170 = load i32, i32* @bin, align 4
  %171 = call i32 @r_bin_get_laddr(i32 %170)
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %173 = call i32 @r_bin_file_object_new_from_xtr_data(i32 %167, %struct.TYPE_13__* %168, i32 %169, i32 %171, %struct.TYPE_11__* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %166
  br label %241

176:                                              ; preds = %166, %161, %154
  br label %177

177:                                              ; preds = %176, %149
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %179 = call %struct.TYPE_12__* @r_bin_file_cur_plugin(%struct.TYPE_13__* %178)
  store %struct.TYPE_12__* %179, %struct.TYPE_12__** %11, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %181 = icmp ne %struct.TYPE_12__* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  br label %241

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183, %146, %139
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %186 = icmp ne %struct.TYPE_12__* %185, null
  br i1 %186, label %187, label %211

187:                                              ; preds = %184
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i8* (%struct.TYPE_13__*, i32)*, i8* (%struct.TYPE_13__*, i32)** %189, align 8
  %191 = icmp ne i8* (%struct.TYPE_13__*, i32)* %190, null
  br i1 %191, label %192, label %211

192:                                              ; preds = %187
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i8* (%struct.TYPE_13__*, i32)*, i8* (%struct.TYPE_13__*, i32)** %194, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %197 = load i32, i32* @rad, align 4
  %198 = load i32, i32* @R_MODE_JSON, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i8* %195(%struct.TYPE_13__* %196, i32 %200)
  store i8* %201, i8** %13, align 8
  %202 = load i8*, i8** %13, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %210

204:                                              ; preds = %192
  %205 = load i8*, i8** %13, align 8
  %206 = call i32 @r_cons_println(i8* %205)
  %207 = call i32 (...) @r_cons_flush()
  %208 = load i8*, i8** %13, align 8
  %209 = call i32 @free(i8* %208)
  br label %210

210:                                              ; preds = %204, %192
  br label %211

211:                                              ; preds = %210, %187, %184
  br label %241

212:                                              ; preds = %57
  %213 = load i32, i32* @bin, align 4
  %214 = load i8*, i8** %5, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = call i64 @r_num_math(i32* null, i8* %215)
  %217 = call i32 @r_bin_wr_scn_resize(i32 %213, i8* %214, i64 %216)
  %218 = load i32, i32* @bin, align 4
  %219 = load i64, i64* @output, align 8
  %220 = call i32 @r_bin_wr_output(i32 %218, i64 %219)
  store i32 %220, i32* %7, align 4
  br label %241

221:                                              ; preds = %57
  %222 = load i8*, i8** %6, align 8
  %223 = call i64 @r_num_math(i32* null, i8* %222)
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %14, align 4
  %225 = load i32, i32* %14, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %221
  %228 = load i8*, i8** %6, align 8
  %229 = call i32 @r_str_rwx(i8* %228)
  store i32 %229, i32* %14, align 4
  br label %230

230:                                              ; preds = %227, %221
  %231 = load i32, i32* @bin, align 4
  %232 = load i8*, i8** %5, align 8
  %233 = load i32, i32* %14, align 4
  %234 = call i32 @r_bin_wr_scn_perms(i32 %231, i8* %232, i32 %233)
  %235 = load i32, i32* @bin, align 4
  %236 = load i64, i64* @output, align 8
  %237 = call i32 @r_bin_wr_output(i32 %235, i64 %236)
  store i32 %237, i32* %7, align 4
  br label %241

238:                                              ; preds = %57
  br label %239

239:                                              ; preds = %238, %131, %113, %108, %101, %77
  %240 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %249

241:                                              ; preds = %230, %212, %211, %182, %175, %133, %132, %109, %73
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %241
  %245 = call i32 @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %241
  %247 = load i8*, i8** %4, align 8
  %248 = call i32 @free(i8* %247)
  store i32 1, i32* %2, align 4
  br label %252

249:                                              ; preds = %239, %126, %106, %95, %90
  %250 = load i8*, i8** %4, align 8
  %251 = call i32 @free(i8* %250)
  store i32 0, i32* %2, align 4
  br label %252

252:                                              ; preds = %249, %246, %18
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_13__* @r_bin_cur(i32) #1

declare dso_local i32* @r_buf_new_with_buf(i32*) #1

declare dso_local i32 @r_buf_free(i32*) #1

declare dso_local i32 @r_bin_wr_entry(i32, i64) #1

declare dso_local i64 @r_num_math(i32*, i8*) #1

declare dso_local i32 @r_bin_wr_output(i32, i64) #1

declare dso_local i32 @rabin_dump_symbols(i64) #1

declare dso_local i32 @__dumpSections(i8*) #1

declare dso_local i32 @r_bin_wr_addlib(i32, i8*) #1

declare dso_local i32 @r_bin_wr_rpath_del(i32) #1

declare dso_local %struct.TYPE_12__* @r_bin_file_cur_plugin(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_11__* @r_list_get_n(i32, i32) #1

declare dso_local i32 @r_bin_file_object_new_from_xtr_data(i32, %struct.TYPE_13__*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @r_bin_get_laddr(i32) #1

declare dso_local i32 @r_cons_println(i8*) #1

declare dso_local i32 @r_cons_flush(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_bin_wr_scn_resize(i32, i8*, i64) #1

declare dso_local i32 @r_str_rwx(i8*) #1

declare dso_local i32 @r_bin_wr_scn_perms(i32, i8*, i32) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
