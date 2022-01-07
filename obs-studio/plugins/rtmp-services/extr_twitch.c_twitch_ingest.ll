; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_twitch.c_twitch_ingest.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_twitch.c_twitch_ingest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.twitch_ingest = type { i32*, i32* }

@cur_ingests = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32*, i32* } @twitch_ingest(i64 %0) #0 {
  %2 = alloca %struct.twitch_ingest, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_ingests, i32 0, i32 0), align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ule i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.twitch_ingest, %struct.twitch_ingest* %2, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = getelementptr inbounds %struct.twitch_ingest, %struct.twitch_ingest* %2, i32 0, i32 0
  store i32* null, i32** %9, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_ingests, i32 0, i32 1), align 8
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %11, %12
  %14 = inttoptr i64 %13 to %struct.twitch_ingest*
  %15 = bitcast %struct.twitch_ingest* %2 to i8*
  %16 = bitcast %struct.twitch_ingest* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  br label %17

17:                                               ; preds = %10, %7
  %18 = bitcast %struct.twitch_ingest* %2 to { i32*, i32* }*
  %19 = load { i32*, i32* }, { i32*, i32* }* %18, align 8
  ret { i32*, i32* } %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
