; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_getchar.c_saveRedobuff.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_getchar.c_saveRedobuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@save_level = common dso_local global i32 0, align 4
@save_redobuff = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@redobuff = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@save_old_redobuff = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@old_redobuff = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saveRedobuff() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @save_level, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @save_level, align 4
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_11__* @save_redobuff to i8*), i8* align 8 bitcast (%struct.TYPE_11__* @redobuff to i8*), i64 8, i1 false)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @redobuff, i32 0, i32 0, i32 0), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_12__* @save_old_redobuff to i8*), i8* align 8 bitcast (%struct.TYPE_12__* @old_redobuff to i8*), i64 8, i1 false)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @old_redobuff, i32 0, i32 0, i32 0), align 8
  %6 = load i32, i32* @FALSE, align 4
  %7 = call i32* @get_buffcont(%struct.TYPE_11__* @save_redobuff, i32 %6)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @add_buff(%struct.TYPE_11__* @redobuff, i32* %11, i64 -1)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @vim_free(i32* %13)
  br label %15

15:                                               ; preds = %10, %5
  br label %16

16:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @get_buffcont(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @add_buff(%struct.TYPE_11__*, i32*, i64) #2

declare dso_local i32 @vim_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
