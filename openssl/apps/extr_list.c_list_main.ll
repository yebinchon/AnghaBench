; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_list.c_list_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_list.c_list_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16, [2 x i8] }

@__const.list_main.todo = private unnamed_addr constant { i8, i8, [2 x i8] } { i8 0, i8 0, [2 x i8] undef }, align 4
@verbose = common dso_local global i32 0, align 4
@list_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Extra arguments given.\0A\00", align 1
@FT_general = common dso_local global i32 0, align 4
@FT_md = common dso_local global i32 0, align 4
@FT_cipher = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.anon, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = bitcast %struct.anon* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 getelementptr inbounds ({ i8, i8, [2 x i8] }, { i8, i8, [2 x i8] }* @__const.list_main.todo, i32 0, i32 0), i64 4, i1 false)
  store i32 0, i32* @verbose, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i32, i32* @list_options, align 4
  %15 = call i8* @opt_init(i32 %12, i8** %13, i32 %14)
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %99, %2
  %17 = call i32 (...) @opt_next()
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 139
  br i1 %18, label %19, label %100

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %99 [
    i32 139, label %21
    i32 138, label %21
    i32 137, label %26
    i32 132, label %29
    i32 144, label %30
    i32 142, label %35
    i32 143, label %40
    i32 136, label %45
    i32 135, label %50
    i32 145, label %55
    i32 146, label %60
    i32 130, label %65
    i32 129, label %70
    i32 140, label %75
    i32 141, label %80
    i32 134, label %85
    i32 133, label %90
    i32 131, label %95
    i32 128, label %98
  ]

21:                                               ; preds = %19, %19
  br label %22

