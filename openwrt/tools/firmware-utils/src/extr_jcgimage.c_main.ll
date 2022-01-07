; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_jcgimage.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_jcgimage.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jcg_header = type { i32 }
%struct.uimage_header = type { i32 }

@MAXSIZE = common dso_local global i64 0, align 8
@MODE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"o:k:f:u:v:m:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@MODE_UIMAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"-k cannot be combined with -u\00", align 1
@MODE_KR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"-f cannot be combined with -u\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"-u cannot be combined with -k and -r\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"illegal arg \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"specify either -u or -k and -r\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"need -k and -r\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"payload too large: %zd > %zd\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"cannot open \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"cannot grow \22%s\22 to %zd bytes\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"cannot mmap \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"cannot copy %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jcg_header*, align 8
  %7 = alloca %struct.uimage_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %26 = load i64, i64* @MAXSIZE, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i32, i32* @MODE_UNKNOWN, align 4
  store i32 %27, i32* %15, align 4
  %28 = call i32 @assert(i32 0)
  %29 = call i32 @assert(i32 0)
  %30 = call i32 (...) @set_source_date_epoch()
  br label %31

31:                                               ; preds = %79, %2
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = call i32 @getopt(i32 %32, i8** %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %8, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %80

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %77 [
    i32 111, label %38
    i32 107, label %40
    i32 102, label %49
    i32 117, label %58
    i32 109, label %67
    i32 118, label %74
    i32 104, label %76
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** %9, align 8
  br label %79

40:                                               ; preds = %36
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @MODE_UIMAGE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* @MODE_KR, align 4
  store i32 %47, i32* %15, align 4
  %48 = load i8*, i8** @optarg, align 8
  store i8* %48, i8** %10, align 8
  br label %79

49:                                               ; preds = %36
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @MODE_UIMAGE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* @MODE_KR, align 4
  store i32 %56, i32* %15, align 4
  %57 = load i8*, i8** @optarg, align 8
  store i8* %57, i8** %11, align 8
  br label %79

58:                                               ; preds = %36
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @MODE_KR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* @MODE_UIMAGE, align 4
  store i32 %65, i32* %15, align 4
  %66 = load i8*, i8** @optarg, align 8
  store i8* %66, i8** %10, align 8
  br label %79

67:                                               ; preds = %36
  %68 = load i8*, i8** @optarg, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i64 @strtoimax(i8* %71, i8** %14, i32 10)
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %70, %67
  br label %79

74:                                               ; preds = %36
  %75 = load i8*, i8** @optarg, align 8
  store i8* %75, i8** %12, align 8
  br label %79

76:                                               ; preds = %36
  br label %77

77:                                               ; preds = %36, %76
  %78 = call i32 (...) @usage()
  br label %79

79:                                               ; preds = %77, %74, %73, %64, %55, %46, %38
  br label %31

80:                                               ; preds = %31
  %81 = load i32, i32* @optind, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* @optind, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %84, %80
  %92 = load i8*, i8** %9, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @MODE_UNKNOWN, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %96
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @MODE_KR, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load i8*, i8** %10, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i8*, i8** %11, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %106
  %113 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @opensize(i8* %115, i64* %20)
  store i32 %116, i32* %18, align 4
  br label %117

117:                                              ; preds = %114, %102
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 @opensize(i8* %118, i64* %19)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @MODE_UIMAGE, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  store i64 4, i64* %23, align 8
  %124 = load i64, i64* %19, align 8
  %125 = add i64 %124, 4
  store i64 %125, i64* %21, align 8
  %126 = load i64, i64* %21, align 8
  %127 = add i64 4, %126
  store i64 %127, i64* %22, align 8
  br label %137

128:                                              ; preds = %117
  store i64 8, i64* %23, align 8
  %129 = load i64, i64* %19, align 8
  %130 = add i64 8, %129
  store i64 %130, i64* %24, align 8
  %131 = load i64, i64* %19, align 8
  %132 = add i64 4, %131
  %133 = load i64, i64* %20, align 8
  %134 = add i64 %132, %133
  store i64 %134, i64* %21, align 8
  %135 = load i64, i64* %21, align 8
  %136 = add i64 4, %135
  store i64 %136, i64* %22, align 8
  br label %137

137:                                              ; preds = %128, %123
  %138 = load i64, i64* %22, align 8
  %139 = load i64, i64* %13, align 8
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i64, i64* %22, align 8
  %143 = load i64, i64* %13, align 8
  %144 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %142, i64 %143)
  br label %145

145:                                              ; preds = %141, %137
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* @O_RDWR, align 4
  %148 = load i32, i32* @O_CREAT, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @O_TRUNC, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @open(i8* %146, i32 %151, i32 420)
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  %156 = load i8*, i8** %9, align 8
  %157 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %155, %145
  %159 = load i32, i32* %16, align 4
  %160 = load i64, i64* %22, align 8
  %161 = call i32 @ftruncate(i32 %159, i64 %160)
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i8*, i8** %9, align 8
  %165 = load i64, i64* %22, align 8
  %166 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %164, i64 %165)
  br label %167

