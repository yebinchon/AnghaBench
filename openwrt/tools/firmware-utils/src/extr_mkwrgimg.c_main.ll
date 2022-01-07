; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkwrgimg.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkwrgimg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrg_header = type { i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bd:i:o:s:O:h\00", align 1
@big_endian = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@dev_name = common dso_local global i32* null, align 8
@ifname = common dso_local global i32* null, align 8
@ofname = common dso_local global i32* null, align 8
@signature = common dso_local global i32* null, align 8
@offset = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no signature specified\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"no device name specified\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"stat failed on %s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for reading\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"unable to read from file %s\00", align 1
@WRG_MAGIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"unable to write to file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.wrg_header*, align 8
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

20:                                               ; preds = %2, %51
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %52

27:                                               ; preds = %20
  %28 = load i32, i32* %14, align 4
  switch i32 %28, label %48 [
    i32 98, label %29
    i32 100, label %30
    i32 105, label %33
    i32 111, label %36
    i32 115, label %39
    i32 79, label %42
    i32 104, label %45
  ]

29:                                               ; preds = %27
  store i32 1, i32* @big_endian, align 4
  br label %51

30:                                               ; preds = %27
  %31 = load i8*, i8** @optarg, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** @dev_name, align 8
  br label %51

33:                                               ; preds = %27
  %34 = load i8*, i8** @optarg, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** @ifname, align 8
  br label %51

36:                                               ; preds = %27
  %37 = load i8*, i8** @optarg, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** @ofname, align 8
  br label %51

39:                                               ; preds = %27
  %40 = load i8*, i8** @optarg, align 8
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** @signature, align 8
  br label %51

42:                                               ; preds = %27
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @strtoul(i8* %43, i32* null, i32 0)
  store i32 %44, i32* @offset, align 4
  br label %51

45:                                               ; preds = %27
  %46 = load i32, i32* @EXIT_SUCCESS, align 4
  %47 = call i32 @usage(i32 %46)
  br label %51

48:                                               ; preds = %27
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  %50 = call i32 @usage(i32 %49)
  br label %51

51:                                               ; preds = %48, %45, %42, %39, %36, %33, %30, %29
  br label %20

52:                                               ; preds = %26
  %53 = load i32*, i32** @signature, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %187

57:                                               ; preds = %52
  %58 = load i32*, i32** @ifname, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %187

62:                                               ; preds = %57
  %63 = load i32*, i32** @ofname, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %187

67:                                               ; preds = %62
  %68 = load i32*, i32** @dev_name, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %187

72:                                               ; preds = %67
  %73 = load i32*, i32** @ifname, align 8
  %74 = call i32 @stat(i32* %73, %struct.stat* %8)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32*, i32** @ifname, align 8
  %79 = call i32 @ERRS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %78)
  br label %187

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 24
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i8* @malloc(i32 %86)
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %80
  %91 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %187

92:                                               ; preds = %80
  %93 = load i32*, i32** @ifname, align 8
  %94 = call i32* @fopen(i32* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %94, i32** %13, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32*, i32** @ifname, align 8
  %99 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32* %98)
  br label %184

100:                                              ; preds = %92
  store i64 0, i64* @errno, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 24
  %103 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @fread(i8* %102, i32 %104, i32 1, i32* %105)
  %107 = load i64, i64* @errno, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i32*, i32** @ifname, align 8
  %111 = call i32 @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32* %110)
  br label %181

112:                                              ; preds = %100
  %113 = load i8*, i8** %7, align 8
  %114 = bitcast i8* %113 to %struct.wrg_header*
  store %struct.wrg_header* %114, %struct.wrg_header** %6, align 8
  %115 = load %struct.wrg_header*, %struct.wrg_header** %6, align 8
  %116 = call i32 @memset(%struct.wrg_header* %115, i8 signext 0, i32 24)
  %117 = load %struct.wrg_header*, %struct.wrg_header** %6, align 8
  %118 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** @signature, align 8
  %121 = call i32 @strncpy(i32 %119, i32* %120, i32 4)
  %122 = load %struct.wrg_header*, %struct.wrg_header** %6, align 8
  %123 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** @dev_name, align 8
  %126 = call i32 @strncpy(i32 %124, i32* %125, i32 4)
  %127 = load %struct.wrg_header*, %struct.wrg_header** %6, align 8
  %128 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %127, i32 0, i32 3
  %129 = load i32, i32* @WRG_MAGIC, align 4
  %130 = call i32 @put_u32(i32* %128, i32 %129)
  %131 = load %struct.wrg_header*, %struct.wrg_header** %6, align 8
  %132 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %131, i32 0, i32 2
  %133 = load i32, i32* @WRG_MAGIC, align 4
  %134 = call i32 @put_u32(i32* %132, i32 %133)
  %135 = load %struct.wrg_header*, %struct.wrg_header** %6, align 8
  %136 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @put_u32(i32* %136, i32 %138)
  %140 = load %struct.wrg_header*, %struct.wrg_header** %6, align 8
  %141 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %140, i32 0, i32 0
  %142 = load i32, i32* @offset, align 4
  %143 = call i32 @put_u32(i32* %141, i32 %142)
  %144 = load %struct.wrg_header*, %struct.wrg_header** %6, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 24
  %147 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @get_digest(%struct.wrg_header* %144, i8* %146, i32 %148)
  %150 = load i32*, i32** @ofname, align 8
  %151 = call i32* @fopen(i32* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32* %151, i32** %12, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %112
  %155 = load i32*, i32** @ofname, align 8
  %156 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32* %155)
  br label %181

157:                                              ; preds = %112
  store i64 0, i64* @errno, align 8
  %158 = load i8*, i8** %7, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @fwrite(i8* %158, i32 %159, i32 1, i32* %160)
  %162 = load i64, i64* @errno, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i32*, i32** @ofname, align 8
  %166 = call i32 @ERRS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32* %165)
  br label %171

167:                                              ; preds = %157
  %168 = load i32*, i32** %12, align 8
  %169 = call i32 @fflush(i32* %168)
  %170 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %167, %164
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @fclose(i32* %172)
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @EXIT_SUCCESS, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i32*, i32** @ofname, align 8
  %179 = call i32 @unlink(i32* %178)
  br label %180

180:                                              ; preds = %177, %171
  br label %181

181:                                              ; preds = %180, %154, %109
  %182 = load i32*, i32** %13, align 8
  %183 = call i32 @fclose(i32* %182)
  br label %184

184:                                              ; preds = %181, %97
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @free(i8* %185)
  br label %187

187:                                              ; preds = %184, %90, %77, %70, %65, %60, %55
  %188 = load i32, i32* %11, align 4
  ret i32 %188
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

declare dso_local i32 @memset(%struct.wrg_header*, i8 signext, i32) #1

declare dso_local i32 @strncpy(i32, i32*, i32) #1

declare dso_local i32 @put_u32(i32*, i32) #1

declare dso_local i32 @get_digest(%struct.wrg_header*, i8*, i32) #1

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
