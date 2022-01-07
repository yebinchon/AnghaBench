; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel6a.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel6a.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@threadbag = common dso_local global %struct.TYPE_8__* null, align 8
@mythread = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Thread %d: started %d\0A\00", align 1
@PTHREAD_CANCELED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Thread %d: started %d: count %d\0A\00", align 1

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

27:                                               ; preds = %56, %0
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @NUMTHREADS, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %59

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
  %51 = bitcast %struct.TYPE_8__* %50 to i8*
  %52 = call i64 @pthread_create(%struct.TYPE_7__* %45, i32* null, i32 %46, i8* %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  br label %56

56:                                               ; preds = %31
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %27

59:                                               ; preds = %27
  %60 = call i32 @Sleep(i32 500)
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %85, %59
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @NUMTHREADS, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @pthread_cancel(i32* %70)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @pthread_cancel(i32* %79)
  %81 = load i64, i64* @ESRCH, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  br label %85

85:                                               ; preds = %65
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %61

88:                                               ; preds = %61
  %89 = load i32, i32* @NUMTHREADS, align 4
  %90 = mul nsw i32 %89, 100
  %91 = call i32 @Sleep(i32 %90)
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %126, %88
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @NUMTHREADS, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %129

96:                                               ; preds = %92
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %125, label %104

104:                                              ; preds = %96
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %2, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %2, align 4
  %116 = load i32, i32* @stderr, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %123)
  br label %125

125:                                              ; preds = %104, %96
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %92

129:                                              ; preds = %92
  %130 = load i32, i32* %2, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %135

135:                                              ; preds = %180, %129
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @NUMTHREADS, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %183

139:                                              ; preds = %135
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @pthread_join(i32* %144, i8** %9)
  %146 = icmp eq i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i8*, i8** %9, align 8
  %150 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %151 = icmp ne i8* %149, %150
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %139
  %156 = load i32, i32* @stderr, align 4
  %157 = load i32, i32* %3, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %163, i32 %169)
  br label %171

171:                                              ; preds = %155, %139
  %172 = load i32, i32* %2, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br label %177

177:                                              ; preds = %174, %171
  %178 = phi i1 [ true, %171 ], [ %176, %174 ]
  %179 = zext i1 %178 to i32
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %3, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %3, align 4
  br label %135

183:                                              ; preds = %135
  %184 = load i32, i32* %2, align 4
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  store i32 0, i32* %1, align 4
  %189 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i32, i32* %1, align 4
  ret i32 %190
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
