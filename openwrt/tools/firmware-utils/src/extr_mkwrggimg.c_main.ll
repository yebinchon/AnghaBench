; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkwrggimg.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkwrggimg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrgg03_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"bd:i:m:o:s:v:B:O:h\00", align 1
@big_endian = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@buildno = common dso_local global i32* null, align 8
@devname = common dso_local global i32* null, align 8
@ifname = common dso_local global i32* null, align 8
@model = common dso_local global i32* null, align 8
@ofname = common dso_local global i32* null, align 8
@signature = common dso_local global i32* null, align 8
@version = common dso_local global i32* null, align 8
@offset = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no signature specified\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"no device name specified\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"no model name specified\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"no build number specified\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"no version specified\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"stat failed on %s\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for reading\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [28 x i8] c"unable to read from file %s\00", align 1
@WRGG03_MAGIC = common dso_local global i32 0, align 4
@flag = common dso_local global i32 0, align 4
@reserve = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"unable to write to file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.wrgg03_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @basename(i8* %18)
  store i32 %19, i32* @progname, align 4
  br label %20

20:                                               ; preds = %2, %60
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %61

27:                                               ; preds = %20
  %28 = load i32, i32* %14, align 4
  switch i32 %28, label %57 [
    i32 98, label %29
    i32 66, label %30
    i32 100, label %33
    i32 105, label %36
    i32 109, label %39
    i32 111, label %42
    i32 115, label %45
    i32 118, label %48
    i32 79, label %51
    i32 104, label %54
  ]

29:                                               ; preds = %27
  store i32 1, i32* @big_endian, align 4
  br label %60

30:                                               ; preds = %27
  %31 = load i8*, i8** @optarg, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** @buildno, align 8
  br label %60

33:                                               ; preds = %27
  %34 = load i8*, i8** @optarg, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** @devname, align 8
  br label %60

36:                                               ; preds = %27
  %37 = load i8*, i8** @optarg, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** @ifname, align 8
  br label %60

39:                                               ; preds = %27
  %40 = load i8*, i8** @optarg, align 8
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** @model, align 8
  br label %60

42:                                               ; preds = %27
  %43 = load i8*, i8** @optarg, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** @ofname, align 8
  br label %60

45:                                               ; preds = %27
  %46 = load i8*, i8** @optarg, align 8
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** @signature, align 8
  br label %60

48:                                               ; preds = %27
  %49 = load i8*, i8** @optarg, align 8
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** @version, align 8
  br label %60

51:                                               ; preds = %27
  %52 = load i8*, i8** @optarg, align 8
  %53 = call i32 @strtoul(i8* %52, i32* null, i32 0)
  store i32 %53, i32* @offset, align 4
  br label %60

54:                                               ; preds = %27
  %55 = load i32, i32* @EXIT_SUCCESS, align 4
  %56 = call i32 @usage(i32 %55)
  br label %60

57:                                               ; preds = %27
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = call i32 @usage(i32 %58)
  br label %60

60:                                               ; preds = %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %29
  br label %20

61:                                               ; preds = %26
  %62 = load i32*, i32** @signature, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %236

66:                                               ; preds = %61
  %67 = load i32*, i32** @ifname, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %236

71:                                               ; preds = %66
  %72 = load i32*, i32** @ofname, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %236

76:                                               ; preds = %71
  %77 = load i32*, i32** @devname, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %236

81:                                               ; preds = %76
  %82 = load i32*, i32** @model, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %236

86:                                               ; preds = %81
  %87 = load i32*, i32** @buildno, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %236

91:                                               ; preds = %86
  %92 = load i32*, i32** @version, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %236

96:                                               ; preds = %91
  %97 = load i32*, i32** @ifname, align 8
  %98 = call i32 @stat(i32* %97, %struct.stat* %8)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32*, i32** @ifname, align 8
  %103 = call i32 @ERRS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %102)
  br label %236

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %107, 44
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i8* @malloc(i32 %110)
  store i8* %111, i8** %7, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %104
  %115 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %236

116:                                              ; preds = %104
  %117 = load i32*, i32** @ifname, align 8
  %118 = call i32* @fopen(i32* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32* %118, i32** %13, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32*, i32** @ifname, align 8
  %123 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32* %122)
  br label %233

