; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel8.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel8.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@threadbag = common dso_local global %struct.TYPE_4__* null, align 8
@Win32thread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Thread %d: started %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@PTHREAD_CANCELED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Thread %d: started %d: count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %9 = load i32, i32* @NUMTHREADS, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %40, %0
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @NUMTHREADS, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* @Win32thread, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = bitcast %struct.TYPE_4__* %34 to i8*
  %36 = call i64 @_beginthreadex(i32* null, i32 0, i32 %30, i8* %35, i32 0, i32* %6)
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %13, i64 %38
  store i64 %36, i64* %39, align 8
  br label %40

40:                                               ; preds = %18
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %14

43:                                               ; preds = %14
  %44 = call i32 @Sleep(i32 500)
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %72, %43
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @NUMTHREADS, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @pthread_kill(i32* %56, i32 0)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @pthread_cancel(i32* %67)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %72

72:                                               ; preds = %49
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %45

75:                                               ; preds = %45
  %76 = load i32, i32* @NUMTHREADS, align 4
  %77 = mul nsw i32 %76, 100
  %78 = call i32 @Sleep(i32 %77)
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %113, %75
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @NUMTHREADS, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %83
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %2, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* @stderr, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %110)
  br label %112

112:                                              ; preds = %91, %83
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %79

116:                                              ; preds = %79
  %117 = load i32, i32* %2, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %191, %116
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @NUMTHREADS, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %194

126:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %13, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = ptrtoint i32* %8 to i32
  %132 = call i64 @GetExitCodeThread(i64 %130, i32 %131)
  %133 = load i64, i64* @TRUE, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i64 @pthread_kill(i32* %153, i32 0)
  %155 = load i64, i64* @ESRCH, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = load i64, i64* @PTHREAD_CANCELED, align 8
  %161 = trunc i64 %160 to i32
  %162 = icmp ne i32 %159, %161
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %126
  %167 = load i32, i32* @stderr, align 4
  %168 = load i32, i32* %3, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @threadbag, align 8
  %176 = load i32, i32* %3, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %168, i32 %174, i32 %180)
  br label %182

182:                                              ; preds = %166, %126
  %183 = load i32, i32* %2, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br label %188

188:                                              ; preds = %185, %182
  %189 = phi i1 [ true, %182 ], [ %187, %185 ]
  %190 = zext i1 %189 to i32
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %3, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %3, align 4
  br label %122

194:                                              ; preds = %122
  %195 = load i32, i32* %2, align 4
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  store i32 0, i32* %1, align 4
  %200 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %1, align 4
  ret i32 %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_beginthreadex(i32*, i32, i32, i8*, i32, i32*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_kill(i32*, i32) #2

declare dso_local i64 @pthread_cancel(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #2

declare dso_local i64 @GetExitCodeThread(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
