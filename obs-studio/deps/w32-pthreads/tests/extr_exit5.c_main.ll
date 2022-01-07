; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_exit5.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_exit5.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@threadbag = common dso_local global %struct.TYPE_3__* null, align 8
@Win32thread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Thread %d: started %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
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
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threadbag, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threadbag, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* @Win32thread, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threadbag, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = bitcast %struct.TYPE_3__* %34 to i8*
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
  %45 = load i32, i32* @NUMTHREADS, align 4
  %46 = mul nsw i32 %45, 100
  %47 = call i32 @Sleep(i32 %46)
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %82, %43
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @NUMTHREADS, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threadbag, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threadbag, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %2, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threadbag, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %60, %52
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %48

85:                                               ; preds = %48
  %86 = load i32, i32* %2, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %159, %85
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @NUMTHREADS, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %162

95:                                               ; preds = %91
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %13, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = ptrtoint i32* %8 to i32
  %101 = call i64 @GetExitCodeThread(i64 %99, i32 %100)
  %102 = load i64, i64* @TRUE, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threadbag, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %95
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threadbag, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @pthread_kill(i32* %121, i32 0)
  %123 = load i64, i64* @ESRCH, align 8
  %124 = icmp eq i64 %122, %123
  br label %125

125:                                              ; preds = %114, %95
  %126 = phi i1 [ false, %95 ], [ %124, %114 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 1
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %125
  %135 = load i32, i32* @stderr, align 4
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threadbag, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threadbag, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %142, i32 %148)
  br label %150

150:                                              ; preds = %134, %125
  %151 = load i32, i32* %2, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br label %156

156:                                              ; preds = %153, %150
  %157 = phi i1 [ true, %150 ], [ %155, %153 ]
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %91

162:                                              ; preds = %91
  %163 = load i32, i32* %2, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  store i32 0, i32* %1, align 4
  %168 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %1, align 4
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_beginthreadex(i32*, i32, i32, i8*, i32, i32*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @GetExitCodeThread(i64, i32) #2

declare dso_local i64 @pthread_kill(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
