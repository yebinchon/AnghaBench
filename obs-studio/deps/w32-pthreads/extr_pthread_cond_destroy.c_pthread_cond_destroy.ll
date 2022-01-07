; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_cond_destroy.c_pthread_cond_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_cond_destroy.c_pthread_cond_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_COND_INITIALIZER = common dso_local global %struct.TYPE_7__* null, align 8
@ptw32_cond_list_lock = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ptw32_cond_list_head = common dso_local global %struct.TYPE_7__* null, align 8
@ptw32_cond_list_tail = common dso_local global %struct.TYPE_7__* null, align 8
@ptw32_cond_test_init_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_cond_destroy(%struct.TYPE_7__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %11 = icmp eq %struct.TYPE_7__** %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %158

18:                                               ; preds = %12
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_COND_INITIALIZER, align 8
  %22 = icmp ne %struct.TYPE_7__* %20, %21
  br i1 %22, label %23, label %130

23:                                               ; preds = %18
  %24 = call i32 @ptw32_mcs_lock_acquire(i32* @ptw32_cond_list_lock, i32* %8)
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %4, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 6
  %29 = call i64 @ptw32_semwait(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %5, align 4
  br label %43

33:                                               ; preds = %23
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  %36 = call i32 @pthread_mutex_trylock(i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 6
  %41 = call i64 @sem_post(i32* %40)
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 @ptw32_mcs_lock_release(i32* %8)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %158

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %49
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 6
  %60 = call i64 @sem_post(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @errno, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = call i32 @pthread_mutex_unlock(i32* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @EBUSY, align 4
  store i32 %68, i32* %7, align 4
  br label %128

69:                                               ; preds = %49
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 6
  %73 = call i64 @sem_destroy(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @errno, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %69
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 5
  %80 = call i64 @sem_destroy(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @errno, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  %87 = call i32 @pthread_mutex_unlock(i32* %86)
  store i32 %87, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = call i32 @pthread_mutex_destroy(i32* %91)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ptw32_cond_list_head, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = icmp eq %struct.TYPE_7__* %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** @ptw32_cond_list_head, align 8
  br label %109

101:                                              ; preds = %93
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %108, align 8
  br label %109

109:                                              ; preds = %101, %97
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ptw32_cond_list_tail, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = icmp eq %struct.TYPE_7__* %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** @ptw32_cond_list_tail, align 8
  br label %125

117:                                              ; preds = %109
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %124, align 8
  br label %125

125:                                              ; preds = %117, %113
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = call i32 @free(%struct.TYPE_7__* %126)
  br label %128

128:                                              ; preds = %125, %64
  %129 = call i32 @ptw32_mcs_lock_release(i32* %8)
  br label %142

130:                                              ; preds = %18
  %131 = call i32 @ptw32_mcs_lock_acquire(i32* @ptw32_cond_test_init_lock, i32* %9)
  %132 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_COND_INITIALIZER, align 8
  %135 = icmp eq %struct.TYPE_7__* %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %137, align 8
  br label %140

138:                                              ; preds = %130
  %139 = load i32, i32* @EBUSY, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = call i32 @ptw32_mcs_lock_release(i32* %9)
  br label %142

142:                                              ; preds = %140, %128
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* %5, align 4
  br label %156

147:                                              ; preds = %142
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* %6, align 4
  br label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %7, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  br label %156

156:                                              ; preds = %154, %145
  %157 = phi i32 [ %146, %145 ], [ %155, %154 ]
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %46, %16
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i64 @ptw32_semwait(i32*) #1

declare dso_local i32 @pthread_mutex_trylock(i32*) #1

declare dso_local i64 @sem_post(i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @sem_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
