; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel5.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_cancel5.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@NUMTHREADS = common dso_local global i32 0, align 4
@threadbag = common dso_local global %struct.TYPE_2__* null, align 8
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
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @NUMTHREADS, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %42, %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NUMTHREADS, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %23, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %12, i64 %30
  %32 = load i32, i32* @mythread, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = bitcast %struct.TYPE_2__* %36 to i8*
  %38 = call i64 @pthread_create(i32* %31, i32* null, i32 %32, i8* %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %42

42:                                               ; preds = %17
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %13

45:                                               ; preds = %13
  %46 = call i32 @Sleep(i32 500)
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %60, %45
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @NUMTHREADS, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %12, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @pthread_cancel(i32 %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %47

63:                                               ; preds = %47
  %64 = load i32, i32* @NUMTHREADS, align 4
  %65 = mul nsw i32 %64, 100
  %66 = call i32 @Sleep(i32 %65)
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %101, %63
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @NUMTHREADS, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %2, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %98)
  br label %100

100:                                              ; preds = %79, %71
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %67

104:                                              ; preds = %67
  %105 = load i32, i32* %2, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %160, %104
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @NUMTHREADS, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %163

114:                                              ; preds = %110
  store i32 0, i32* %6, align 4
  %115 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = trunc i64 %116 to i32
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %7, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %12, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @pthread_join(i32 %124, i8** %7)
  %126 = icmp eq i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i8*, i8** %7, align 8
  %130 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %131 = icmp ne i8* %129, %130
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %114
  %136 = load i32, i32* @stderr, align 4
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %143, i32 %149)
  br label %151

151:                                              ; preds = %135, %114
  %152 = load i32, i32* %2, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i1 [ true, %151 ], [ %156, %154 ]
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %3, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %3, align 4
  br label %110

163:                                              ; preds = %110
  %164 = load i32, i32* %2, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  store i32 0, i32* %1, align 4
  %169 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %1, align 4
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @pthread_cancel(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #2

declare dso_local i64 @pthread_join(i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
