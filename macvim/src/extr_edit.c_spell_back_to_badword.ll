; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_edit.c_spell_back_to_badword.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_edit.c_spell_back_to_badword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@curwin = common dso_local global %struct.TYPE_6__* null, align 8
@BACKWARD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@spell_bad_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @spell_back_to_badword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spell_back_to_badword() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = bitcast %struct.TYPE_5__* %1 to i8*
  %5 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 8, i1 false)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %7 = load i32, i32* @BACKWARD, align 4
  %8 = load i32, i32* @TRUE, align 4
  %9 = load i32, i32* @TRUE, align 4
  %10 = call i32 @spell_move_to(%struct.TYPE_6__* %6, i32 %7, i32 %8, i32 %9, i32* null)
  store i32 %10, i32* @spell_bad_len, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curwin, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 @start_arrow(%struct.TYPE_5__* %1)
  br label %20

20:                                               ; preds = %18, %0
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spell_move_to(%struct.TYPE_6__*, i32, i32, i32, i32*) #2

declare dso_local i32 @start_arrow(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
