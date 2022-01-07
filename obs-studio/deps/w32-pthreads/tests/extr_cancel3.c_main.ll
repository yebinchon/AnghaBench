; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel3.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel3.c_main.c"
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
  %60 = load i32, i32* @NUMTHREADS, align 4
  %61 = mul nsw i32 %60, 100
  %62 = call i32 @Sleep(i32 %61)
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %77, %59
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @NUMTHREADS, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @pthread_cancel(i32* %72)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %63

80:                                               ; preds = %63
  %81 = load i32, i32* @NUMTHREADS, align 4
  %82 = mul nsw i32 %81, 100
  %83 = call i32 @Sleep(i32 %82)
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %118, %80
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @NUMTHREADS, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %121

88:                                               ; preds = %84
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %117, label %96

96:                                               ; preds = %88
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %2, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* @stderr, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %115)
  br label %117

117:                                              ; preds = %96, %88
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %84

121:                                              ; preds = %84
  %122 = load i32, i32* %2, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %127

127:                                              ; preds = %172, %121
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @NUMTHREADS, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %175

131:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @pthread_join(i32* %136, i8** %9)
  %138 = icmp eq i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %143 = icmp ne i8* %141, %142
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %131
  %148 = load i32, i32* @stderr, align 4
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** @threadbag, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %155, i32 %161)
  br label %163

163:                                              ; preds = %147, %131
  %164 = load i32, i32* %2, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %166, %163
  %170 = phi i1 [ true, %163 ], [ %168, %166 ]
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %3, align 4
  br label %127

175:                                              ; preds = %127
  %176 = load i32, i32* %2, align 4
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  store i32 0, i32* %1, align 4
  %181 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %181)
  %182 = load i32, i32* %1, align 4
  ret i32 %182
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
