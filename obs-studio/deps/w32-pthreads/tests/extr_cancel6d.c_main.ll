; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel6d.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel6d.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@threadbag = common dso_local global %struct.TYPE_8__* null, align 8
@mythread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Second cancelation failed but this is expected sometimes.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Thread %d: started %d\0A\00", align 1
@PTHREAD_CANCELED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Thread %d: started %d: count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %10 = load i32, i32* @NUMTHREADS, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca %struct.TYPE_7__, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 0
  %16 = call i32* (...) @pthread_self()
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32* %16, i32** %17, align 8
  %18 = bitcast %struct.TYPE_7__* %15 to i8*
  %19 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = bitcast %struct.TYPE_7__* %6 to i8*
  %21 = bitcast %struct.TYPE_7__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 16 %21, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %57, %0
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @NUMTHREADS, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 %37, i32* %42, align 4
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %44
  %46 = load i32, i32* @mythread, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = ptrtoint %struct.TYPE_8__* %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i64 @pthread_create(%struct.TYPE_7__* %45, i32* null, i32 %46, i8* %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  br label %57

57:                                               ; preds = %31
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %27

60:                                               ; preds = %27
  %61 = call i32 @Sleep(i32 500)
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %86, %60
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @NUMTHREADS, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @pthread_cancel(i32* %71)
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @pthread_cancel(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %66
  %84 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %66
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %62

89:                                               ; preds = %62
  %90 = load i32, i32* @NUMTHREADS, align 4
  %91 = mul nsw i32 %90, 100
  %92 = call i32 @Sleep(i32 %91)
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %127, %89
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @NUMTHREADS, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %130

97:                                               ; preds = %93
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %97
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %2, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %2, align 4
  %117 = load i32, i32* @stderr, align 4
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %124)
  br label %126

126:                                              ; preds = %105, %97
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %93

130:                                              ; preds = %93
  %131 = load i32, i32* %2, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %181, %130
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @NUMTHREADS, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %184

140:                                              ; preds = %136
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = call i64 @pthread_join(i32* %145, i8** %9)
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %152 = icmp ne i8* %150, %151
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %140
  %157 = load i32, i32* @stderr, align 4
  %158 = load i32, i32* %3, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %164, i32 %170)
  br label %172

172:                                              ; preds = %156, %140
  %173 = load i32, i32* %2, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br label %178

178:                                              ; preds = %175, %172
  %179 = phi i1 [ true, %172 ], [ %177, %175 ]
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %3, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %3, align 4
  br label %136

184:                                              ; preds = %136
  %185 = load i32, i32* %2, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  store i32 0, i32* %1, align 4
  %190 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %1, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @pthread_self(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare !callback !2 dso_local i64 @pthread_create(%struct.TYPE_7__*, i32*, i32, i8*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @pthread_cancel(i32*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #2

declare dso_local i64 @pthread_join(i32*, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
