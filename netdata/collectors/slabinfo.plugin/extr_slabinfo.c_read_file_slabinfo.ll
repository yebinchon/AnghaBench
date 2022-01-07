; ModuleID = '/home/carl/AnghaBench/netdata/collectors/slabinfo.plugin/extr_slabinfo.c_read_file_slabinfo.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/slabinfo.plugin/extr_slabinfo.c_read_file_slabinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i32, i32, i32, i64, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"-> Reading procfile %s\00", align 1
@PLUGIN_SLABINFO_PROCFILE = common dso_local global i32 0, align 4
@read_file_slabinfo.ff = internal global i32* null, align 8
@read_file_slabinfo.slab_pagesize = internal global i64 0, align 8
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"   Discovered pagesize: %ld\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" ,:\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"<- Cannot open file '%s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"<- Cannot read file '%s'\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"   Read %lu lines from procfile\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"    Line %lu has only %lu words, skipping\00", align 1
@.str.7 = private unnamed_addr constant [84 x i8] c"    Updated slab %s: %lu %lu %lu %lu %lu / %lu %lu %lu / %lu %lu %lu / %lu %lu %hhu\00", align 1
@slabinfo_root = common dso_local global %struct.slabinfo* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.slabinfo* @read_file_slabinfo() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.slabinfo*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PLUGIN_SLABINFO_PROCFILE, align 4
  %7 = call i32 (i8*, ...) @slabdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i64, i64* @read_file_slabinfo.slab_pagesize, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load i32, i32* @_SC_PAGESIZE, align 4
  %16 = call i64 @sysconf(i32 %15)
  store i64 %16, i64* @read_file_slabinfo.slab_pagesize, align 8
  %17 = load i64, i64* @read_file_slabinfo.slab_pagesize, align 8
  %18 = call i32 (i8*, ...) @slabdebug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %14, %0
  %20 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %21 = icmp ne i32* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %28 = load i32, i32* @PLUGIN_SLABINFO_PROCFILE, align 4
  %29 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %30 = call i32* @procfile_reopen(i32* %27, i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32* %30, i32** @read_file_slabinfo.ff, align 8
  %31 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %32 = icmp ne i32* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @PLUGIN_SLABINFO_PROCFILE, align 4
  %39 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %44 = call i32* @procfile_readall(i32* %43)
  store i32* %44, i32** @read_file_slabinfo.ff, align 8
  %45 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %46 = icmp ne i32* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @PLUGIN_SLABINFO_PROCFILE, align 4
  %53 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = call i32 @exit(i32 0) #3
  unreachable

55:                                               ; preds = %42
  %56 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %57 = call i64 @procfile_lines(i32* %56)
  store i64 %57, i64* %1, align 8
  %58 = load i64, i64* %1, align 8
  %59 = call i32 (i8*, ...) @slabdebug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %58)
  store i64 2, i64* %2, align 8
  br label %60

60:                                               ; preds = %251, %55
  %61 = load i64, i64* %2, align 8
  %62 = load i64, i64* %1, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %254

64:                                               ; preds = %60
  %65 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %66 = load i64, i64* %2, align 8
  %67 = call i32 @procfile_linewords(i32* %65, i64 %66)
  %68 = icmp slt i32 %67, 14
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i64, i64* %2, align 8
  %74 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %75 = load i64, i64* %2, align 8
  %76 = call i32 @procfile_linewords(i32* %74, i64 %75)
  %77 = call i32 (i8*, ...) @slabdebug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %73, i32 %76)
  br label %251

