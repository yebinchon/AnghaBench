; ModuleID = '/home/carl/AnghaBench/memcached/extr_extstore.c_extstore_write_request.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_extstore.c_extstore_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extstore_write_request(i8* %0, i32 %1, i32 %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %10, align 8
  store i32 -1, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp uge i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %178

22:                                               ; preds = %4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %28, i64 %30
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %11, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %22
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.TYPE_13__* @_allocate_page(%struct.TYPE_14__* %36, i32 %37, i32 %38)
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %11, align 8
  br label %40

40:                                               ; preds = %35, %22
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %45 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %178

48:                                               ; preds = %40
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = call i32 @pthread_mutex_lock(i32* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %48
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = icmp ne %struct.TYPE_12__* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %61, %56
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %71, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %68, %48
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = call i32 @pthread_mutex_unlock(i32* %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = call i32 @pthread_mutex_lock(i32* %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call %struct.TYPE_13__* @_allocate_page(%struct.TYPE_14__* %83, i32 %84, i32 %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = call i32 @pthread_mutex_unlock(i32* %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %178

91:                                               ; preds = %68, %61
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = icmp ne %struct.TYPE_12__* %94, null
  br i1 %95, label %96, label %121

96:                                               ; preds = %91
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %96
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %106
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %116 = call i32 @_submit_wbuf(%struct.TYPE_14__* %114, %struct.TYPE_13__* %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %113, %106, %96, %91
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = icmp ne %struct.TYPE_12__* %124, null
  br i1 %125, label %138, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %137 = call i32 @_allocate_wbuf(%struct.TYPE_14__* %135, %struct.TYPE_13__* %136)
  br label %138

138:                                              ; preds = %134, %126, %121
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = icmp ne %struct.TYPE_12__* %141, null
  br i1 %142, label %143, label %173

143:                                              ; preds = %138
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %173, label %150

150:                                              ; preds = %143
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sge i64 %155, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %150
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  store i32 0, i32* %5, align 4
  br label %178

173:                                              ; preds = %150, %143, %138
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = call i32 @pthread_mutex_unlock(i32* %175)
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %173, %160, %76, %46, %20
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_13__* @_allocate_page(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @_submit_wbuf(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @_allocate_wbuf(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
