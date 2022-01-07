; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_seama.c_extract_file.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_seama.c_extract_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@MAX_SEAMA_META_SIZE = common dso_local global i32 0, align 4
@o_msize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"SEAMA: need meta for searching image.\0A\00", align 1
@o_isize = common dso_local global i64 0, align 8
@o_images = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"SEAMA: '%s' is not a seama file !\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEAMA_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"SEAMA: found image @ '%s', image size: %zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"SEAMA: unable to open '%s' for writting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @extract_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %14 = load i32, i32* @MAX_SEAMA_META_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca %struct.TYPE_5__, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i64, i64* @o_msize, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %204

22:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %200, %22
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @o_isize, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %203

27:                                               ; preds = %23
  %28 = load i8**, i8*** @o_images, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @verify_seama(i8* %31, i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i8**, i8*** @o_images, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %200

40:                                               ; preds = %27
  %41 = load i8**, i8*** @o_images, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32* @fopen(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %45, i32** %3, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %200

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %192, %104, %49
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @feof(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @ferror(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i1 [ false, %50 ], [ %58, %54 ]
  br i1 %60, label %61, label %193

61:                                               ; preds = %59
  %62 = load i32*, i32** %3, align 8
  %63 = call i64 @fread(%struct.TYPE_5__* %9, i32 16, i64 1, i32* %62)
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @SEAMA_MAGIC, align 4
  %67 = call i64 @htonl(i32 %66)
  %68 = icmp ne i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %193

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ntohl(i32 %72)
  store i64 %73, i64* %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @ntohs(i32 %75)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %100, %79
  %81 = load i64, i64* %5, align 8
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %80
  %84 = load i64, i64* %5, align 8
  %85 = load i32, i32* @MAX_SEAMA_META_SIZE, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i64, i64* %5, align 8
  br label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @MAX_SEAMA_META_SIZE, align 4
  %92 = sext i32 %91 to i64
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi i64 [ %89, %88 ], [ %92, %90 ]
  %95 = load i32*, i32** %3, align 8
  %96 = call i64 @fread(%struct.TYPE_5__* %17, i32 1, i64 %94, i32* %95)
  store i64 %96, i64* %8, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp ule i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %104

100:                                              ; preds = %93
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %5, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %5, align 8
  br label %80

104:                                              ; preds = %99, %80
  br label %50

105:                                              ; preds = %70
  %106 = load i32*, i32** %3, align 8
  %107 = call i64 @fread(%struct.TYPE_5__* %17, i32 1, i64 16, i32* %106)
  %108 = load i64, i64* %5, align 8
  %109 = icmp ugt i64 %108, 0
  br i1 %109, label %110, label %167

110:                                              ; preds = %105
  %111 = load i64, i64* %5, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = call i64 @fread(%struct.TYPE_5__* %17, i32 1, i64 %111, i32* %112)
  %114 = bitcast %struct.TYPE_5__* %17 to i8*
  %115 = load i64, i64* %5, align 8
  %116 = call i64 @match_meta(i8* %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %166

118:                                              ; preds = %110
  %119 = load i8**, i8*** @o_images, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %122, i64 %123)
  %125 = load i8*, i8** %2, align 8
  %126 = call i32* @fopen(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %126, i32** %4, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %118
  %130 = load i8*, i8** %2, align 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %130)
  br label %163

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %153, %132
  %134 = load i64, i64* %6, align 8
  %135 = icmp ugt i64 %134, 0
  br i1 %135, label %136, label %160

136:                                              ; preds = %133
  %137 = load i64, i64* %6, align 8
  %138 = load i32, i32* @MAX_SEAMA_META_SIZE, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp ult i64 %137, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i64, i64* %6, align 8
  br label %146

143:                                              ; preds = %136
  %144 = load i32, i32* @MAX_SEAMA_META_SIZE, align 4
  %145 = sext i32 %144 to i64
  br label %146

146:                                              ; preds = %143, %141
  %147 = phi i64 [ %142, %141 ], [ %145, %143 ]
  %148 = load i32*, i32** %3, align 8
  %149 = call i64 @fread(%struct.TYPE_5__* %17, i32 1, i64 %147, i32* %148)
  store i64 %149, i64* %8, align 8
  %150 = load i64, i64* %8, align 8
  %151 = icmp ule i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %160

153:                                              ; preds = %146
  %154 = load i64, i64* %8, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @fwrite(%struct.TYPE_5__* %17, i32 1, i64 %154, i32* %155)
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* %6, align 8
  %159 = sub i64 %158, %157
  store i64 %159, i64* %6, align 8
  br label %133

160:                                              ; preds = %152, %133
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @fclose(i32* %161)
  br label %163

163:                                              ; preds = %160, %129
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %193

166:                                              ; preds = %110
  br label %167

167:                                              ; preds = %166, %105
  br label %168

168:                                              ; preds = %188, %167
  %169 = load i64, i64* %6, align 8
  %170 = icmp ugt i64 %169, 0
  br i1 %170, label %171, label %192

171:                                              ; preds = %168
  %172 = load i64, i64* %6, align 8
  %173 = load i32, i32* @MAX_SEAMA_META_SIZE, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp ult i64 %172, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i64, i64* %6, align 8
  br label %181

178:                                              ; preds = %171
  %179 = load i32, i32* @MAX_SEAMA_META_SIZE, align 4
  %180 = sext i32 %179 to i64
  br label %181

181:                                              ; preds = %178, %176
  %182 = phi i64 [ %177, %176 ], [ %180, %178 ]
  %183 = load i32*, i32** %3, align 8
  %184 = call i64 @fread(%struct.TYPE_5__* %17, i32 1, i64 %182, i32* %183)
  store i64 %184, i64* %8, align 8
  %185 = load i64, i64* %8, align 8
  %186 = icmp ule i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %192

188:                                              ; preds = %181
  %189 = load i64, i64* %8, align 8
  %190 = load i64, i64* %6, align 8
  %191 = sub i64 %190, %189
  store i64 %191, i64* %6, align 8
  br label %168

192:                                              ; preds = %187, %168
  br label %50

193:                                              ; preds = %163, %69, %59
  %194 = load i32*, i32** %3, align 8
  %195 = call i32 @fclose(i32* %194)
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %203

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199, %48, %34
  %201 = load i64, i64* %7, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %7, align 8
  br label %23

203:                                              ; preds = %198, %23
  store i32 1, i32* %13, align 4
  br label %204

204:                                              ; preds = %203, %20
  %205 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %205)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @verify_seama(i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32 @ferror(i32*) #2

declare dso_local i64 @fread(%struct.TYPE_5__*, i32, i64, i32*) #2

declare dso_local i64 @htonl(i32) #2

declare dso_local i64 @ntohl(i32) #2

declare dso_local i64 @ntohs(i32) #2

declare dso_local i64 @match_meta(i8*, i64) #2

declare dso_local i32 @fwrite(%struct.TYPE_5__*, i32, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