167:                                              ; preds = %163, %158
  %168 = load i64, i64* %22, align 8
  %169 = load i32, i32* @PROT_READ, align 4
  %170 = load i32, i32* @PROT_WRITE, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @MAP_SHARED, align 4
  %173 = load i32, i32* %16, align 4
  %174 = call i8* @mmap(i32* null, i64 %168, i32 %171, i32 %172, i32 %173, i32 0)
  store i8* %174, i8** %25, align 8
  %175 = load i8*, i8** %25, align 8
  %176 = getelementptr i8, i8* %175, i64 4
  %177 = bitcast i8* %176 to %struct.uimage_header*
  store %struct.uimage_header* %177, %struct.uimage_header** %7, align 8
  %178 = load i8*, i8** %25, align 8
  %179 = load i8*, i8** @MAP_FAILED, align 8
  %180 = icmp eq i8* %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %167
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %181, %167
  %185 = load i32, i32* %17, align 4
  %186 = load i8*, i8** %25, align 8
  %187 = load i64, i64* %23, align 8
  %188 = getelementptr i8, i8* %186, i64 %187
  %189 = load i64, i64* %19, align 8
  %190 = call i64 @read(i32 %185, i8* %188, i64 %189)
  %191 = load i64, i64* %19, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i8*, i8** %10, align 8
  %195 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %193, %184
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* @MODE_KR, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %196
  %201 = load i32, i32* %18, align 4
  %202 = load i8*, i8** %25, align 8
  %203 = load i64, i64* %24, align 8
  %204 = getelementptr i8, i8* %202, i64 %203
  %205 = load i64, i64* %20, align 8
  %206 = call i64 @read(i32 %201, i8* %204, i64 %205)
  %207 = load i64, i64* %20, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %200
  %210 = load i8*, i8** %11, align 8
  %211 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %209, %200
  %213 = load %struct.uimage_header*, %struct.uimage_header** %7, align 8
  %214 = load i64, i64* %19, align 8
  %215 = load i64, i64* %20, align 8
  %216 = call i32 @mkuheader(%struct.uimage_header* %213, i64 %214, i64 %215)
  br label %233

217:                                              ; preds = %196
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @MODE_UIMAGE, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %217
  %222 = load %struct.uimage_header*, %struct.uimage_header** %7, align 8
  %223 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ntohl(i32 %224)
  %226 = load %struct.uimage_header*, %struct.uimage_header** %7, align 8
  %227 = bitcast %struct.uimage_header* %226 to i8*
  %228 = getelementptr i8, i8* %227, i64 4
  %229 = load i64, i64* %21, align 8
  %230 = sub i64 %229, 4
  %231 = call i32 @craftcrc(i32 %225, i8* %228, i64 %230)
  br label %232

232:                                              ; preds = %221, %217
  br label %233

233:                                              ; preds = %232, %212
  %234 = load i8*, i8** %25, align 8
  %235 = load i64, i64* %21, align 8
  %236 = load i8*, i8** %12, align 8
  %237 = call i32 @mkjcgheader(i8* %234, i64 %235, i8* %236)
  %238 = load i8*, i8** %25, align 8
  %239 = load i64, i64* %22, align 8
  %240 = call i32 @munmap(i8* %238, i64 %239)
  %241 = load i32, i32* %16, align 4
  %242 = call i32 @close(i32 %241)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_source_date_epoch(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strtoimax(i8*, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @opensize(i8*, i64*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @mkuheader(%struct.uimage_header*, i64, i64) #1

declare dso_local i32 @craftcrc(i32, i8*, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @mkjcgheader(i8*, i64, i8*) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
