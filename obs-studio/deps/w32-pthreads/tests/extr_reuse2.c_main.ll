; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_reuse2.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_reuse2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@func = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"For %d total threads:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Non-unique IDs = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Reuse maximum  = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Reuse minimum  = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Total handles  = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %12 = load i32, i32* @NUMTHREADS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %2, align 8
  %15 = alloca %struct.TYPE_3__, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @NUMTHREADS, align 4
  store i32 %16, i32* %9, align 4
  %17 = call i64 @pthread_attr_init(i32* %4)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %22 = call i64 @pthread_attr_setdetachstate(i32* %4, i32 %21)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %41, %0
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @NUMTHREADS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %33
  %35 = load i32, i32* @func, align 4
  %36 = call i64 @pthread_create(%struct.TYPE_3__* %34, i32* %4, i32 %35, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @Sleep(i32 1)
  br label %31

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %26

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32, i32* @NUMTHREADS, align 4
  %47 = call i32 @InterlockedExchangeAdd(i32 ptrtoint (i32* @done to i32), i64 0)
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @Sleep(i32 100)
  br label %45

51:                                               ; preds = %45
  %52 = call i32 @Sleep(i32 100)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %140, %51
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @NUMTHREADS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %143

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %139

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 16
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %123, %64
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @NUMTHREADS, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %126

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %81, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %76
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 16
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 16
  %99 = icmp eq i32 %93, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load i32, i32* %6, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %88
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 16
  %110 = icmp ult i32 %104, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 16
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %111, %103
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %117, %76
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %72

126:                                              ; preds = %72
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ugt i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %130, %126
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %136, %132
  br label %139

139:                                              ; preds = %138, %57
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %53

143:                                              ; preds = %53
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %159, %143
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @NUMTHREADS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %144
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load i32, i32* %7, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %155, %148
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %144

162:                                              ; preds = %144
  %163 = load i32, i32* @NUMTHREADS, align 4
  %164 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %8, align 4
  %168 = add i32 %167, 1
  %169 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %9, align 4
  %171 = add i32 %170, 1
  %172 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  store i32 0, i32* %1, align 4
  %175 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %1, align 4
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_attr_init(i32*) #2

declare dso_local i64 @pthread_attr_setdetachstate(i32*, i32) #2

declare !callback !2 dso_local i64 @pthread_create(%struct.TYPE_3__*, i32*, i32, i32*) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i32 @InterlockedExchangeAdd(i32, i64) #2

declare dso_local i32 @printf(i8*, i32) #2

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
