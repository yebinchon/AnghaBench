; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptnet/extr_cryptnet_main.c_CRYPT_DownloadObject.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptnet/extr_cryptnet_main.c_CRYPT_DownloadObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.InetContext = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32 }

@__const.CRYPT_DownloadObject.buffer = private unnamed_addr constant %struct.TYPE_9__ { i32 16, i32 0, i32 0, i32 0 }, align 4
@IRF_NO_WAIT = common dso_local global i32 0, align 4
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@ERROR_TIMEOUT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.InetContext*, %struct.TYPE_8__*, i32)* @CRYPT_DownloadObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_DownloadObject(i32 %0, i32 %1, %struct.InetContext* %2, %struct.TYPE_8__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.InetContext*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.InetContext* %2, %struct.InetContext** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  br label %16

16:                                               ; preds = %137, %5
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @InternetQueryDataAvailable(i32 %17, i32* %12, i32 0, i32 0)
  store i64 %18, i64* %13, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %109

20:                                               ; preds = %16
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %108

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @CryptMemRealloc(i32 %29, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  br label %41

36:                                               ; preds = %23
  %37 = load i32, i32* %12, align 4
  %38 = call i8* @CryptMemAlloc(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  br label %41

41:                                               ; preds = %36, %27
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %103

45:                                               ; preds = %41
  %46 = bitcast %struct.TYPE_9__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast (%struct.TYPE_9__* @__const.CRYPT_DownloadObject.buffer to i8*), i64 16, i1 false)
  %47 = load i32, i32* %12, align 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %50, %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IRF_NO_WAIT, align 4
  %57 = load %struct.InetContext*, %struct.InetContext** %8, align 8
  %58 = ptrtoint %struct.InetContext* %57 to i32
  %59 = call i64 @InternetReadFileExA(i32 %55, %struct.TYPE_9__* %14, i32 %56, i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %45
  %62 = call i64 (...) @GetLastError()
  %63 = load i64, i64* @ERROR_IO_PENDING, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = load %struct.InetContext*, %struct.InetContext** %8, align 8
  %67 = getelementptr inbounds %struct.InetContext, %struct.InetContext* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.InetContext*, %struct.InetContext** %8, align 8
  %70 = getelementptr inbounds %struct.InetContext, %struct.InetContext* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @WaitForSingleObject(i32 %68, i32 %71)
  %73 = load i64, i64* @WAIT_TIMEOUT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i64, i64* @ERROR_TIMEOUT, align 8
  %77 = call i32 @SetLastError(i64 %76)
  br label %91

78:                                               ; preds = %65
  %79 = load %struct.InetContext*, %struct.InetContext** %8, align 8
  %80 = getelementptr inbounds %struct.InetContext, %struct.InetContext* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.InetContext*, %struct.InetContext** %8, align 8
  %85 = getelementptr inbounds %struct.InetContext, %struct.InetContext* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @SetLastError(i64 %86)
  br label %90

88:                                               ; preds = %78
  %89 = load i64, i64* @TRUE, align 8
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %88, %83
  br label %91

91:                                               ; preds = %90, %75
  br label %92

92:                                               ; preds = %91, %61
  br label %93

93:                                               ; preds = %92, %45
  %94 = load i64, i64* %13, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %98
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %93
  br label %107

103:                                              ; preds = %41
  %104 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  %105 = call i32 @SetLastError(i64 %104)
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %13, align 8
  br label %107

107:                                              ; preds = %103, %102
  br label %108

108:                                              ; preds = %107, %20
  br label %130

109:                                              ; preds = %16
  %110 = call i64 (...) @GetLastError()
  %111 = load i64, i64* @ERROR_IO_PENDING, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load %struct.InetContext*, %struct.InetContext** %8, align 8
  %115 = getelementptr inbounds %struct.InetContext, %struct.InetContext* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.InetContext*, %struct.InetContext** %8, align 8
  %118 = getelementptr inbounds %struct.InetContext, %struct.InetContext* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @WaitForSingleObject(i32 %116, i32 %119)
  %121 = load i64, i64* @WAIT_TIMEOUT, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load i64, i64* @ERROR_TIMEOUT, align 8
  %125 = call i32 @SetLastError(i64 %124)
  br label %128

126:                                              ; preds = %113
  %127 = load i64, i64* @TRUE, align 8
  store i64 %127, i64* %13, align 8
  br label %128

128:                                              ; preds = %126, %123
  br label %129

129:                                              ; preds = %128, %109
  br label %130

130:                                              ; preds = %129, %108
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %13, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi i1 [ false, %131 ], [ %136, %134 ]
  br i1 %138, label %16, label %139

139:                                              ; preds = %137
  %140 = load i64, i64* %13, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %176

142:                                              ; preds = %139
  %143 = call i8* @CryptMemAlloc(i32 24)
  %144 = bitcast i8* %143 to %struct.TYPE_7__*
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store %struct.TYPE_7__* %144, %struct.TYPE_7__** %146, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = icmp ne %struct.TYPE_7__* %149, null
  br i1 %150, label %158, label %151

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @CryptMemFree(i32 %153)
  %155 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  %156 = call i32 @SetLastError(i64 %155)
  %157 = load i64, i64* @FALSE, align 8
  store i64 %157, i64* %13, align 8
  br label %175

158:                                              ; preds = %142
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i32 %160, i32* %165, align 4
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  store i32 %167, i32* %172, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  store i32 1, i32* %174, align 8
  br label %175

175:                                              ; preds = %158, %151
  br label %176

176:                                              ; preds = %175, %139
  %177 = load i64, i64* %13, align 8
  %178 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %177)
  %179 = load i64, i64* %13, align 8
  ret i64 %179
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @InternetQueryDataAvailable(i32, i32*, i32, i32) #2

declare dso_local i32 @CryptMemRealloc(i32, i32) #2

declare dso_local i8* @CryptMemAlloc(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @InternetReadFileExA(i32, %struct.TYPE_9__*, i32, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @WaitForSingleObject(i32, i32) #2

declare dso_local i32 @SetLastError(i64) #2

declare dso_local i32 @CryptMemFree(i32) #2

declare dso_local i32 @TRACE(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
