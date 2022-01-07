; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_transhuge-stress.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_transhuge-stress.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@_SC_PHYS_PAGES = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"usage: %s [size in MiB]\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"allocate %zd transhuge pages, using %zd MiB virtual memory and %zd MiB of ram\00", align 1
@HPAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"/proc/self/pagemap\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@pagemap_fd = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"open pagemap\00", align 1
@HPAGE_SIZE = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_NORESERVE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"initial mmap\00", align 1
@MADV_HUGEPAGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"MADV_HUGEPAGE\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"map malloc\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"map realloc\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@MADV_DONTNEED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"MADV_DONTNEED\00", align 1
@.str.10 = private unnamed_addr constant [85 x i8] c"%.3f s/loop, %.3f ms/page, %10.3f MiB/s\09%4d succeed, %4d failed, %4d different pages\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca double, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* @_SC_PHYS_PAGES, align 4
  %21 = call i64 @sysconf(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @SIZE_MAX, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* @_SC_PAGESIZE, align 4
  %26 = call i64 @sysconf(i32 %25)
  %27 = udiv i64 %24, %26
  %28 = udiv i64 %27, 4
  %29 = icmp ugt i64 %22, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @SIZE_MAX, align 4
  %32 = sdiv i32 %31, 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %6, align 8
  br label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @_SC_PAGESIZE, align 4
  %36 = call i64 @sysconf(i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = mul i64 %37, %36
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %7, align 8
  br label %63

44:                                               ; preds = %39
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %62

55:                                               ; preds = %44
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @atoll(i8* %58)
  %60 = shl i32 %59, 20
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %55, %50
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @HPAGE_SHIFT, align 8
  %66 = lshr i64 %64, %65
  %67 = uitofp i64 %66 to double
  %68 = load i64, i64* %7, align 8
  %69 = lshr i64 %68, 20
  %70 = uitofp i64 %69 to double
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @HPAGE_SHIFT, align 8
  %73 = add i64 20, %72
  %74 = load i32, i32* @PAGE_SHIFT, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %73, %75
  %77 = sub i64 %76, 1
  %78 = lshr i64 %71, %77
  %79 = call i32 (i8*, double, double, i64, ...) @warnx(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), double %67, double %70, i64 %78)
  %80 = load i32, i32* @O_RDONLY, align 4
  %81 = call i64 @open(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  store i64 %81, i64* @pagemap_fd, align 8
  %82 = load i64, i64* @pagemap_fd, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %63
  %85 = call i32 @err(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %63
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* @HPAGE_SIZE, align 8
  %89 = urem i64 %87, %88
  %90 = load i64, i64* %7, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @HPAGE_SIZE, align 8
  %94 = add i64 %92, %93
  %95 = load i32, i32* @PROT_READ, align 4
  %96 = load i32, i32* @PROT_WRITE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @MAP_ANONYMOUS, align 4
  %99 = load i32, i32* @MAP_NORESERVE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @MAP_PRIVATE, align 4
  %102 = or i32 %100, %101
  %103 = call i8* @mmap(i32* null, i64 %94, i32 %97, i32 %102, i32 -1, i32 0)
  store i8* %103, i8** %8, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** @MAP_FAILED, align 8
  %106 = icmp eq i8* %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %86
  %108 = call i32 @err(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %86
  %110 = load i64, i64* @HPAGE_SIZE, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = ptrtoint i8* %111 to i64
  %113 = load i64, i64* @HPAGE_SIZE, align 8
  %114 = urem i64 %112, %113
  %115 = sub i64 %110, %114
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr i8, i8* %116, i64 %115
  store i8* %117, i8** %8, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i32, i32* @MADV_HUGEPAGE, align 4
  %121 = call i64 @madvise(i8* %118, i64 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %109
  %124 = call i32 @err(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %109
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* @HPAGE_SHIFT, align 8
  %128 = sub i64 %127, 1
  %129 = lshr i64 %126, %128
  store i64 %129, i64* %14, align 8
  %130 = load i64, i64* %14, align 8
  %131 = call i32* @malloc(i64 %130)
  store i32* %131, i32** %13, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %125
  br label %137

137:                                              ; preds = %136, %218
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = load i64, i64* %14, align 8
  %140 = call i32 @memset(i32* %138, i32 0, i64 %139)
  %141 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %142 = call i32 @clock_gettime(i32 %141, %struct.timespec* %10)
  %143 = load i8*, i8** %8, align 8
  store i8* %143, i8** %9, align 8
  br label %144

144:                                              ; preds = %214, %137
  %145 = load i8*, i8** %9, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr i8, i8* %146, i64 %147
  %149 = icmp ult i8* %145, %148
  br i1 %149, label %150, label %218

150:                                              ; preds = %144
  %151 = load i8*, i8** %9, align 8
  %152 = call i64 @allocate_transhuge(i8* %151)
  store i64 %152, i64* %18, align 8
  %153 = load i64, i64* %18, align 8
  %154 = icmp ult i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %203

158:                                              ; preds = %150
  %159 = load i64, i64* %18, align 8
  %160 = load i64, i64* @HPAGE_SHIFT, align 8
  %161 = load i32, i32* @PAGE_SHIFT, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 %160, %162
  %164 = lshr i64 %159, %163
  store i64 %164, i64* %19, align 8
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  %167 = load i64, i64* %19, align 8
  %168 = load i64, i64* %14, align 8
  %169 = icmp uge i64 %167, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %158
  %171 = load i32*, i32** %13, align 8
  %172 = load i64, i64* %19, align 8
  %173 = add i64 %172, 1
  %174 = call i32* @realloc(i32* %171, i64 %173)
  store i32* %174, i32** %13, align 8
  %175 = load i32*, i32** %13, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %170
  %178 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %170
  %180 = load i32*, i32** %13, align 8
  %181 = load i64, i64* %14, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i64, i64* %19, align 8
  %184 = add i64 %183, 1
  %185 = load i64, i64* %14, align 8
  %186 = sub i64 %184, %185
  %187 = call i32 @memset(i32* %182, i32 0, i64 %186)
  %188 = load i64, i64* %19, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %14, align 8
  br label %190

190:                                              ; preds = %179, %158
  %191 = load i32*, i32** %13, align 8
  %192 = load i64, i64* %19, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %190
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %17, align 4
  br label %199

199:                                              ; preds = %196, %190
  %200 = load i32*, i32** %13, align 8
  %201 = load i64, i64* %19, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32 1, i32* %202, align 4
  br label %203

203:                                              ; preds = %199, %155
  %204 = load i8*, i8** %9, align 8
  %205 = load i64, i64* @HPAGE_SIZE, align 8
  %206 = load i64, i64* @PAGE_SIZE, align 8
  %207 = sub i64 %205, %206
  %208 = load i32, i32* @MADV_DONTNEED, align 4
  %209 = call i64 @madvise(i8* %204, i64 %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = call i32 @err(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %203
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* @HPAGE_SIZE, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = getelementptr i8, i8* %216, i64 %215
  store i8* %217, i8** %9, align 8
  br label %144

218:                                              ; preds = %144
  %219 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %220 = call i32 @clock_gettime(i32 %219, %struct.timespec* %11)
  %221 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %222, %224
  %226 = sitofp i32 %225 to double
  %227 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %228, %230
  %232 = sitofp i32 %231 to double
  %233 = fdiv double %232, 1.000000e+09
  %234 = fadd double %226, %233
  store double %234, double* %12, align 8
  %235 = load double, double* %12, align 8
  %236 = load double, double* %12, align 8
  %237 = fmul double %236, 1.000000e+03
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* @HPAGE_SHIFT, align 8
  %240 = lshr i64 %238, %239
  %241 = uitofp i64 %240 to double
  %242 = fdiv double %237, %241
  %243 = load i64, i64* %7, align 8
  %244 = uitofp i64 %243 to double
  %245 = load double, double* %12, align 8
  %246 = fdiv double %244, %245
  %247 = fdiv double %246, 0x4130000000000000
  %248 = fptoui double %247 to i64
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %17, align 4
  %252 = call i32 (i8*, double, double, i64, ...) @warnx(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.10, i64 0, i64 0), double %235, double %242, i64 %248, i32 %249, i32 %250, i32 %251)
  br label %137
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @atoll(i8*) #1

declare dso_local i32 @warnx(i8*, double, double, i64, ...) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @madvise(i8*, i64, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @allocate_transhuge(i8*) #1

declare dso_local i32* @realloc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
