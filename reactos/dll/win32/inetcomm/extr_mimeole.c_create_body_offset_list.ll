; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_create_body_offset_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_create_body_offset_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@PARSER_BUF_SIZE = common dso_local global i32 0, align 4
@STREAM_SEEK_CUR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.list*)* @create_body_offset_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_body_offset_list(i32* %0, i8* %1, %struct.list* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca %struct.TYPE_12__, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.list* %2, %struct.list** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %10, align 4
  store i64 0, i64* %14, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  %22 = load i64, i64* @TRUE, align 8
  store i64 %22, i64* %17, align 8
  %23 = load %struct.list*, %struct.list** %6, align 8
  %24 = call i32 @list_init(%struct.list* %23)
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 5
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %15, align 8
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i64, i64* %15, align 8
  %30 = load i32, i32* @PARSER_BUF_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, %31
  %33 = add i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i8* @HeapAlloc(i32 %28, i32 0, i32 %34)
  store i8* %35, i8** %11, align 8
  store i8* %35, i8** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @STREAM_SEEK_CUR, align 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @IStream_Seek(i32* %37, i64 %40, i32 %38, %struct.TYPE_11__* %18)
  store i32 %41, i32* %7, align 4
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %215, %3
  %46 = load i32*, i32** %4, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* @PARSER_BUF_SIZE, align 4
  %49 = call i32 @IStream_Read(i32* %46, i8* %47, i32 %48, i64* %8)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %217

54:                                               ; preds = %45
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %216

58:                                               ; preds = %54
  %59 = load i8*, i8** %13, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %11, align 8
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %58, %179
  %64 = load i64, i64* %17, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i64, i64* @FALSE, align 8
  store i64 %67, i64* %17, align 8
  br label %77

68:                                               ; preds = %63
  %69 = load i8*, i8** %12, align 8
  %70 = call i8* @strstr(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %180

74:                                               ; preds = %68
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8* %76, i8** %12, align 8
  br label %77

77:                                               ; preds = %74, %66
  %78 = load i64, i64* %14, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  %81 = load i8*, i8** %11, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  store i64 %84, i64* %9, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 45
  br i1 %88, label %89, label %179

89:                                               ; preds = %77
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 45
  br i1 %94, label %95, label %179

95:                                               ; preds = %89
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @memcmp(i8* %97, i8* %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %179, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 2
  %105 = load i8*, i8** %12, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %12, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 13
  br i1 %111, label %112, label %152

112:                                              ; preds = %102
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %118, label %152

118:                                              ; preds = %112
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  store i8* %120, i8** %12, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %122 = icmp ne %struct.TYPE_10__* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load i64, i64* %9, align 8
  %125 = sub i64 %124, 2
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i64 %125, i64* %128, align 8
  %129 = load %struct.list*, %struct.list** %6, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = call i32 @list_add_tail(%struct.list* %129, i32* %131)
  br label %133

133:                                              ; preds = %123, %118
  %134 = call i32 (...) @GetProcessHeap()
  %135 = call i8* @HeapAlloc(i32 %134, i32 0, i32 32)
  %136 = bitcast i8* %135 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %136, %struct.TYPE_10__** %16, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  store i64 %137, i64* %140, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 %141
  %144 = load i8*, i8** %11, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  store i32 %148, i32* %151, align 8
  br label %178

152:                                              ; preds = %112, %102
  %153 = load i8*, i8** %12, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 45
  br i1 %156, label %157, label %177

157:                                              ; preds = %152
  %158 = load i8*, i8** %12, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 45
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %165 = icmp ne %struct.TYPE_10__* %164, null
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load i64, i64* %9, align 8
  %168 = sub i64 %167, 2
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i64 %168, i64* %171, align 8
  %172 = load %struct.list*, %struct.list** %6, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = call i32 @list_add_tail(%struct.list* %172, i32* %174)
  br label %217

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %176, %157, %152
  br label %178

178:                                              ; preds = %177, %133
  br label %179

179:                                              ; preds = %178, %95, %89, %77
  br label %63

180:                                              ; preds = %73
  %181 = load i8*, i8** %13, align 8
  %182 = load i8*, i8** %11, align 8
  %183 = icmp eq i8* %181, %182
  br i1 %183, label %184, label %203

184:                                              ; preds = %180
  %185 = load i8*, i8** %11, align 8
  %186 = load i8*, i8** %11, align 8
  %187 = load i32, i32* @PARSER_BUF_SIZE, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i64, i64* %15, align 8
  %191 = sub i64 0, %190
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i64, i64* %15, align 8
  %194 = call i32 @memmove(i8* %185, i8* %192, i64 %193)
  %195 = load i8*, i8** %11, align 8
  %196 = load i64, i64* %15, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %13, align 8
  %198 = load i64, i64* %8, align 8
  %199 = load i64, i64* %15, align 8
  %200 = sub i64 %198, %199
  %201 = load i64, i64* %14, align 8
  %202 = add i64 %201, %200
  store i64 %202, i64* %14, align 8
  br label %214

203:                                              ; preds = %180
  %204 = load i8*, i8** %11, align 8
  %205 = load i8*, i8** %11, align 8
  %206 = load i32, i32* @PARSER_BUF_SIZE, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i64, i64* %15, align 8
  %210 = call i32 @memmove(i8* %204, i8* %208, i64 %209)
  %211 = load i64, i64* %8, align 8
  %212 = load i64, i64* %14, align 8
  %213 = add i64 %212, %211
  store i64 %213, i64* %14, align 8
  br label %214

214:                                              ; preds = %203, %184
  br label %215

215:                                              ; preds = %214
  br i1 true, label %45, label %216

216:                                              ; preds = %215, %57
  br label %217

217:                                              ; preds = %216, %166, %53
  %218 = call i32 (...) @GetProcessHeap()
  %219 = load i8*, i8** %11, align 8
  %220 = call i32 @HeapFree(i32 %218, i32 0, i8* %219)
  %221 = load i32, i32* %7, align 4
  ret i32 %221
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @list_init(%struct.list*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IStream_Seek(i32*, i64, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @IStream_Read(i32*, i8*, i32, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @list_add_tail(%struct.list*, i32*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