22:                                               ; preds = %231, %103, %21
  %23 = load i32, i32* @bio_err, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i32, i8*, ...) @BIO_printf(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 1, i32* %3, align 4
  br label %233

26:                                               ; preds = %19
  %27 = load i32, i32* @list_options, align 4
  %28 = call i32 @opt_help(i32 %27)
  br label %99

29:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %99

30:                                               ; preds = %19
  %31 = bitcast %struct.anon* %10 to i16*
  %32 = load i16, i16* %31, align 4
  %33 = and i16 %32, -2
  %34 = or i16 %33, 1
  store i16 %34, i16* %31, align 4
  br label %99

35:                                               ; preds = %19
  %36 = bitcast %struct.anon* %10 to i16*
  %37 = load i16, i16* %36, align 4
  %38 = and i16 %37, -3
  %39 = or i16 %38, 2
  store i16 %39, i16* %36, align 4
  br label %99

40:                                               ; preds = %19
  %41 = bitcast %struct.anon* %10 to i16*
  %42 = load i16, i16* %41, align 4
  %43 = and i16 %42, -5
  %44 = or i16 %43, 4
  store i16 %44, i16* %41, align 4
  br label %99

45:                                               ; preds = %19
  %46 = bitcast %struct.anon* %10 to i16*
  %47 = load i16, i16* %46, align 4
  %48 = and i16 %47, -9
  %49 = or i16 %48, 8
  store i16 %49, i16* %46, align 4
  br label %99

50:                                               ; preds = %19
  %51 = bitcast %struct.anon* %10 to i16*
  %52 = load i16, i16* %51, align 4
  %53 = and i16 %52, -17
  %54 = or i16 %53, 16
  store i16 %54, i16* %51, align 4
  br label %99

55:                                               ; preds = %19
  %56 = bitcast %struct.anon* %10 to i16*
  %57 = load i16, i16* %56, align 4
  %58 = and i16 %57, -33
  %59 = or i16 %58, 32
  store i16 %59, i16* %56, align 4
  br label %99

60:                                               ; preds = %19
  %61 = bitcast %struct.anon* %10 to i16*
  %62 = load i16, i16* %61, align 4
  %63 = and i16 %62, -65
  %64 = or i16 %63, 64
  store i16 %64, i16* %61, align 4
  br label %99

65:                                               ; preds = %19
  %66 = bitcast %struct.anon* %10 to i16*
  %67 = load i16, i16* %66, align 4
  %68 = and i16 %67, -129
  %69 = or i16 %68, 128
  store i16 %69, i16* %66, align 4
  br label %99

70:                                               ; preds = %19
  %71 = bitcast %struct.anon* %10 to i16*
  %72 = load i16, i16* %71, align 4
  %73 = and i16 %72, -257
  %74 = or i16 %73, 256
  store i16 %74, i16* %71, align 4
  br label %99

75:                                               ; preds = %19
  %76 = bitcast %struct.anon* %10 to i16*
  %77 = load i16, i16* %76, align 4
  %78 = and i16 %77, -513
  %79 = or i16 %78, 512
  store i16 %79, i16* %76, align 4
  br label %99

80:                                               ; preds = %19
  %81 = bitcast %struct.anon* %10 to i16*
  %82 = load i16, i16* %81, align 4
  %83 = and i16 %82, -1025
  %84 = or i16 %83, 1024
  store i16 %84, i16* %81, align 4
  br label %99

85:                                               ; preds = %19
  %86 = bitcast %struct.anon* %10 to i16*
  %87 = load i16, i16* %86, align 4
  %88 = and i16 %87, -2049
  %89 = or i16 %88, 2048
  store i16 %89, i16* %86, align 4
  br label %99

90:                                               ; preds = %19
  %91 = bitcast %struct.anon* %10 to i16*
  %92 = load i16, i16* %91, align 4
  %93 = and i16 %92, -4097
  %94 = or i16 %93, 4096
  store i16 %94, i16* %91, align 4
  br label %99

95:                                               ; preds = %19
  %96 = call i32 (...) @opt_arg()
  %97 = call i32 @list_options_for_command(i32 %96)
  br label %99

98:                                               ; preds = %19
  store i32 1, i32* @verbose, align 4
  br label %99

99:                                               ; preds = %19, %98, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %29, %26
  store i32 1, i32* %9, align 4
  br label %16

100:                                              ; preds = %16
  %101 = call i64 (...) @opt_num_rest()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @bio_err, align 4
  %105 = call i32 (i32, i8*, ...) @BIO_printf(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %22

106:                                              ; preds = %100
  %107 = bitcast %struct.anon* %10 to i16*
  %108 = load i16, i16* %107, align 4
  %109 = and i16 %108, 1
  %110 = zext i16 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @FT_general, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @list_type(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %106
  %117 = bitcast %struct.anon* %10 to i16*
  %118 = load i16, i16* %117, align 4
  %119 = lshr i16 %118, 1
  %120 = and i16 %119, 1
  %121 = zext i16 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i32, i32* @FT_md, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @list_type(i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %116
  %128 = bitcast %struct.anon* %10 to i16*
  %129 = load i16, i16* %128, align 4
  %130 = lshr i16 %129, 2
  %131 = and i16 %130, 1
  %132 = zext i16 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = call i32 (...) @list_digests()
  br label %136

136:                                              ; preds = %134, %127
  %137 = bitcast %struct.anon* %10 to i16*
  %138 = load i16, i16* %137, align 4
  %139 = lshr i16 %138, 3
  %140 = and i16 %139, 1
  %141 = zext i16 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = call i32 (...) @list_kdfs()
  br label %145

145:                                              ; preds = %143, %136
  %146 = bitcast %struct.anon* %10 to i16*
  %147 = load i16, i16* %146, align 4
  %148 = lshr i16 %147, 4
  %149 = and i16 %148, 1
  %150 = zext i16 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i32 (...) @list_macs()
  br label %154

154:                                              ; preds = %152, %145
  %155 = bitcast %struct.anon* %10 to i16*
  %156 = load i16, i16* %155, align 4
  %157 = lshr i16 %156, 5
  %158 = and i16 %157, 1
  %159 = zext i16 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* @FT_cipher, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @list_type(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %154
  %166 = bitcast %struct.anon* %10 to i16*
  %167 = load i16, i16* %166, align 4
  %168 = lshr i16 %167, 6
  %169 = and i16 %168, 1
  %170 = zext i16 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = call i32 (...) @list_ciphers()
  br label %174

174:                                              ; preds = %172, %165
  %175 = bitcast %struct.anon* %10 to i16*
  %176 = load i16, i16* %175, align 4
  %177 = lshr i16 %176, 7
  %178 = and i16 %177, 1
  %179 = zext i16 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = call i32 (...) @list_pkey()
  br label %183

183:                                              ; preds = %181, %174
  %184 = bitcast %struct.anon* %10 to i16*
  %185 = load i16, i16* %184, align 4
  %186 = lshr i16 %185, 8
  %187 = and i16 %186, 1
  %188 = zext i16 %187 to i32
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = call i32 (...) @list_pkey_meth()
  br label %192

192:                                              ; preds = %190, %183
  %193 = bitcast %struct.anon* %10 to i16*
  %194 = load i16, i16* %193, align 4
  %195 = lshr i16 %194, 9
  %196 = and i16 %195, 1
  %197 = zext i16 %196 to i32
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = call i32 (...) @list_engines()
  br label %201

201:                                              ; preds = %199, %192
  %202 = bitcast %struct.anon* %10 to i16*
  %203 = load i16, i16* %202, align 4
  %204 = lshr i16 %203, 10
  %205 = and i16 %204, 1
  %206 = zext i16 %205 to i32
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = call i32 (...) @list_disabled()
  br label %210

210:                                              ; preds = %208, %201
  %211 = bitcast %struct.anon* %10 to i16*
  %212 = load i16, i16* %211, align 4
  %213 = lshr i16 %212, 11
  %214 = and i16 %213, 1
  %215 = zext i16 %214 to i32
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  %218 = call i32 (...) @list_missing_help()
  br label %219

219:                                              ; preds = %217, %210
  %220 = bitcast %struct.anon* %10 to i16*
  %221 = load i16, i16* %220, align 4
  %222 = lshr i16 %221, 12
  %223 = and i16 %222, 1
  %224 = zext i16 %223 to i32
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = call i32 (...) @list_objects()
  br label %228

228:                                              ; preds = %226, %219
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  br label %22

232:                                              ; preds = %228
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %232, %22
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @opt_init(i32, i8**, i32) #2

declare dso_local i32 @opt_next(...) #2

declare dso_local i32 @BIO_printf(i32, i8*, ...) #2

declare dso_local i32 @opt_help(i32) #2

declare dso_local i32 @list_options_for_command(i32) #2

declare dso_local i32 @opt_arg(...) #2

declare dso_local i64 @opt_num_rest(...) #2

declare dso_local i32 @list_type(i32, i32) #2

declare dso_local i32 @list_digests(...) #2

declare dso_local i32 @list_kdfs(...) #2

declare dso_local i32 @list_macs(...) #2

declare dso_local i32 @list_ciphers(...) #2

declare dso_local i32 @list_pkey(...) #2

declare dso_local i32 @list_pkey_meth(...) #2

declare dso_local i32 @list_engines(...) #2

declare dso_local i32 @list_disabled(...) #2

declare dso_local i32 @list_missing_help(...) #2

declare dso_local i32 @list_objects(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
