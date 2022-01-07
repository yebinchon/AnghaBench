; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_filter_destructor.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_filter_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.TYPE_6__*, i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.filter_runner* }
%struct.TYPE_5__ = type { %struct.mp_filter_internal* }
%struct.mp_filter_internal = type { i32, %struct.mp_filter** }
%struct.TYPE_4__ = type { i32 (%struct.mp_filter*)* }
%struct.filter_runner = type { i32, %struct.filter_runner*, i32, %struct.mp_filter*, %struct.mp_filter** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @filter_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_destructor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.filter_runner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_filter_internal*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mp_filter*
  store %struct.mp_filter* %9, %struct.mp_filter** %3, align 8
  %10 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %11 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.filter_runner*, %struct.filter_runner** %13, align 8
  store %struct.filter_runner* %14, %struct.filter_runner** %4, align 8
  %15 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %16 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.mp_filter*)*, i32 (%struct.mp_filter*)** %20, align 8
  %22 = icmp ne i32 (%struct.mp_filter*)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %25 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.mp_filter*)*, i32 (%struct.mp_filter*)** %29, align 8
  %31 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %32 = call i32 %30(%struct.mp_filter* %31)
  br label %33

33:                                               ; preds = %23, %1
  %34 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %35 = call i32 @mp_filter_free_children(%struct.mp_filter* %34)
  br label %36

36:                                               ; preds = %41, %33
  %37 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %38 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %43 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %44 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mp_filter_remove_pin(%struct.mp_filter* %42, i32 %47)
  br label %36

49:                                               ; preds = %36
  %50 = load %struct.filter_runner*, %struct.filter_runner** %4, align 8
  %51 = call i32 @flush_async_notifications(%struct.filter_runner* %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %78, %49
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.filter_runner*, %struct.filter_runner** %4, align 8
  %55 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %52
  %59 = load %struct.filter_runner*, %struct.filter_runner** %4, align 8
  %60 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %59, i32 0, i32 4
  %61 = load %struct.mp_filter**, %struct.mp_filter*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mp_filter*, %struct.mp_filter** %61, i64 %63
  %65 = load %struct.mp_filter*, %struct.mp_filter** %64, align 8
  %66 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %67 = icmp eq %struct.mp_filter* %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %58
  %69 = load %struct.filter_runner*, %struct.filter_runner** %4, align 8
  %70 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %69, i32 0, i32 4
  %71 = load %struct.mp_filter**, %struct.mp_filter*** %70, align 8
  %72 = load %struct.filter_runner*, %struct.filter_runner** %4, align 8
  %73 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @MP_TARRAY_REMOVE_AT(%struct.mp_filter** %71, i32 %74, i32 %75)
  br label %81

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %52

81:                                               ; preds = %68, %52
  %82 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %83 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %126

88:                                               ; preds = %81
  %89 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %90 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.mp_filter_internal*, %struct.mp_filter_internal** %94, align 8
  store %struct.mp_filter_internal* %95, %struct.mp_filter_internal** %6, align 8
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %122, %88
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.mp_filter_internal*, %struct.mp_filter_internal** %6, align 8
  %99 = getelementptr inbounds %struct.mp_filter_internal, %struct.mp_filter_internal* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %96
  %103 = load %struct.mp_filter_internal*, %struct.mp_filter_internal** %6, align 8
  %104 = getelementptr inbounds %struct.mp_filter_internal, %struct.mp_filter_internal* %103, i32 0, i32 1
  %105 = load %struct.mp_filter**, %struct.mp_filter*** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.mp_filter*, %struct.mp_filter** %105, i64 %107
  %109 = load %struct.mp_filter*, %struct.mp_filter** %108, align 8
  %110 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %111 = icmp eq %struct.mp_filter* %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %102
  %113 = load %struct.mp_filter_internal*, %struct.mp_filter_internal** %6, align 8
  %114 = getelementptr inbounds %struct.mp_filter_internal, %struct.mp_filter_internal* %113, i32 0, i32 1
  %115 = load %struct.mp_filter**, %struct.mp_filter*** %114, align 8
  %116 = load %struct.mp_filter_internal*, %struct.mp_filter_internal** %6, align 8
  %117 = getelementptr inbounds %struct.mp_filter_internal, %struct.mp_filter_internal* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @MP_TARRAY_REMOVE_AT(%struct.mp_filter** %115, i32 %118, i32 %119)
  br label %125

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %96

125:                                              ; preds = %112, %96
  br label %126

126:                                              ; preds = %125, %81
  %127 = load %struct.filter_runner*, %struct.filter_runner** %4, align 8
  %128 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %127, i32 0, i32 3
  %129 = load %struct.mp_filter*, %struct.mp_filter** %128, align 8
  %130 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %131 = icmp eq %struct.mp_filter* %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %126
  %133 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %134 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = icmp ne %struct.TYPE_5__* %137, null
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load %struct.filter_runner*, %struct.filter_runner** %4, align 8
  %143 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %142, i32 0, i32 2
  %144 = call i32 @pthread_mutex_destroy(i32* %143)
  %145 = load %struct.filter_runner*, %struct.filter_runner** %4, align 8
  %146 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %145, i32 0, i32 1
  %147 = load %struct.filter_runner*, %struct.filter_runner** %146, align 8
  %148 = call i32 @talloc_free(%struct.filter_runner* %147)
  %149 = load %struct.filter_runner*, %struct.filter_runner** %4, align 8
  %150 = call i32 @talloc_free(%struct.filter_runner* %149)
  br label %151

151:                                              ; preds = %132, %126
  ret void
}

declare dso_local i32 @mp_filter_free_children(%struct.mp_filter*) #1

declare dso_local i32 @mp_filter_remove_pin(%struct.mp_filter*, i32) #1

declare dso_local i32 @flush_async_notifications(%struct.filter_runner*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.mp_filter**, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @talloc_free(%struct.filter_runner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