78:                                               ; preds = %64
  %79 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %80 = load i64, i64* %2, align 8
  %81 = call i8* @procfile_lineword(i32* %79, i64 %80, i32 0)
  store i8* %81, i8** %3, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = call %struct.slabinfo* @get_slabstruct(i8* %82)
  store %struct.slabinfo* %83, %struct.slabinfo** %4, align 8
  %84 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %85 = load i64, i64* %2, align 8
  %86 = call i8* @procfile_lineword(i32* %84, i64 %85, i32 1)
  %87 = call i8* @str2uint64_t(i8* %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %90 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %92 = load i64, i64* %2, align 8
  %93 = call i8* @procfile_lineword(i32* %91, i64 %92, i32 2)
  %94 = call i8* @str2uint64_t(i8* %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %97 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %99 = load i64, i64* %2, align 8
  %100 = call i8* @procfile_lineword(i32* %98, i64 %99, i32 3)
  %101 = call i8* @str2uint64_t(i8* %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %104 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %106 = load i64, i64* %2, align 8
  %107 = call i8* @procfile_lineword(i32* %105, i64 %106, i32 4)
  %108 = call i8* @str2uint64_t(i8* %107)
  %109 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %110 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %109, i32 0, i32 13
  store i8* %108, i8** %110, align 8
  %111 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %112 = load i64, i64* %2, align 8
  %113 = call i8* @procfile_lineword(i32* %111, i64 %112, i32 5)
  %114 = call i8* @str2uint64_t(i8* %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %117 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  %118 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %119 = load i64, i64* %2, align 8
  %120 = call i8* @procfile_lineword(i32* %118, i64 %119, i32 7)
  %121 = call i8* @str2uint64_t(i8* %120)
  %122 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %123 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %122, i32 0, i32 12
  store i8* %121, i8** %123, align 8
  %124 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %125 = load i64, i64* %2, align 8
  %126 = call i8* @procfile_lineword(i32* %124, i64 %125, i32 8)
  %127 = call i8* @str2uint64_t(i8* %126)
  %128 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %129 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %128, i32 0, i32 11
  store i8* %127, i8** %129, align 8
  %130 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %131 = load i64, i64* %2, align 8
  %132 = call i8* @procfile_lineword(i32* %130, i64 %131, i32 9)
  %133 = call i8* @str2uint64_t(i8* %132)
  %134 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %135 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %134, i32 0, i32 10
  store i8* %133, i8** %135, align 8
  %136 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %137 = load i64, i64* %2, align 8
  %138 = call i8* @procfile_lineword(i32* %136, i64 %137, i32 11)
  %139 = call i8* @str2uint64_t(i8* %138)
  %140 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %141 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %140, i32 0, i32 9
  store i8* %139, i8** %141, align 8
  %142 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %143 = load i64, i64* %2, align 8
  %144 = call i8* @procfile_lineword(i32* %142, i64 %143, i32 12)
  %145 = call i8* @str2uint64_t(i8* %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %148 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load i32*, i32** @read_file_slabinfo.ff, align 8
  %150 = load i64, i64* %2, align 8
  %151 = call i8* @procfile_lineword(i32* %149, i64 %150, i32 13)
  %152 = call i8* @str2uint64_t(i8* %151)
  %153 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %154 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %153, i32 0, i32 8
  store i8* %152, i8** %154, align 8
  %155 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %156 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @read_file_slabinfo.slab_pagesize, align 8
  %159 = mul nsw i64 %157, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %5, align 4
  %161 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %162 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = mul nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %169 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %168, i32 0, i32 5
  store i8* %167, i8** %169, align 8
  %170 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %171 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %170, i32 0, i32 5
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %174 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %177 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %175, %178
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i8*
  %182 = ptrtoint i8* %172 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = inttoptr i64 %184 to i8*
  %186 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %187 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %186, i32 0, i32 7
  store i8* %185, i8** %187, align 8
  %188 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %189 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %78
  %193 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %194 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 100, %195
  %197 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %198 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sdiv i32 %196, %199
  %201 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %202 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %201, i32 0, i32 6
  store i32 %200, i32* %202, align 8
  br label %206

203:                                              ; preds = %78
  %204 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %205 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %204, i32 0, i32 6
  store i32 0, i32* %205, align 8
  br label %206

206:                                              ; preds = %203, %192
  %207 = load i8*, i8** %3, align 8
  %208 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %209 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %212 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %215 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %218 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %217, i32 0, i32 13
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %221 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %224 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %223, i32 0, i32 12
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %227 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %226, i32 0, i32 11
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %230 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %229, i32 0, i32 10
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %233 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %232, i32 0, i32 9
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %236 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %239 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %238, i32 0, i32 8
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %242 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %241, i32 0, i32 5
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %245 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %244, i32 0, i32 7
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %248 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i8*, ...) @slabdebug(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.7, i64 0, i64 0), i8* %207, i32 %210, i32 %213, i32 %216, i8* %219, i64 %222, i8* %225, i8* %228, i8* %231, i8* %234, i32 %237, i8* %240, i8* %243, i8* %246, i32 %249)
  br label %251

251:                                              ; preds = %206, %72
  %252 = load i64, i64* %2, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %2, align 8
  br label %60

254:                                              ; preds = %60
  %255 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo_root, align 8
  ret %struct.slabinfo* %255
}

declare dso_local i32 @slabdebug(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32* @procfile_reopen(i32*, i32, i8*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @procfile_lines(i32*) #1

declare dso_local i32 @procfile_linewords(i32*, i64) #1

declare dso_local i8* @procfile_lineword(i32*, i64, i32) #1

declare dso_local %struct.slabinfo* @get_slabstruct(i8*) #1

declare dso_local i8* @str2uint64_t(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
