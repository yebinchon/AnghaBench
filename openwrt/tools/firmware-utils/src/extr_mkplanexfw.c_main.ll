; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkplanexfw.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkplanexfw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.stat = type { i32 }
%struct.planex_hdr = type { i32, i32, i32*, i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"B:i:o:v:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@board_id = common dso_local global i32* null, align 8
@ifname = common dso_local global i32* null, align 8
@ofname = common dso_local global i32* null, align 8
@version = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no board specified\00", align 1
@board = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"unknown board '%s'\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"stat failed on %s\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"file '%s' is too big - max size: 0x%08X (exceeds %lu bytes)\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for reading\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"unable to read from file %s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"unable to write to file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.planex_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @basename(i8* %20)
  store i32 %21, i32* @progname, align 4
  br label %22

22:                                               ; preds = %2, %48
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %49

29:                                               ; preds = %22
  %30 = load i32, i32* %16, align 4
  switch i32 %30, label %45 [
    i32 66, label %31
    i32 105, label %34
    i32 111, label %37
    i32 118, label %40
    i32 104, label %42
  ]

31:                                               ; preds = %29
  %32 = load i8*, i8** @optarg, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** @board_id, align 8
  br label %48

34:                                               ; preds = %29
  %35 = load i8*, i8** @optarg, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** @ifname, align 8
  br label %48

37:                                               ; preds = %29
  %38 = load i8*, i8** @optarg, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** @ofname, align 8
  br label %48

40:                                               ; preds = %29
  %41 = load i8*, i8** @optarg, align 8
  store i8* %41, i8** @version, align 8
  br label %48

42:                                               ; preds = %29
  %43 = load i32, i32* @EXIT_SUCCESS, align 4
  %44 = call i32 @usage(i32 %43)
  br label %48

45:                                               ; preds = %29
  %46 = load i32, i32* @EXIT_FAILURE, align 4
  %47 = call i32 @usage(i32 %46)
  br label %48

48:                                               ; preds = %45, %42, %40, %37, %34, %31
  br label %22

49:                                               ; preds = %28
  %50 = load i32*, i32** @board_id, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %220

54:                                               ; preds = %49
  %55 = load i32*, i32** @board_id, align 8
  %56 = call %struct.TYPE_3__* @find_board(i32* %55)
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** @board, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board, align 8
  %58 = icmp eq %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** @board_id, align 8
  %61 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %60)
  br label %220

62:                                               ; preds = %54
  %63 = load i32*, i32** @ifname, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %220

67:                                               ; preds = %62
  %68 = load i32*, i32** @ofname, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %220

72:                                               ; preds = %67
  %73 = load i32*, i32** @ifname, align 8
  %74 = call i32 @stat(i32* %73, %struct.stat* %9)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32*, i32** @ifname, align 8
  %79 = call i32 @ERRS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %78)
  br label %220

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load i32*, i32** @ifname, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %93, %96
  %98 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32* %88, i32 %91, i32 %97)
  br label %220

99:                                               ; preds = %80
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 65536
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i8* @malloc(i32 %104)
  store i8* %105, i8** %10, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %99
  %109 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %220

110:                                              ; preds = %99
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @memset(i8* %111, i32 255, i32 %112)
  %114 = load i8*, i8** %10, align 8
  %115 = bitcast i8* %114 to %struct.planex_hdr*
  store %struct.planex_hdr* %115, %struct.planex_hdr** %11, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @HOST_TO_BE32(i32 %118)
  %120 = load %struct.planex_hdr*, %struct.planex_hdr** %11, align 8
  %121 = getelementptr inbounds %struct.planex_hdr, %struct.planex_hdr* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.planex_hdr*, %struct.planex_hdr** %11, align 8
  %128 = getelementptr inbounds %struct.planex_hdr, %struct.planex_hdr* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %126, i32* %130, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.planex_hdr*, %struct.planex_hdr** %11, align 8
  %137 = getelementptr inbounds %struct.planex_hdr, %struct.planex_hdr* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %135, i32* %139, align 4
  %140 = load %struct.planex_hdr*, %struct.planex_hdr** %11, align 8
  %141 = getelementptr inbounds %struct.planex_hdr, %struct.planex_hdr* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i8*, i8** @version, align 8
  %144 = call i32 @snprintf(i32 %142, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %143)
  %145 = load i32*, i32** @ifname, align 8
  %146 = call i32* @fopen(i32* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %146, i32** %15, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %110
  %150 = load i32*, i32** @ifname, align 8
  %151 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32* %150)
  br label %217

152:                                              ; preds = %110
  store i64 0, i64* @errno, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 24
  %155 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 @fread(i8* %154, i32 %156, i32 1, i32* %157)
  %159 = load i64, i64* @errno, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load i32*, i32** @ifname, align 8
  %163 = call i32 @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32* %162)
  br label %214

164:                                              ; preds = %152
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @HOST_TO_BE32(i32 %167)
  store i8* %168, i8** %13, align 8
  %169 = call i32 @sha1_starts(i32* %12)
  %170 = bitcast i8** %13 to i8*
  %171 = call i32 @sha1_update(i32* %12, i8* %170, i32 8)
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 24
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** @board, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @sha1_update(i32* %12, i8* %173, i32 %176)
  %178 = load %struct.planex_hdr*, %struct.planex_hdr** %11, align 8
  %179 = getelementptr inbounds %struct.planex_hdr, %struct.planex_hdr* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @sha1_finish(i32* %12, i32 %180)
  %182 = load i32*, i32** @ofname, align 8
  %183 = call i32* @fopen(i32* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32* %183, i32** %14, align 8
  %184 = load i32*, i32** %14, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %164
  %187 = load i32*, i32** @ofname, align 8
  %188 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32* %187)
  br label %214

189:                                              ; preds = %164
  store i64 0, i64* @errno, align 8
  %190 = load i8*, i8** %10, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32*, i32** %14, align 8
  %193 = call i32 @fwrite(i8* %190, i32 %191, i32 1, i32* %192)
  %194 = load i64, i64* @errno, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load i32*, i32** @ofname, align 8
  %198 = call i32 @ERRS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32* %197)
  br label %204

199:                                              ; preds = %189
  %200 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %199
  %202 = load i32*, i32** %14, align 8
  %203 = call i32 @fflush(i32* %202)
  br label %204

204:                                              ; preds = %201, %196
  %205 = load i32*, i32** %14, align 8
  %206 = call i32 @fclose(i32* %205)
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @EXIT_SUCCESS, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load i32*, i32** @ofname, align 8
  %212 = call i32 @unlink(i32* %211)
  br label %213

213:                                              ; preds = %210, %204
  br label %214

214:                                              ; preds = %213, %186, %161
  %215 = load i32*, i32** %15, align 8
  %216 = call i32 @fclose(i32* %215)
  br label %217

217:                                              ; preds = %214, %149
  %218 = load i8*, i8** %10, align 8
  %219 = call i32 @free(i8* %218)
  br label %220

220:                                              ; preds = %217, %108, %87, %77, %70, %65, %59, %52
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local %struct.TYPE_3__* @find_board(i32*) #1

declare dso_local i32 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @ERRS(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @HOST_TO_BE32(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @sha1_starts(i32*) #1

declare dso_local i32 @sha1_update(i32*, i8*, i32) #1

declare dso_local i32 @sha1_finish(i32*, i32) #1

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