124:                                              ; preds = %116
  store i64 0, i64* @errno, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 44
  %127 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @fread(i8* %126, i32 %128, i32 1, i32* %129)
  %131 = load i64, i64* @errno, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load i32*, i32** @ifname, align 8
  %135 = call i32 @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32* %134)
  br label %230

136:                                              ; preds = %124
  %137 = load i8*, i8** %7, align 8
  %138 = bitcast i8* %137 to %struct.wrgg03_header*
  store %struct.wrgg03_header* %138, %struct.wrgg03_header** %6, align 8
  %139 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %140 = call i32 @memset(%struct.wrgg03_header* %139, i8 signext 0, i32 44)
  %141 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %142 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** @signature, align 8
  %145 = call i32 @strncpy(i32 %143, i32* %144, i32 4)
  %146 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %147 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %146, i32 0, i32 9
  %148 = load i32, i32* @WRGG03_MAGIC, align 4
  %149 = call i32 @put_u32(i32* %147, i32 %148, i32 0)
  %150 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %151 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %150, i32 0, i32 8
  %152 = load i32, i32* @WRGG03_MAGIC, align 4
  %153 = call i32 @put_u32(i32* %151, i32 %152, i32 0)
  %154 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %155 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** @version, align 8
  %158 = call i32 @strncpy(i32 %156, i32* %157, i32 4)
  %159 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %160 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** @model, align 8
  %163 = call i32 @strncpy(i32 %161, i32* %162, i32 4)
  %164 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %165 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %164, i32 0, i32 5
  %166 = load i32, i32* @flag, align 4
  %167 = call i32 @put_u32(i32* %165, i32 %166, i32 0)
  %168 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %169 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %168, i32 0, i32 4
  %170 = load i32, i32* @reserve, align 4
  %171 = call i32 @put_u32(i32* %169, i32 %170, i32 0)
  %172 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %173 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** @buildno, align 8
  %176 = call i32 @strncpy(i32 %174, i32* %175, i32 4)
  %177 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %178 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @big_endian, align 4
  %182 = call i32 @put_u32(i32* %178, i32 %180, i32 %181)
  %183 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %184 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %183, i32 0, i32 1
  %185 = load i32, i32* @offset, align 4
  %186 = load i32, i32* @big_endian, align 4
  %187 = call i32 @put_u32(i32* %184, i32 %185, i32 %186)
  %188 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %189 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** @devname, align 8
  %192 = call i32 @strncpy(i32 %190, i32* %191, i32 4)
  %193 = load %struct.wrgg03_header*, %struct.wrgg03_header** %6, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 44
  %196 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @get_digest(%struct.wrgg03_header* %193, i8* %195, i32 %197)
  %199 = load i32*, i32** @ofname, align 8
  %200 = call i32* @fopen(i32* %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i32* %200, i32** %12, align 8
  %201 = load i32*, i32** %12, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %136
  %204 = load i32*, i32** @ofname, align 8
  %205 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32* %204)
  br label %230

206:                                              ; preds = %136
  store i64 0, i64* @errno, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load i32*, i32** %12, align 8
  %210 = call i32 @fwrite(i8* %207, i32 %208, i32 1, i32* %209)
  %211 = load i64, i64* @errno, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load i32*, i32** @ofname, align 8
  %215 = call i32 @ERRS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32* %214)
  br label %220

216:                                              ; preds = %206
  %217 = load i32*, i32** %12, align 8
  %218 = call i32 @fflush(i32* %217)
  %219 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %216, %213
  %221 = load i32*, i32** %12, align 8
  %222 = call i32 @fclose(i32* %221)
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @EXIT_SUCCESS, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i32*, i32** @ofname, align 8
  %228 = call i32 @unlink(i32* %227)
  br label %229

229:                                              ; preds = %226, %220
  br label %230

230:                                              ; preds = %229, %203, %133
  %231 = load i32*, i32** %13, align 8
  %232 = call i32 @fclose(i32* %231)
  br label %233

233:                                              ; preds = %230, %121
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 @free(i8* %234)
  br label %236

236:                                              ; preds = %233, %114, %101, %94, %89, %84, %79, %74, %69, %64
  %237 = load i32, i32* %11, align 4
  ret i32 %237
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @ERRS(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.wrgg03_header*, i8 signext, i32) #1

declare dso_local i32 @strncpy(i32, i32*, i32) #1

declare dso_local i32 @put_u32(i32*, i32, i32) #1

declare dso_local i32 @get_digest(%struct.wrgg03_header*, i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
