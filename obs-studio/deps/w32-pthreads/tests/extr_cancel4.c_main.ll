; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel4.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel4.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@threadbag = common dso_local global %struct.TYPE_8__* null, align 8
@mythread = common dso_local global i32 0, align 4
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

61:                                               ; preds = %75, %59
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @NUMTHREADS, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %78

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
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %61

78:                                               ; preds = %61
  %79 = load i32, i32* @NUMTHREADS, align 4
  %80 = mul nsw i32 %79, 100
  %81 = call i32 @Sleep(i32 %80)
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %116, %78
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @NUMTHREADS, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %82
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %86
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %2, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %2, align 4
  %106 = load i32, i32* @stderr, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %94, %86
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %82

119:                                              ; preds = %82
  %120 = load i32, i32* %2, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %170, %119
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @NUMTHREADS, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %173

129:                                              ; preds = %125
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @pthread_join(i32* %134, i8** %9)
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %141 = icmp eq i8* %139, %140
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %129
  %146 = load i32, i32* @stderr, align 4
  %147 = load i32, i32* %3, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %153, i32 %159)
  br label %161

161:                                              ; preds = %145, %129
  %162 = load i32, i32* %2, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br label %167

167:                                              ; preds = %164, %161
  %168 = phi i1 [ true, %161 ], [ %166, %164 ]
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %3, align 4
  br label %125

173:                                              ; preds = %125
  %174 = load i32, i32* %2, align 4
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  store i32 0, i32* %1, align 4
  %179 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %1, align 4
  ret i32 %180
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
