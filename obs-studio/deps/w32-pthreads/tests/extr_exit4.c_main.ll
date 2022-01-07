; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_exit4.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_exit4.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@NUMTHREADS = common dso_local global i32 0, align 4
@threadbag = common dso_local global %struct.TYPE_2__* null, align 8
@Win32thread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Thread %d: started %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
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
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* @Win32thread, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = bitcast %struct.TYPE_2__* %34 to i8*
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
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %2, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
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

91:                                               ; preds = %136, %85
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @NUMTHREADS, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %139

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
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 1
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %95
  %112 = load i32, i32* @stderr, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threadbag, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %119, i32 %125)
  br label %127

127:                                              ; preds = %111, %95
  %128 = load i32, i32* %2, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i1 [ true, %127 ], [ %132, %130 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %91

139:                                              ; preds = %91
  %140 = load i32, i32* %2, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  store i32 0, i32* %1, align 4
  %145 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %1, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_beginthreadex(i32*, i32, i32, i8*, i32, i32*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @assert(i32) #2

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
