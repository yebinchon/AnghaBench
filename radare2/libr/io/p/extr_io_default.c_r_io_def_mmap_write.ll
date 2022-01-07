; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_default.c_r_io_def_mmap_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_default.c_r_io_def_mmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@R_PERM_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"io_def_mmap: failed to refresh the def_mmap backed buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i8*, i32)* @r_io_def_mmap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_io_def_mmap_write(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br label %33

33:                                               ; preds = %30, %25, %22, %4
  %34 = phi i1 [ false, %25 ], [ false, %22 ], [ false, %4 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @r_return_val_if_fail(i32 %35, i32 -1)
  store i32 -1, i32* %10, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %12, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %182

47:                                               ; preds = %33
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %166

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %15, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %15, align 4
  %63 = srem i32 %61, %62
  %64 = sub nsw i32 %58, %63
  store i32 %64, i32* %16, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %259

73:                                               ; preds = %52
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %15, align 4
  %78 = srem i32 %76, %77
  %79 = sub nsw i32 %75, %78
  %80 = add nsw i32 %74, %79
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i8* @malloc(i32 %83)
  store i8* %84, i8** %13, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %162

87:                                               ; preds = %73
  %88 = load i8*, i8** %13, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @memset(i8* %88, i32 255, i32 %91)
  store i32 0, i32* %18, align 4
  br label %93

93:                                               ; preds = %115, %87
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @SEEK_SET, align 4
  %105 = call i64 @lseek(i32 %100, i32 %103, i32 %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @read(i32 %108, i8* %112, i32 %113)
  br label %115

115:                                              ; preds = %97
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %18, align 4
  br label %93

119:                                              ; preds = %93
  %120 = load i8*, i8** %13, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @memcpy(i8* %123, i8* %124, i32 %125)
  store i32 0, i32* %18, align 4
  br label %127

127:                                              ; preds = %157, %119
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %161

131:                                              ; preds = %127
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* @SEEK_SET, align 4
  %139 = call i64 @lseek(i32 %134, i32 %137, i32 %138)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @write(i32 %142, i8* %146, i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %131
  %153 = load i8*, i8** %13, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %5, align 4
  br label %259

156:                                              ; preds = %131
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %18, align 4
  br label %127

161:                                              ; preds = %127
  br label %162

162:                                              ; preds = %161, %73
  %163 = load i8*, i8** %13, align 8
  %164 = call i32 @free(i8* %163)
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %5, align 4
  br label %259

166:                                              ; preds = %47
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = call i64 @lseek(i32 %169, i32 %170, i32 0)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  store i32 -1, i32* %5, align 4
  br label %259

174:                                              ; preds = %166
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @write(i32 %177, i8* %178, i32 %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %5, align 4
  br label %259

182:                                              ; preds = %33
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %184 = icmp ne %struct.TYPE_7__* %183, null
  br i1 %184, label %185, label %223

185:                                              ; preds = %182
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %223

190:                                              ; preds = %185
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @R_PERM_W, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %190
  store i32 -1, i32* %5, align 4
  br label %259

198:                                              ; preds = %190
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %199, %200
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @r_buf_size(i64 %204)
  %206 = icmp sgt i32 %201, %205
  br i1 %206, label %213, label %207

207:                                              ; preds = %198
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @r_buf_size(i64 %210)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %207, %198
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %214, %215
  store i32 %216, i32* %19, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %19, align 4
  %221 = call i32 @r_file_truncate(i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %213, %207
  br label %223

223:                                              ; preds = %222, %185, %182
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i8*, i8** %8, align 8
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @r_file_mmap_write(i32 %226, i32 %229, i8* %230, i32 %231)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %251

236:                                              ; preds = %223
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i64 @lseek(i32 %239, i32 %240, i32 0)
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  store i32 -1, i32* %5, align 4
  br label %259

244:                                              ; preds = %236
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i8*, i8** %8, align 8
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @write(i32 %247, i8* %248, i32 %249)
  store i32 %250, i32* %10, align 4
  br label %251

251:                                              ; preds = %244, %223
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %253 = call i32 @r_io_def_mmap_refresh_def_mmap_buf(%struct.TYPE_7__* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %251
  %256 = call i32 @eprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %251
  %258 = load i32, i32* %10, align 4
  store i32 %258, i32* %5, align 4
  br label %259

259:                                              ; preds = %257, %243, %197, %174, %173, %162, %152, %72
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i32 @r_return_val_if_fail(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_buf_size(i64) #1

declare dso_local i32 @r_file_truncate(i32, i32) #1

declare dso_local i32 @r_file_mmap_write(i32, i32, i8*, i32) #1

declare dso_local i32 @r_io_def_mmap_refresh_def_mmap_buf(%struct.TYPE_7__*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
